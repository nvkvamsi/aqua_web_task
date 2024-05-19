<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
class SettingsApplication extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'content',
        'slug',
        'status',
        
    ];
    public static $rules = [
        'name' => 'required|string|max:255',
        'status' => 'nullable|in:active,inactive',
    ];
    public static $messages = [
        'name.required' => 'The name field is required.',
        'name.string' => 'The name must be a string.',
        'name.max' => 'The name may not be greater than 255 characters.',
        'status.required' => 'The status field is required.',
        'status.in' => 'The selected status is invalid.',
    ];
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = $value;
        $this->attributes['slug'] = Str::slug($value);
    }
}
