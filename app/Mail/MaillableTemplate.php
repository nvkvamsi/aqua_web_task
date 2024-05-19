<?php
   
namespace App\Mail;
   
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
   
class MaillableTemplate extends Mailable
{
    use Queueable, SerializesModels;
    public $details;
   
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($details)
    {
        $this->details = $details;
    }
   
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // $template = 'emails.demoMail';
        if ($this->details){
            $template = 'emails.'.$this->details['mail_type'];
        } else {
            $template ='emails.demoMail';
        }
        return $this->markdown($template)
                    ->subject($this->details['subject'])
                    ->with('details', $this->details);
    }
 

}
