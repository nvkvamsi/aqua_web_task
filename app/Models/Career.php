<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Career extends Model
{
    use HasFactory;
    protected $fillable = [
        // 'name',
        // 'email',
        // 'phone_number',
        'resume_path',
        'job_id',
        'cover_letter',
        'applied_by',
    
    ];
    public static $rules = [
        'job_id'=>'required|integer|exists:gigs,id',
        // 'name' => 'required|string|max:255',
        'cover_letter' => 'required|string|max:1000',
        // 'email' => 'required|email',
        // 'phone_number' => 'required|regex:/^\+?[0-9]{3}-?[0-9]{6,12}$/',
        'resume' => 'required|file|mimes:pdf|max:2048', // Max 2MB PDF file
    ];
    public static $messages = [
        'name.required' => 'The name field is required.',
        'name.max' => 'The name may not be greater than :max characters.',
        'email.required' => 'The email field is required.',
        'email.email' => 'Please provide a valid email address.',
        'phone_number.required' => 'The phone number field is required.',
        'phone_number.regex' => 'Please provide a valid phone number.',
        'resume.required' => 'The resume field is required.',
        'resume.file' => 'Please upload a file.',
        'resume.mimes' => 'Only PDF files are allowed.',
        'resume.max' => 'The file size must not exceed 2MB.',
    ];
    public function getResumePathAttribute($value)
    {
        // You can modify the value or format it here if needed
        return asset('storage/' . $value); // Assuming the resume_path is stored in the 'storage' directory
    }
    public function job()
    {
        return $this->belongsTo(Gig::class, 'job_id');
    }
    public function users()
    {
        return $this->belongsTo(User::class, 'applied_by');
    }
}
