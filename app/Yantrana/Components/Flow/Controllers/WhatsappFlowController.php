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
        $this->baseUrl = "https://graph.facebook.com/v20.0";
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
     * @return \Illuminate\Http\JsonResponse
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
                'publish' => 'boolean'
            ]);

            // Use provided flow_json or default
            $flowJson = $request->filled('flow_json') ? $request->flow_json : json_encode($this->defaultFlowJson);

            // Prepare request data
            $requestData = [
                'name' => $validated['name'],
                'categories' => $validated['categories'],
                'flow_json' => $flowJson,
                'publish' => $request->boolean('publish', false)
            ];

            // Make API request
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
                'Content-Type' => 'application/json'
            ])->post(
                "{$this->baseUrl}/{$this->wabaId}/flows",
                $requestData
            );

            if ($response->successful()) {
                // Redirect to the index page with a success message
                return redirect()->route('whatsapp-flows.index')->with('status', 'Flow created successfully!');
            }

            return redirect()->back()->with('error', 'Failed to create flow.')->withInput();

        } catch (\Illuminate\Validation\ValidationException $e) {
            return redirect()->back()->withErrors($e->errors())->withInput();
        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Creation Error: ' . $e->getMessage());
            return redirect()->back()->with('error', 'An error occurred while creating the flow.')->withInput();
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
            // First check if the flow exists and is in DRAFT status
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/{$this->wabaId}/flows/{$id}");

            if (!$response->successful()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Flow not found'
                ], 404);
            }

            $flow = $response->json();
            
            // Check if flow is in DRAFT status
            if ($flow['status'] !== 'DRAFT') {
                return response()->json([
                    'success' => false,
                    'message' => 'Only draft flows can be deleted'
                ], 403);
            }

            // Delete the flow
            $deleteResponse = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->delete("{$this->baseUrl}/{$this->wabaId}/flows/{$id}");

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
                'message' => $e->getMessage()
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
            // Log the request details
            Log::info('Attempting to fetch flow preview', [
                'flow_id' => $id,
                'waba_id' => $this->wabaId
            ]);

            // Get flow details with preview URL in a single request
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/{$this->wabaId}/flows/{$id}", [
                'fields' => 'id,name,categories,preview,status'
            ]);

            // Log the response for debugging
            Log::info('Flow response received', [
                'status' => $response->status(),
                'body' => $response->json()
            ]);

            if (!$response->successful()) {
                $errorData = $response->json();
                Log::error('Flow fetch failed', [
                    'status' => $response->status(),
                    'error' => $errorData
                ]);
                throw new Exception($errorData['error']['message'] ?? 'Flow not found');
            }

            $flowData = $response->json();

            // Verify we have all required data
            if (!isset($flowData['name'])) {
                throw new Exception('Flow data incomplete');
            }

            if (!isset($flowData['preview'])) {
                throw new Exception('Preview data not available');
            }

            // Log successful data preparation
            Log::info('Successfully prepared preview data', [
                'flow_name' => $flowData['name'],
                'has_preview' => isset($flowData['preview'])
            ]);

            return view('whatsapp-flows.preview', [
                'flow' => [
                    'id' => $flowData['id'],
                    'name' => $flowData['name'],
                    'preview_url' => $flowData['preview']['preview_url'] ?? null
                ]
            ]);

        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Preview Exception', [
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
    public function send(Request $request, $id)
    {
        try {
            $validated = $request->validate([
                'phone_number' => 'required|string'
            ]);

            // First verify the flow exists
            $flowResponse = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
            ])->get("{$this->baseUrl}/{$this->wabaId}/flows/{$id}");

            if (!$flowResponse->successful()) {
                throw new Exception('Flow not found');
            }

            // Updated request body structure
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
                                    // Add any custom key-value pairs if needed
                                    // "custom_key" => "custom_value"
                                ]
                            ]
                        ]
                    ]
                ]
            ];

            // Updated URL to use phone number ID instead of WABA ID
            $response = Http::withHeaders([
                'Authorization' => "Bearer {$this->accessToken}",
                'Content-Type' => 'application/json'
            ])->post("{$this->baseUrl}/{$this->phoneNumberId}/messages", $requestBody);

            if (!$response->successful()) {
                $errorData = $response->json();
                Log::error('WhatsApp Flow Send API Error', [
                    'error' => $errorData,
                    'request_body' => $requestBody,
                    'phone_number_id' => $this->phoneNumberId
                ]);
                throw new Exception($errorData['error']['message'] ?? 'Failed to send flow');
            }

            return response()->json([
                'success' => true,
                'messages' => $response->json()
            ]);

        } catch (\Exception $e) {
            Log::error('WhatsApp Flow Send Exception', [
                'id' => $id,
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);

            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
} 