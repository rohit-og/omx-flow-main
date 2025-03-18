<?php

// Set the content type to JSON
header("Content-Type: application/json");

// Get the raw POST data
$rawData = file_get_contents("php://input");

// Decode JSON data
$data = json_decode($rawData, true);

// Log the webhook payload (for debugging)
file_put_contents("webhook.log", date("Y-m-d H:i:s") . " - " . print_r($data, true) . "\n", FILE_APPEND);

// Check if the payload is valid
if (!empty($data)) {
    // Extract contact details
    $contact = $data['contact'] ?? [];
    $phoneNumber = $contact['phone_number'] ?? 'Unknown';
    $firstName = $contact['first_name'] ?? 'Unknown';
    $lastName = $contact['last_name'] ?? 'Unknown';

    // Extract message details
    $message = $data['message'] ?? [];
    $messageId = $message['whatsapp_message_id'] ?? null;
    $body = $message['body'] ?? null;
    $media = $message['media'] ?? null;

    // If it's a media message, extract media details
    $mediaType = $media['type'] ?? null;
    $mediaLink = $media['link'] ?? null;

    // Example: Process message based on type
    if ($body) {
        file_put_contents("messages.log", "[$phoneNumber] $firstName $lastName: $body\n", FILE_APPEND);
    } elseif ($mediaLink) {
        file_put_contents("media.log", "[$phoneNumber] $firstName $lastName sent a $mediaType: $mediaLink\n", FILE_APPEND);
    }
}

// Respond to WhatsApp server with a 200 OK
http_response_code(200);
echo json_encode(["status" => "success"]);

?>
