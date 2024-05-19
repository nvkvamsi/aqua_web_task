<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'email',
        'phone_number',
        'subject',
        'comment'
    ];
    public static $rules = [
        'name' => 'required|string|max:255',
        'email' => 'required|email',
        'phone_number' => 'required|regex:/^\+?[0-9]{3}-?[0-9]{6,12}$/',
        'subject' => 'required|string|max:255',
        'comment' => 'required|string',
    ];
    public static $messages = [
        'name.required' => 'The name field is required.',
        'name.max' => 'The name may not be greater than :max characters.',
        'email.required' => 'The email field is required.',
        'email.email' => 'Please provide a valid email address.',
        'phone_number.required' => 'The phone number field is required.',
        'phone_number.regex' => 'Please provide a valid phone number.',
        'subject.required' => 'The subject field is required.',
        'subject.max' => 'The subject may not be greater than :max characters.',
        'comment.required' => 'The comment field is required.',
    ];
   
}
