<?php

namespace App\Observers;

use App\Models\Career;
use App\Jobs\SendEmailJob as SEJ;
use Illuminate\Support\Facades\Bus;
class CareerObserver
{
    /**
     * Handle the Career "created" event.
     */
    public function created(Career $career): void
    {
        $job=$user_id=$career->job;
        $user_data=$job->users;

        $details = [
            'title' => "Gig has one more career",
           
            'subject' => "your gig $job->title added with one more career",
            'email' => $user_data['email'],
            'mail_type' =>'dummyMaillableTemplate',
            'username'=> $user_data['name'],
            'url'=> route('careers.index'),
        ];
        Bus::dispatch(new SEJ($details));
    }

    /**
     * Handle the Career "updated" event.
     */
    public function updated(Career $career): void
    {
        //
    }

    /**
     * Handle the Career "deleted" event.
     */
    public function deleted(Career $career): void
    {
        //
    }

    /**
     * Handle the Career "restored" event.
     */
    public function restored(Career $career): void
    {
        //
    }

    /**
     * Handle the Career "force deleted" event.
     */
    public function forceDeleted(Career $career): void
    {
        //
    }
}
