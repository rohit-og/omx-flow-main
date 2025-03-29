<?php

namespace App\Yantrana\Components\Flow\Controllers;

use App\Yantrana\Base\BaseController;
use App\Yantrana\Components\Flow\FlowEngine;
use App\Yantrana\Components\Flow\Interfaces\FlowEngineInterface;
use Illuminate\Http\Request;
use App\Yantrana\Components\Flow\Models\Flow;
use Illuminate\Support\Str;

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
} 