<?php

namespace App\Yantrana\Components\Flow;

use App\Yantrana\Base\BaseEngine;
use App\Yantrana\Components\Flow\Interfaces\FlowEngineInterface;
use App\Yantrana\Components\Flow\Models\Flow;
use App\Yantrana\Components\Flow\Models\Screen;
use App\Yantrana\Components\Flow\Models\Button;

class FlowEngine extends BaseEngine implements FlowEngineInterface
{
    /**
     * Process flow store
     *
     * @param array $inputData
     * @return array
     */
    public function processFlowStore(array $inputData)
    {
        try {
            $flow = new Flow();
            $flow->name = $inputData['name'];
            $flow->description = $inputData['description'] ?? null;
            $flow->category = $inputData['category'];
            $flow->status = 'draft';
            $flow->created_by = getUserID();
            $flow->save();

            return $this->engineReaction(1, [
                'flow' => $flow,
                'message' => __tr('Flow created successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while creating flow.'));
        }
    }

    /**
     * Prepare flow editor
     *
     * @param string $flowId
     * @return array
     */
    public function prepareFlowEditor($flowId)
    {
        try {
            $flow = Flow::with(['screens' => function($query) {
                $query->orderBy('position');
            }, 'screens.buttons'])
            ->findOrFail($flowId);

            return [
                'reaction' => 1,
                'data' => [
                    'flow' => $flow
                ]
            ];
        } catch (\Exception $e) {
            return [
                'reaction' => 2,
                'data' => [
                    'message' => __tr('Something went wrong while preparing flow editor.')
                ]
            ];
        }
    }

    /**
     * Prepare flow preview
     *
     * @param string $flowId
     * @return array
     */
    public function prepareFlowPreview($flowId)
    {
        try {
            $flow = Flow::with(['screens.buttons'])->find($flowId);
            
            if (!$flow) {
                return $this->engineReaction(2, null, __tr('Flow not found.'));
            }

            return $this->engineReaction(1, [
                'flow' => $flow
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while preparing flow preview.'));
        }
    }

    /**
     * Process flow publish
     *
     * @param string $flowId
     * @return array
     */
    public function processFlowPublish($flowId)
    {
        try {
            $flow = Flow::find($flowId);
            
            if (!$flow) {
                return $this->engineReaction(2, null, __tr('Flow not found.'));
            }

            $flow->status = 'published';
            $flow->published_at = now();
            $flow->save();

            return $this->engineReaction(1, [
                'flow' => $flow,
                'message' => __tr('Flow published successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while publishing flow.'));
        }
    }

    /**
     * Process flow start
     *
     * @param array $inputData
     * @return array
     */
    public function processFlowStart(array $inputData)
    {
        try {
            $flow = Flow::with(['screens.buttons'])->find($inputData['flow_id']);
            
            if (!$flow) {
                return $this->engineReaction(2, null, __tr('Flow not found.'));
            }

            if ($flow->status !== 'published') {
                return $this->engineReaction(2, null, __tr('Flow must be published before starting.'));
            }

            // Add your flow execution logic here
            
            return $this->engineReaction(1, [
                'message' => __tr('Flow started successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while starting flow.'));
        }
    }

    /**
     * Process screen add
     *
     * @param string $flowId
     * @param array $inputData
     * @return array
     */
    public function processScreenAdd($flowId, array $inputData)
    {
        try {
            // Find the flow
            $flow = Flow::find($flowId);
            
            if (!$flow) {
                return $this->engineReaction(2, null, __tr('Flow not found.'));
            }

            // Validate required fields
            if (empty($inputData['name']) || empty($inputData['screen_type']) || empty($inputData['content'])) {
                return $this->engineReaction(2, null, __tr('Required fields are missing.'));
            }

            // Create new screen with proper data
            $screen = new Screen();
            $screen->flow_id = $flowId;
            $screen->name = $inputData['name'];
            $screen->screen_type = $inputData['screen_type'];
            $screen->content = $inputData['content'];
            $screen->footer = $inputData['footer'] ?? null;
            
            // Calculate position
            $maxPosition = Screen::where('flow_id', $flowId)->max('position') ?? 0;
            $screen->position = $maxPosition + 1;

            // Save the screen
            if (!$screen->save()) {
                return $this->engineReaction(2, null, __tr('Failed to save screen.'));
            }

            // Reload the screen with relationships
            $screen->load('buttons');

            return $this->engineReaction(1, [
                'screen' => $screen,
                'message' => __tr('Screen added successfully.')
            ]);

        } catch (\Exception $e) {
            \Log::error('Error in processScreenAdd: ' . $e->getMessage());
            \Log::error('Stack trace: ' . $e->getTraceAsString());
            return $this->engineReaction(2, null, __tr('Something went wrong while adding screen.'));
        }
    }

    /**
     * Prepare screen data
     *
     * @param string $screenId
     * @return array
     */
    public function prepareScreenData($screenId)
    {
        try {
            $screen = Screen::with(['buttons'])->find($screenId);
            
            if (!$screen) {
                return $this->engineReaction(2, null, __tr('Screen not found.'));
            }

            return $this->engineReaction(1, [
                'screen' => $screen
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while preparing screen data.'));
        }
    }

    /**
     * Process screen update
     *
     * @param string $screenId
     * @param array $inputData
     * @return array
     */
    public function processScreenUpdate($screenId, array $inputData)
    {
        try {
            $screen = Screen::find($screenId);
            
            if (!$screen) {
                return $this->engineReaction(2, null, __tr('Screen not found.'));
            }

            $screen->name = $inputData['name'];
            $screen->screen_type = $inputData['screen_type'];
            $screen->content = $inputData['content'];
            $screen->footer = $inputData['footer'] ?? null;
            $screen->position = $inputData['position'];
            $screen->save();

            return $this->engineReaction(1, [
                'screen' => $screen,
                'message' => __tr('Screen updated successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while updating screen.'));
        }
    }

    /**
     * Process screen delete
     *
     * @param string $screenId
     * @return array
     */
    public function processScreenDelete($screenId)
    {
        try {
            $screen = Screen::find($screenId);
            
            if (!$screen) {
                return $this->engineReaction(2, null, __tr('Screen not found.'));
            }

            $screen->delete();

            return $this->engineReaction(1, [
                'message' => __tr('Screen deleted successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while deleting screen.'));
        }
    }

    /**
     * Process button add
     *
     * @param string $screenId
     * @param array $inputData
     * @return array
     */
    public function processButtonAdd($screenId, array $inputData)
    {
        try {
            $screen = Screen::find($screenId);
            
            if (!$screen) {
                return $this->engineReaction(2, null, __tr('Screen not found.'));
            }

            $button = new Button();
            $button->screen_id = $screenId;
            $button->text = $inputData['text'];
            $button->button_type = $inputData['button_type'];
            $button->next_screen_id = $inputData['next_screen_id'] ?? null;
            $button->url = $inputData['url'] ?? null;
            $button->phone_number = $inputData['phone_number'] ?? null;
            $button->save();

            return $this->engineReaction(1, [
                'button' => $button,
                'message' => __tr('Button added successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while adding button.'));
        }
    }

    /**
     * Process button update
     *
     * @param string $buttonId
     * @param array $inputData
     * @return array
     */
    public function processButtonUpdate($buttonId, array $inputData)
    {
        try {
            $button = Button::find($buttonId);
            
            if (!$button) {
                return $this->engineReaction(2, null, __tr('Button not found.'));
            }

            $button->text = $inputData['text'];
            $button->button_type = $inputData['button_type'];
            $button->next_screen_id = $inputData['next_screen_id'] ?? null;
            $button->url = $inputData['url'] ?? null;
            $button->phone_number = $inputData['phone_number'] ?? null;
            $button->save();

            return $this->engineReaction(1, [
                'button' => $button,
                'message' => __tr('Button updated successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while updating button.'));
        }
    }

    /**
     * Process button delete
     *
     * @param string $buttonId
     * @return array
     */
    public function processButtonDelete($buttonId)
    {
        try {
            $button = Button::find($buttonId);
            
            if (!$button) {
                return $this->engineReaction(2, null, __tr('Button not found.'));
            }

            $button->delete();

            return $this->engineReaction(1, [
                'message' => __tr('Button deleted successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while deleting button.'));
        }
    }

    /**
     * Process flow delete
     *
     * @param string $flowId
     * @return array
     */
    public function processFlowDelete($flowId)
    {
        try {
            $flow = Flow::where('_id', $flowId)
                       ->where('created_by', getUserID())
                       ->first();
            
            if (!$flow) {
                return $this->engineReaction(2, null, __tr('Flow not found.'));
            }

            // Delete related screens and buttons
            foreach ($flow->screens as $screen) {
                $screen->buttons()->delete();
                $screen->delete();
            }
            
            $flow->delete();

            return $this->engineReaction(1, [
                'message' => __tr('Flow deleted successfully.')
            ]);
        } catch (\Exception $e) {
            return $this->engineReaction(2, null, __tr('Something went wrong while deleting flow.'));
        }
    }
} 