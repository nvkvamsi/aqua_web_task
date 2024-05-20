<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gig extends Model
{
    use HasFactory;
    protected $table = 'gigs';
    protected $fillable = [
        'title',
        'location',
        'description',
        'salary',
        'job_type',
        'company_name',
        'responsibilities',
        'experience',
        'created_by',
        'internal_link',
        'technology',
        'state',
        'country',
        'city',
        'address',
        'short_description',
        'status'
    ];
    public static $rules = [
        'title' => 'required|string|max:255',
        'location' => 'nullable|string|max:255',
        'description' => 'required|string|max:1000', // Maximum 1000 characters
        'salary' => 'nullable|string|max:255',
        'job_type' => 'required|string|in:full-time,part-time,contract',
        'company_name' => 'nullable|string|max:255',
        'responsibilities' => 'nullable|string',
        'experience' => 'nullable|string',
        'internal_link' => 'nullable|string|max:255',
        'technology' => 'nullable|string|max:255',
        'state' => 'nullable|string|max:255',
        'country' => 'nullable|string|max:255',
        'city' => 'nullable|string|max:255',
        'address' => 'nullable|string|max:255',
        'short_description' => 'nullable|string'
    ];
    public static $messages = [
        'title.string' => 'Title must be a string.',
        'title.max' => 'Title cannot exceed 255 characters.',
        'location.string' => 'Location must be a string.',
        'location.max' => 'Location cannot exceed 255 characters.',
        'description.required' => 'Description is required.',
        'description.string' => 'Description must be a string.',
        'description.max' => 'Description cannot exceed 1000 characters.',
        'salary.string' => 'Salary must be a string.',
        'salary.max' => 'Salary cannot exceed 255 characters.',
        'job_type.required' => 'Job type is required.',
        'job_type.string' => 'Job type must be a string.',
        'job_type.max' => 'Job type cannot exceed 255 characters.',
        'responsibilities.string' => 'Responsibilities must be a string.',
        

 
    ];
    public function getJobTypeAttribute($value)
    {
        return ucfirst(str_replace('-', ' ', $value));
    }

    public function scopeSearchByKeywords($query, $searchTerm)
    {
        return $query->where(function ($query) use ($searchTerm) {
            $query->whereAny([
                'title',
                'location',
                'description',
                'job_type'
            ], 'LIKE', '%' . $searchTerm . '%');
        });
    }
    public function users()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
   
}
