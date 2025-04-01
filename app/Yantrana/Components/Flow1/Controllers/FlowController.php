<?php

namespace App\Yantrana\Components\Flow\Controllers;

use App\Yantrana\Base\BaseController;
use App\Yantrana\Components\Flow\FlowEngine;
use App\Yantrana\Components\Flow\Interfaces\FlowEngineInterface;
use Illuminate\Http\Request;
use App\Yantrana\Components\Flow\Models\Flow;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;
use Exception;

class FlowController extends BaseController 
{
    /**
     * @var FlowEngine
     */
    protected $flowEngine;

    /**
     * Constructor
     *
     * @param FlowEngine $flowEngine
     */
    public function __construct(FlowEngine $flowEngine)
    {
        $this->flowEngine = $flowEngine;
    }

    /**
     * Display flow dashboard
     *
     * @return \Illuminate\View\View
     */
    public function dashboard()
    {
        return $this->loadView('flow.dashboard');
    }

    /**
     * Show flow creation form
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return $this->loadView('flow.create');
    }

    /**
     * Store a new flow
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $processReaction = $this->flowEngine->processFlowStore($request->all());

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Show flow editor
     *
     * @param string $flowId
     * @return \Illuminate\View\View
     */
    public function editor($flowId)
    {
        $processReaction = $this->flowEngine->prepareFlowEditor($flowId);

        return $this->loadView('flow.editor', $processReaction);
    }

    /**
     * Preview flow
     *
     * @param string $flowId
     * @return \Illuminate\View\View
     */
    public function preview($flowId)
    {
        $processReaction = $this->flowEngine->prepareFlowPreview($flowId);

        return $this->loadView('flow.preview', $processReaction);
    }

    /**
     * Publish flow
     *
     * @param string $flowId
     * @return \Illuminate\Http\JsonResponse
     */
    public function publish($flowId)
    {
        $processReaction = $this->flowEngine->processFlowPublish($flowId);

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Start flow
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function startFlow(Request $request)
    {
        $processReaction = $this->flowEngine->processFlowStart($request->all());

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Add screen to flow
     *
     * @param Request $request
     * @param string $flowId
     * @return \Illuminate\Http\JsonResponse
     */
    public function addScreen(Request $request, $flowId)
    {
        $processReaction = $this->flowEngine->processScreenAdd($flowId, $request->all());

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Get screen details
     *
     * @param string $screenId
     * @return \Illuminate\Http\JsonResponse
     */
    public function getScreen($screenId)
    {
        $processReaction = $this->flowEngine->prepareScreenData($screenId);

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Update screen
     *
     * @param Request $request
     * @param string $screenId
     * @return \Illuminate\Http\JsonResponse
     */
    public function updateScreen(Request $request, $screenId)
    {
        $processReaction = $this->flowEngine->processScreenUpdate($screenId, $request->all());

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Delete screen
     *
     * @param string $screenId
     * @return \Illuminate\Http\JsonResponse
     */
    public function deleteScreen($screenId)
    {
        $processReaction = $this->flowEngine->processScreenDelete($screenId);

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Add button to screen
     *
     * @param Request $request
     * @param string $screenId
     * @return \Illuminate\Http\JsonResponse
     */
    public function addButton(Request $request, $screenId)
    {
        $processReaction = $this->flowEngine->processButtonAdd($screenId, $request->all());

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Update button
     *
     * @param Request $request
     * @param string $buttonId
     * @return \Illuminate\Http\JsonResponse
     */
    public function updateButton(Request $request, $buttonId)
    {
        $processReaction = $this->flowEngine->processButtonUpdate($buttonId, $request->all());

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Delete button
     *
     * @param string $buttonId
     * @return \Illuminate\Http\JsonResponse
     */
    public function deleteButton($buttonId)
    {
        $processReaction = $this->flowEngine->processButtonDelete($buttonId);

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Show Flow List View
     *
     * @return \Illuminate\View\View
     */
    public function showFlowView()
    {
        $flows = Flow::where('created_by', getUserID())
                    ->orderBy('created_at', 'desc')
                    ->with(['screens.buttons'])
                    ->get();

        return view('whatsapp.flow', compact('flows'));
    }

    /**
     * Create Flow View
     *
     * @return \Illuminate\View\View
     */
    public function createFlow()
    {
        return view('whatsapp.create');
    }

    /**
     * Store Flow
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function storeFlow(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'category' => 'required|string|in:CUSTOMER_SUPPORT,MARKETING,UTILITY',
        ]);

        $flow = new Flow();
        $flow->_uid = (string) Str::uuid();
        $flow->name = $validated['name'];
        $flow->description = $validated['description'];
        $flow->category = $validated['category'];
        $flow->created_by = auth()->id();
        $flow->save();

        return response()->json([
            'reaction' => 1,
            'data' => [
                'message' => 'Flow created successfully',
                'flow' => $flow
            ]
        ]);
    }

    /**
     * Show Flow Builder/Editor
     *
     * @param string $id
     * @return \Illuminate\View\View
     */
    public function flowBuilderView($id)
    {
        $flow = Flow::with(['screens', 'screens.buttons'])
            ->where('_id', $id)
            ->where('created_by', auth()->id())
            ->firstOrFail();

        return view('whatsapp.editor', compact('flow'));
    }

    /**
     * Preview Flow
     *
     * @param string $id
     * @return \Illuminate\View\View
     */
    public function previewFlow($id)
    {
        $flow = Flow::with(['screens', 'screens.buttons'])
            ->where('_id', $id)
            ->where('created_by', auth()->id())
            ->firstOrFail();

        return view('whatsapp.preview', compact('flow'));
    }

    /**
     * Publish Flow
     *
     * @param string $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function publishFlow($id)
    {
        $flow = Flow::where('_id', $id)
            ->where('created_by', auth()->id())
            ->firstOrFail();

        $flow->status = 'published';
        $flow->published_at = now();
        $flow->save();

        return redirect()->back()->with('success', 'Flow published successfully!');
    }

    /**
     * Add Screen
     *
     * @param string $flowId
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function processScreenAdd($flowId, Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'screen_type' => 'required|string|in:TEXT,LIST,FORM',
            'content' => 'required|string',
            'footer' => 'nullable|string|max:60',
            'position' => 'required|integer|min:1'
        ]);

        $result = $this->flowEngine->processScreenAdd($flowId, $validated);

        return response()->json($result);
    }

    /**
     * Get Screen Data
     *
     * @param string $screenId
     * @return \Illuminate\Http\JsonResponse
     */
    public function getScreenData($screenId)
    {
        $result = $this->flowEngine->prepareScreenData($screenId);

        return response()->json($result);
    }

    /**
     * Update Screen
     *
     * @param string $screenId
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function processScreenUpdate($screenId, Request $request)
    {
        $result = $this->flowEngine->processScreenUpdate($screenId, $request->all());

        return response()->json($result);
    }

    /**
     * Delete Screen
     *
     * @param string $screenId
     * @return \Illuminate\Http\JsonResponse
     */
    public function processScreenDelete($screenId)
    {
        $result = $this->flowEngine->processScreenDelete($screenId);

        return response()->json($result);
    }

    /**
     * Add Button
     *
     * @param string $screenId
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function processButtonAdd($screenId, Request $request)
    {
        $result = $this->flowEngine->processButtonAdd($screenId, $request->all());

        return response()->json($result);
    }

    /**
     * Update Button
     *
     * @param string $buttonId
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function processButtonUpdate($buttonId, Request $request)
    {
        $result = $this->flowEngine->processButtonUpdate($buttonId, $request->all());

        return response()->json($result);
    }

    /**
     * Delete Button
     *
     * @param string $buttonId
     * @return \Illuminate\Http\JsonResponse
     */
    public function processButtonDelete($buttonId)
    {
        $result = $this->flowEngine->processButtonDelete($buttonId);

        return response()->json($result);
    }

    /**
     * Delete Flow
     *
     * @param string $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function deleteFlow($id)
    {
        $processReaction = $this->flowEngine->processFlowDelete($id);

        return $this->processResponse($processReaction, [], [], true);
    }

    /**
     * Process WhatsApp Sync
     *
     * @param string $id
     * @return json
     */
    public function processWhatsAppSync($id)
    {
        try {
            $flow = Flow::where('_id', $id)->first();
            
            if (!$flow) {
                return $this->engineErrorResponse([
                    'message' => __tr('Flow not found.')
                ]);
            }

            // Get WhatsApp credentials
            $whatsappToken = getVendorSettings('whatsapp_access_token');
            $phoneNumberId = getVendorSettings('whatsapp_phone_number_id');
            $wabaId = getVendorSettings('whatsapp_business_account_id');

            if (!$whatsappToken || !$phoneNumberId || !$wabaId) {
                return $this->engineErrorResponse([
                    'message' => __tr('WhatsApp credentials not configured properly.')
                ]);
            }

            // Prepare flow data for WhatsApp
            $flowPayload = [
                'name' => $flow->name,
                'categories' => [$flow->category],
                'status' => $flow->status === 'published' ? 'PUBLISHED' : 'DRAFT',
                'messaging_product' => 'whatsapp',
                'phone_numbers' => [$phoneNumberId]
            ];

            // Make API request to WhatsApp
            $response = Http::withToken($whatsappToken)
                ->post("https://graph.facebook.com/v20.0/{$wabaId}/message_flows", $flowPayload);

            if (!$response->successful()) {
                __logDebug('WhatsApp Flow Sync Failed', [
                    'response' => $response->json(),
                    'flowId' => $id
                ]);

                return $this->engineErrorResponse([
                    'message' => __tr('Failed to sync with WhatsApp: ') . ($response->json()['error']['message'] ?? 'Unknown error')
                ]);
            }

            // Update flow with WhatsApp data
            $flow->update([
                'whatsapp_flow_id' => $response->json()['id'],
                'whatsapp_sync_status' => 'synced',
                'whatsapp_sync_at' => now(),
                'whatsapp_meta_data' => [
                    'last_sync_response' => $response->json(),
                    'sync_version' => 1
                ]
            ]);

            return $this->engineSuccessResponse([
                'message' => __tr('Flow synced successfully with WhatsApp.'),
                'flow' => $flow->fresh()
            ]);

        } catch (Exception $e) {
            __logDebug('WhatsApp Sync Error', [
                'error' => $e->getMessage(),
                'flowId' => $id
            ]);

            return $this->engineErrorResponse([
                'message' => __tr('An error occurred while syncing with WhatsApp.')
            ]);
        }
    }

    /**
     * Check WhatsApp Sync Status
     *
     * @param string $id
     * @return json
     */
    public function checkWhatsAppSyncStatus($id)
    {
        try {
            $flow = Flow::where('_id', $id)->first();
            
            if (!$flow || !$flow->whatsapp_flow_id) {
                return $this->engineErrorResponse([
                    'message' => __tr('Flow not found or not synced with WhatsApp.')
                ]);
            }

            $whatsappToken = getVendorSettings('whatsapp_access_token');
            $wabaId = getVendorSettings('whatsapp_business_account_id');

            $response = Http::withToken($whatsappToken)
                ->get("https://graph.facebook.com/v20.0/{$flow->whatsapp_flow_id}");

            if (!$response->successful()) {
                return $this->engineErrorResponse([
                    'message' => __tr('Failed to fetch WhatsApp status.')
                ]);
            }

            return $this->engineSuccessResponse([
                'status' => $response->json()['status'],
                'flow' => $flow
            ]);

        } catch (Exception $e) {
            return $this->engineErrorResponse([
                'message' => __tr('Error checking WhatsApp sync status.')
            ]);
        }
    }

    /**
     * Sync Flows from WhatsApp Manager
     *
     * @return json
     */
    public function syncWhatsAppManagerFlows()
    {
        try {
            $whatsappToken = getVendorSettings('whatsapp_access_token');
            $phoneNumberId = getVendorSettings('whatsapp_phone_number_id');
            $wabaId = getVendorSettings('whatsapp_business_account_id');

            if (!$whatsappToken || !$phoneNumberId || !$wabaId) {
                return $this->engineErrorResponse([
                    'message' => __tr('WhatsApp credentials not configured properly.')
                ]);
            }

            // Fetch all flows from WhatsApp Manager
            $response = Http::withToken($whatsappToken)
                ->get("https://graph.facebook.com/v20.0/{$wabaId}/message_flows");

            if (!$response->successful()) {
                return $this->engineErrorResponse([
                    'message' => __tr('Failed to fetch flows from WhatsApp Manager.')
                ]);
            }

            $whatsappFlows = $response->json()['data'] ?? [];
            $syncedFlows = 0;

            foreach ($whatsappFlows as $whatsappFlow) {
                // Check if flow already exists
                $existingFlow = Flow::where('whatsapp_flow_id', $whatsappFlow['id'])->first();

                if ($existingFlow) {
                    // Update existing flow
                    $existingFlow->update([
                        'name' => $whatsappFlow['name'],
                        'category' => $whatsappFlow['category'] ?? 'OTHER',
                        'status' => strtolower($whatsappFlow['status']),
                        'whatsapp_sync_status' => 'synced',
                        'whatsapp_sync_at' => now(),
                        'whatsapp_meta_data' => [
                            'flow_data' => $whatsappFlow,
                            'last_sync' => now()
                        ]
                    ]);
                } else {
                    // Create new flow
                    Flow::create([
                        'name' => $whatsappFlow['name'],
                        'category' => $whatsappFlow['category'] ?? 'OTHER',
                        'status' => strtolower($whatsappFlow['status']),
                        'whatsapp_flow_id' => $whatsappFlow['id'],
                        'whatsapp_sync_status' => 'synced',
                        'whatsapp_sync_at' => now(),
                        'vendors__id' => getVendorId(),
                        'whatsapp_meta_data' => [
                            'flow_data' => $whatsappFlow,
                            'last_sync' => now()
                        ]
                    ]);
                }

                // Fetch and sync flow details including screens and buttons
                $this->syncWhatsAppFlowDetails($whatsappFlow['id']);
                $syncedFlows++;
            }

            return $this->engineSuccessResponse([
                'message' => __tr('Successfully synced :count flows from WhatsApp Manager.', ['count' => $syncedFlows]),
                'synced_count' => $syncedFlows
            ]);

        } catch (Exception $e) {
            __logDebug('WhatsApp Manager Sync Error', [
                'error' => $e->getMessage()
            ]);

            return $this->engineErrorResponse([
                'message' => __tr('An error occurred while syncing flows from WhatsApp Manager.')
            ]);
        }
    }

    /**
     * Sync WhatsApp Flow Details
     *
     * @param string $whatsappFlowId
     * @return void
     */
    protected function syncWhatsAppFlowDetails($whatsappFlowId)
    {
        try {
            $whatsappToken = getVendorSettings('whatsapp_access_token');
            
            // Fetch detailed flow information
            $response = Http::withToken($whatsappToken)
                ->get("https://graph.facebook.com/v20.0/{$whatsappFlowId}?fields=name,status,category,screens,buttons");

            if (!$response->successful()) {
                throw new Exception('Failed to fetch flow details');
            }

            $flowDetails = $response->json();
            $flow = Flow::where('whatsapp_flow_id', $whatsappFlowId)->first();

            if (!$flow) {
                return;
            }

            // Sync screens
            if (isset($flowDetails['screens'])) {
                foreach ($flowDetails['screens'] as $screenData) {
                    $screen = $flow->screens()->updateOrCreate(
                        ['whatsapp_screen_id' => $screenData['id']],
                        [
                            'name' => $screenData['name'] ?? 'Untitled Screen',
                            'screen_type' => $screenData['type'] ?? 'TEXT',
                            'content' => $screenData['content'] ?? '',
                            'footer' => $screenData['footer'] ?? null,
                            'position' => $screenData['position'] ?? 0,
                            'settings' => [
                                'whatsapp_data' => $screenData,
                                'last_sync' => now()
                            ]
                        ]
                    );

                    // Sync buttons for this screen
                    if (isset($screenData['buttons'])) {
                        foreach ($screenData['buttons'] as $buttonData) {
                            $screen->buttons()->updateOrCreate(
                                ['whatsapp_button_id' => $buttonData['id']],
                                [
                                    'button_type' => $buttonData['type'],
                                    'label' => $buttonData['text'],
                                    'value' => $buttonData['value'] ?? null,
                                    'position' => $buttonData['position'] ?? 0,
                                    'settings' => [
                                        'whatsapp_data' => $buttonData,
                                        'last_sync' => now()
                                    ]
                                ]
                            );
                        }
                    }
                }
            }

        } catch (Exception $e) {
            __logDebug('WhatsApp Flow Details Sync Error', [
                'error' => $e->getMessage(),
                'whatsapp_flow_id' => $whatsappFlowId
            ]);
        }
    }

    /**
     * Handle form processing error and return JSON response
     *
     * @param Exception $exception
     * @param string $message
     * @return json
     */
    public function engineErrorResponse($exception = null, $message = null)
    {
        $errorMessage = $message ?? 'Something went wrong, please try again.';
        
        if (config('app.debug') && $exception) {
            $errorMessage .= ' Error: ' . $exception->getMessage();
        }
        
        return $this->engineResponse(
            [
                'message' => $errorMessage
            ],
            2
        );
    }
} 