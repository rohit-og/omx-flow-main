<?php

namespace App\Yantrana\Components\Flow\Interfaces;

interface FlowEngineInterface
{
    /**
     * Process flow store
     *
     * @param array $inputData
     * @return array
     */
    public function processFlowStore(array $inputData);

    /**
     * Prepare flow editor
     *
     * @param string $flowId
     * @return array
     */
    public function prepareFlowEditor($flowId);

    /**
     * Prepare flow preview
     *
     * @param string $flowId
     * @return array
     */
    public function prepareFlowPreview($flowId);

    /**
     * Process flow publish
     *
     * @param string $flowId
     * @return array
     */
    public function processFlowPublish($flowId);

    /**
     * Process flow start
     *
     * @param array $inputData
     * @return array
     */
    public function processFlowStart(array $inputData);

    /**
     * Process screen add
     *
     * @param string $flowId
     * @param array $inputData
     * @return array
     */
    public function processScreenAdd($flowId, array $inputData);

    /**
     * Prepare screen data
     *
     * @param string $screenId
     * @return array
     */
    public function prepareScreenData($screenId);

    /**
     * Process screen update
     *
     * @param string $screenId
     * @param array $inputData
     * @return array
     */
    public function processScreenUpdate($screenId, array $inputData);

    /**
     * Process screen delete
     *
     * @param string $screenId
     * @return array
     */
    public function processScreenDelete($screenId);

    /**
     * Process button add
     *
     * @param string $screenId
     * @param array $inputData
     * @return array
     */
    public function processButtonAdd($screenId, array $inputData);

    /**
     * Process button update
     *
     * @param string $buttonId
     * @param array $inputData
     * @return array
     */
    public function processButtonUpdate($buttonId, array $inputData);

    /**
     * Process button delete
     *
     * @param string $buttonId
     * @return array
     */
    public function processButtonDelete($buttonId);
} 