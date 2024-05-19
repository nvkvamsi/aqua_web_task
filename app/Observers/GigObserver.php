<?php

namespace App\Observers;

use App\Models\Gig;
use App\Jobs\SendEmailJob as SEJ;
use Illuminate\Support\Facades\Bus;
class GigObserver
{
    /**
     * Handle the Gig "created" event.
     */
    public function created(Gig $gig): void
    {
        //
    }

    /**
     * Handle the Gig "updated" event.
     */
    public function updated(Gig $gig)
    {
        $user_data=$gig->users;
       
        // Check if the status was updated
        if ($gig->wasChanged('status')) {
            $details = [
                'title' => "Gig is Updated",
             
                'subject' => "your gig $gig->title was updated",
                'email' => $user_data['email'],
                'mail_type' =>'dummyMaillableTemplate',
                'username'=> $user_data['name'],
                'url'=> route('gigs.index'),
            ];
            Bus::dispatch(new SEJ($details));
            
        }
    }

    /**
     * Handle the Gig "deleted" event.
     */
    public function deleted(Gig $gig): void
    {
        //
    }

    /**
     * Handle the Gig "restored" event.
     */
    public function restored(Gig $gig): void
    {
        //
    }

    /**
     * Handle the Gig "force deleted" event.
     */
    public function forceDeleted(Gig $gig): void
    {
        //
    }
}
