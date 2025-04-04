<?php

namespace App\Yantrana\Components\Flow\Controllers;

use App\Yantrana\Base\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Exception;

class WhatsappFlowController extends BaseController 
{
    protected $baseUrl;
    protected $wabaId;
    protected $accessToken;
    protected $defaultFlowJson;
    protected $phoneNumberID;

    public function __construct()
    {
        $this->baseUrl = "https://graph.facebook.com";
        // $this->wabaId = getVendorSettings('whatsapp_business_account_id');
        // $this->accessToken = getVendorSettings('whatsapp_access_token');

        $this->wabaId = "543180505542014";
        $this->accessToken = "EAAFlfxGYFccBOZCJeRfNp5AkzDPMJLZASFPNGWz9gBMkwfNbJTAJj192Th43mFed0p1MFcOisaVYWZBfLCi0TPGc5ASQghQP3ksZCi97OC4p4rhmVV2gkChzZB4MsDYy6J0mfGYcDbgP2xRCnoQzL8XDzuJwwottEQZCnxab0YAoVvZBsZBZAEYgr9BWoGfhZAUMhz6QZDZD";
        $this->phoneNumberId = "477921225415071";
        $this->defaultFlowJson = [
            "version" => "5.0",
            "screens" => [
                [
                    "id" => "WELCOME_SCREEN",
                    "layout" => [
                        "type" => "SingleColumnLayout",
                        "children" => [
                            [
                                "type" => "TextHeading",
                                "text" => "Hello World"
                            ],
                            [
                                "type" => "Footer",
                                "label" => "Complete",
                                "on-click-action" => [
                                    "name" => "complete",
                                    "payload" => []
                                ]
                            ]
                        ]
                    ],
                    "title" => "Welcome",
                    "terminal" => true,
                    "success" => true,
                    "data" => []
                ]
            ]
        ];
    }

    /**
     * Display a listing of WhatsApp flows.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        try {
            $cursor = $request->query('cursor');
            $endpoint = "{$this->baseUrl}/{$this->wabaId}/flows";
            
            if ($cursor) {
                $endpoint .= "?after={$cursor}";
            }

            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get($endpoint);

            if ($response->successful()) {
                $data = $response->json();
                $flows = $data['data'] ?? [];
                $pagination = null;
                
                if (isset($data['paging']['cursors'])) {
                    $pagination = [
                        'before' => $data['paging']['cursors']['before'] ?? null,
                        'after' => $data['paging']['cursors']['after'] ?? null,
                    ];
                }

                return view('whatsapp-flows.index', [
                    'flows' => $flows,
                    'pagination' => $pagination,
                ]);
            } else {
                Log::error('WhatsApp API Error', [
                    'status' => $response->status(),
                    'response' => $response->json()
                ]);
                
                return view('whatsapp-flows.index', [
                    'flows' => [],
                    'error' => 'Failed to fetch WhatsApp flows. Status: ' . $response->status()
                ])->with('error', 'Failed to fetch WhatsApp flows. Please try again later.');
            }
        } catch (\Exception $e) {
            Log::error('WhatsApp Flows Exception', [
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);
            
            return view('whatsapp-flows.index', [
                'flows' => [],
            ])->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    /**
     * Show the details of a specific flow.
     *
     * @param  string  $id
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        try {
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/{$this->wabaId}/flows/{$id}");

            if ($response->successful()) {
                $flow = $response->json();
                return view('whatsapp-flows.show', ['flow' => $flow]);
            } else {
                return redirect()->route('whatsapp-flows.index')
                    ->with('error', 'Failed to fetch flow details. Status: ' . $response->status());
            }
        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Details Exception', [
                'id' => $id,
                'message' => $e->getMessage()
            ]);
            
            return redirect()->route('whatsapp-flows.index')
                ->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    /**
     * Refresh flows data from the API.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        try {
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/{$this->wabaId}/flows");

            if ($response->successful()) {
                return response()->json(['success' => true]);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'API request failed with status: ' . $response->status()
                ]);
            }
        } catch (\Exception $e) {
            Log::error('WhatsApp Flows Refresh Exception', [
                'message' => $e->getMessage()
            ]);
            
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ]);
        }
    }

    /**
     * Show the edit form for a specific flow.
     *
     * @param  string  $id
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        try {
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/{$this->wabaId}/flows/{$id}");

            if ($response->successful()) {
                $flow = $response->json();
                return view('whatsapp-flows.edit', ['flow' => $flow]);
            } else {
                return redirect()->route('whatsapp-flows.index')
                    ->with('error', 'Failed to fetch flow details for editing. Status: ' . $response->status());
            }
        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Edit Exception', [
                'id' => $id,
                'message' => $e->getMessage()
            ]);
            
            return redirect()->route('whatsapp-flows.index')
                ->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    /**
     * Show the form for creating a new WhatsApp flow.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('whatsapp-flows.create', [
            'defaultFlowJson' => json_encode($this->defaultFlowJson, JSON_PRETTY_PRINT)
        ]);
    }

    /**
     * Create a new WhatsApp flow.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createFlow(Request $request)
    {
        try {
            // Validate request
            $validated = $request->validate([
                'name' => 'required|string|max:255',
                'categories' => 'required|array|min:1',
                'categories.*' => 'required|string|in:SIGN_UP,SIGN_IN,APPOINTMENT_BOOKING,LEAD_GENERATION,CONTACT_US,CUSTOMER_SUPPORT,SURVEY,OTHER',
                'flow_json' => 'required|string',
                'publish' => 'nullable|boolean'
            ]);

            // Parse flow_json to ensure it's valid JSON
            $flowJsonData = json_decode($request->flow_json);
            if (json_last_error() !== JSON_ERROR_NONE) {
                return redirect()->back()
                    ->with('error', 'Invalid JSON format: ' . json_last_error_msg())
                    ->withInput();
            }

            // Prepare request data - note that we're sending flow_json as a string within JSON
            $requestData = [
                'name' => $validated['name'],
                'categories' => $validated['categories'],
                'flow_json' => $request->flow_json, // Already a string
                'publish' => $request->boolean('publish', false)
            ];

            // Log the request data for debugging
            Log::info('Creating WhatsApp flow', [
                'requestData' => $requestData
            ]);

            // Make API request
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
                'Content-Type' => 'application/json'
            ])->post(
                "{$this->baseUrl}/{$this->wabaId}/flows",
                $requestData
            );

            // Log the response for debugging
            Log::info('WhatsApp API response', [
                'status' => $response->status(),
                'body' => $response->json()
            ]);

            $responseData = $response->json();

            if ($response->successful()) {
                // Check if there are validation errors in the response
                if (isset($responseData['validation_errors']) && !empty($responseData['validation_errors'])) {
                    $errorMessages = [];
                    foreach ($responseData['validation_errors'] as $error) {
                        $errorMessages[] = $error['message'] ?? 'Validation error';
                    }
                    
                    return redirect()->back()
                        ->with('error', 'Flow created with validation warnings: ' . implode(', ', $errorMessages))
                        ->withInput();
                }
                
                // Redirect to the index page with a success message
                return redirect()->route('whatsapp-flows.index')
                    ->with('success', 'Flow created successfully!');
            }

            // Handle error response
            $errorMessage = $responseData['error']['message'] ?? 'Unknown error';
            return redirect()->back()
                ->with('error', 'Failed to create flow: ' . $errorMessage)
                ->withInput();

        } catch (\Illuminate\Validation\ValidationException $e) {
            return redirect()->back()->withErrors($e->errors())->withInput();
        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Creation Error: ' . $e->getMessage());
            return redirect()->back()
                ->with('error', 'An error occurred while creating the flow: ' . $e->getMessage())
                ->withInput();
        }
    }

    /**
     * Delete a WhatsApp flow.
     *
     * @param  string  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function delete($id)
    {
        try {
            Log::info('Attempting to delete WhatsApp flow', ['id' => $id]);
            
            // Get the flow first to check its status
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/v20.0/{$id}");

            if (!$response->successful()) {
                Log::error('Failed to get flow details', [
                    'id' => $id,
                    'status' => $response->status(),
                    'response' => $response->json()
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Flow not found'
                ], 404);
            }

            $flow = $response->json();
            Log::info('Flow details retrieved', ['flow' => $flow]);
            
            // Check if flow is in DRAFT status
            if ($flow['status'] !== 'DRAFT') {
                Log::warning('Attempted to delete non-draft flow', [
                    'id' => $id,
                    'status' => $flow['status']
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Only draft flows can be deleted'
                ], 403);
            }

            // Delete the flow
            Log::info('Sending delete request to WhatsApp API', [
                'id' => $id,
                'url' => "{$this->baseUrl}/v20.0/{$id}"
            ]);
            
            $deleteResponse = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->delete("{$this->baseUrl}/v20.0/{$id}");

            Log::info('Delete response received', [
                'status' => $deleteResponse->status(),
                'response' => $deleteResponse->json()
            ]);

            if ($deleteResponse->successful()) {
                return response()->json([
                    'success' => true,
                    'message' => 'Flow deleted successfully'
                ]);
            }

            return response()->json([
                'success' => false,
                'message' => 'Failed to delete flow',
                'error' => $deleteResponse->json()
            ], $deleteResponse->status());

        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Delete Exception', [
                'id' => $id,
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);
            
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while deleting the flow',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Show the preview page for a flow.
     *
     * @param string $id
     * @return \Illuminate\View\View
     */
    public function preview($id)
    {
        try {
            Log::info('Attempting to fetch flow preview', [
                'flow_id' => $id
            ]);

            // Make the API request using the correct endpoint structure
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/v20.0/{$id}", [
                'fields' => 'preview.invalidate(false)'
            ]);

            Log::info('API Response', [
                'status' => $response->status(),
                'body' => $response->json()
            ]);

            if (!$response->successful()) {
                $errorData = $response->json();
                Log::error('Preview fetch failed', [
                    'error' => $errorData
                ]);
                throw new Exception($errorData['error']['message'] ?? 'Failed to fetch preview');
            }

            $data = $response->json();

            if (!isset($data['preview']) || !isset($data['preview']['preview_url'])) {
                throw new Exception('Preview URL not available');
            }

            return view('whatsapp-flows.preview', [
                'flow' => [
                    'id' => $id,
                    'preview_url' => $data['preview']['preview_url'],
                    'expires_at' => $data['preview']['expires_at'] ?? null
                ]
            ]);

        } catch (\Exception $e) {
            Log::error('Preview Exception', [
                'id' => $id,
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);

            return redirect()->route('whatsapp-flows.index')
                ->with('error', 'Failed to load preview: ' . $e->getMessage());
        }
    }

    /**
     * Show the send flow form
     *
     * @param string $id
     * @return \Illuminate\View\View
     */
    public function showSendForm($id)
    {
        try {
            // Log the request details for debugging
            Log::info('Fetching flow details for send form', [
                'flow_id' => $id
            ]);

            // Updated endpoint with correct fields parameter
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/{$id}?fields=id,name,categories,preview,status,validation_errors,json_version,data_api_version,endpoint_uri,whatsapp_business_account,application,health_status");

            // Log the response for debugging
            Log::info('Flow details response', [
                'status' => $response->status(),
                'body' => $response->json()
            ]);

            if ($response->successful()) {
                $flow = $response->json();
                
                // Check if flow can be sent
                $canSendMessage = $flow['health_status']['can_send_message'] ?? 'BLOCKED';
                $errors = [];
                
                if (isset($flow['health_status']['entities'])) {
                    foreach ($flow['health_status']['entities'] as $entity) {
                        if ($entity['entity_type'] === 'FLOW' && isset($entity['errors'])) {
                            $errors = array_merge($errors, array_map(function($error) {
                                return $error['error_description'];
                            }, $entity['errors']));
                        }
                    }
                }

                if ($canSendMessage === 'BLOCKED' && !empty($errors)) {
                    throw new Exception('Flow cannot be sent: ' . implode(', ', $errors));
                }

                return view('whatsapp-flows.send', [
                    'flow' => [
                        'id' => $flow['id'],
                        'name' => $flow['name'],
                        'status' => $flow['status'],
                        'categories' => $flow['categories'],
                        'validation_errors' => $flow['validation_errors'],
                        'can_send_message' => $canSendMessage
                    ]
                ]);
            }

            // If response wasn't successful, get more error details
            $errorData = $response->json();
            Log::error('WhatsApp API Error', [
                'error' => $errorData,
                'endpoint' => "{$this->baseUrl}/{$id}"
            ]);
            
            $errorMessage = $errorData['error']['message'] ?? 'Unknown error occurred';
            throw new Exception("API Error: {$errorMessage}");

        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Send Form Exception', [
                'id' => $id,
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);
            
            return redirect()->route('whatsapp-flows.index')
                ->with('error', 'Failed to load send form: ' . $e->getMessage());
        }
    }

    /**
     * Send flow to a customer.
     *
     * @param Request $request
     * @param string $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function send($id)
    {
        try {
            // Validate the request
            $validated = $request->validate([
                'phone_number' => 'required|string|regex:/^[0-9]+$/'
            ]);

            // Log the request for debugging
            Log::info('Sending WhatsApp flow', [
                'flow_id' => $id,
                'phone_number' => $validated['phone_number']
            ]);

            // Request body as specified
            $requestBody = [
                "messaging_product" => "whatsapp",
                "to" => $validated['phone_number'],
                "recipient_type" => "individual",
                "type" => "interactive",
                "interactive" => [
                    "type" => "flow",
                    "header" => [
                        "type" => "text",
                        "text" => "Not shown in draft mode"
                    ],
                    "body" => [
                        "text" => "Not shown in draft mode"
                    ],
                    "footer" => [
                        "text" => "Not shown in draft mode"
                    ],
                    "action" => [
                        "name" => "flow",
                        "parameters" => [
                            "flow_message_version" => "3",
                            "flow_action" => "navigate",
                            "flow_token" => "<FLOW_TOKEN>",
                            "flow_id" => $id,
                            "flow_cta" => "Not shown in draft mode",
                            "mode" => "draft",
                            "flow_action_payload" => [
                                "screen" => "RECOMMEND",
                                "data" => [
                                    // Add custom key-value pairs if needed
                                    // "key1" => "value1"
                                ]
                            ]
                        ]
                    ]
                ]
            ];

            // Make the API request to send the flow
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
                'Content-Type' => 'application/json'
            ])->post("{$this->baseUrl}/v20.0/{$this->phoneNumberId}/messages", $requestBody);

            // Log the complete response for debugging
            Log::info('WhatsApp API response', [
                'status' => $response->status(),
                'body' => $response->json()
            ]);

            $responseData = $response->json();

            if (!$response->successful()) {
                return response()->json([
                    'success' => false,
                    'error' => $responseData['error']['message'] ?? 'Failed to send flow',
                    'status_code' => $response->status(),
                    'response' => $responseData,
                    'request' => [
                        'endpoint' => "{$this->baseUrl}/v20.0/{$this->phoneNumberId}/messages",
                        'method' => 'POST',
                        'body' => $requestBody
                    ]
                ]);
            }

            return response()->json([
                'success' => true,
                'message' => 'Flow sent successfully',
                'status_code' => $response->status(),
                'response_data' => $responseData,
                'request' => [
                    'endpoint' => "{$this->baseUrl}/v20.0/{$this->phoneNumberId}/messages",
                    'method' => 'POST',
                    'phone_number' => $validated['phone_number'],
                    'flow_id' => $id
                ]
            ]);

        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Send Exception', [
                'id' => $id,
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);

            return response()->json([
                'success' => false,
                'error' => $e->getMessage(),
                'exception_type' => get_class($e),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ], 500);
        }
    }
} 