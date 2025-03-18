<?php
namespace App\Exports;

use App\Yantrana\Components\WhatsAppService\Models\WhatsAppMessageLogModel;
use App\Yantrana\Components\Contact\Models\Contact;
// use Maatwebsite\Excel\Concerns\FromCollection;
// use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Support\Facades\DB;

// class WhatsAppChatsExport implements FromCollection, WithHeadings
class WhatsAppChatsExport
{
    protected $vendorId;

    public function __construct($vendorId)
    {
        $this->vendorId = $vendorId;
    }

    public function collection()
    {
        return WhatsAppMessageLogModel::select(
            'whatsapp_message_log._id as Chat ID',
            'contacts.first_name as First Name',
            'contacts.last_name as Last Name',
            'whatsapp_message_log.contact_wa_id as Contact WA ID',
            'whatsapp_message_log.message as Message',
            'whatsapp_message_log.status as Status',
            'whatsapp_message_log.messaged_at as Sent At',
            'whatsapp_message_log.is_incoming_message as Incoming'
        )
        ->join('contacts', 'whatsapp_message_log.contacts__id', '=', 'contacts._id')
        ->where('whatsapp_message_log.vendors__id', $this->vendorId)
        ->orderBy('whatsapp_message_log.messaged_at', 'desc')
        ->get();
    }

    public function headings(): array
    {
        return [
            'Chat ID',
            'First Name',
            'Last Name',
            'Contact WA ID',
            'Message',
            'Status',
            'Sent At',
            'Incoming Message',
        ];
    }
}
?>