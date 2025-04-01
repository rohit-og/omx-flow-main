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

    public function __construct()
    {
        $this->baseUrl = "https://graph.facebook.com/v20.0";
        // $this->wabaId = getVendorSettings('whatsapp_business_account_id');
        // $this->accessToken = getVendorSettings('whatsapp_access_token');

        $this->wabaId = "543180505542014";
        $this->accessToken = "EAAFlfxGYFccBOZCJeRfNp5AkzDPMJLZASFPNGWz9gBMkwfNbJTAJj192Th43mFed0p1MFcOisaVYWZBfLCi0TPGc5ASQghQP3ksZCi97OC4p4rhmVV2gkChzZB4MsDYy6J0mfGYcDbgP2xRCnoQzL8XDzuJwwottEQZCnxab0YAoVvZBsZBZAEYgr9BWoGfhZAUMhz6QZDZD";
        
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
                $data = $response->json();
                
                // Check for validation errors in the response
                if (isset($data['validation_errors']) && !empty($data['validation_errors'])) {
                    return response()->json([
                        'success' => false,
                        'message' => 'Flow validation failed',
                        'validation_errors' => $data['validation_errors']
                    ], 422);
                }

                return response()->json([
                    'success' => true,
                    'message' => 'Flow created successfully',
                    'data' => $data
                ]);
            }

            return response()->json([
                'success' => false,
                'message' => 'Failed to create flow',
                'error' => $response->json()
            ], $response->status());

        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            \Log::error('WhatsApp Flow Creation Error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while creating the flow',
                'error' => $e->getMessage()
            ], 500);
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
} 