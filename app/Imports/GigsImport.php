<?php

namespace App\Imports;


use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use App\Models\Gig;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\WithCustomCsvSettings;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

use Maatwebsite\Excel\Concerns\SkipsEmptyRows;
use Maatwebsite\Excel\Concerns\Importable;
use Illuminate\Support\Facades\Validator;


class GigsImport implements ToModel, WithStartRow, WithChunkReading,   WithCustomCsvSettings,WithHeadingRow,SkipsEmptyRows,withValidation

{
    use Importable;
    private $validationErrors = [];
    public function headingRow(): int
    {
        return 1; // Change this to the row number where your headers are located
    }
    public function model(array $row)
    {
        return new Gig([
            'title' => $row['title'],
            'location' => $row['location'] ?? null, // nullable field
            'description' => $row['description'],
            'salary' => $row['salary'] ?? null, // nullable field
            'job_type' => $row['job_type'],
            'responsibilities' => $row['responsibilities'] ?? null, // nullable field
         
            // Add more fields as needed
        ]);
    }
    public function startRow(): int
    {
        return 2; // Skip the first row (header row)
    }

    // WithChunkReading implementation
    public function chunkSize(): int
    {
        return 1000; // Process 1000 rows at a time
    }

    // WithValidation implementation
    public function rules(): array
    {
        return [
          
            'title' => 'required|string|max:255',
            'location' => 'nullable|string|max:255',
            'description' => 'required|string|max:1000', // Maximum 1000 characters
            'salary' => 'nullable|string|max:255',
            'job_type' => 'required|string|max:255',
            'responsibilities' => 'nullable|string',

        ];
        
    } 
    public function customValidationMessages()
    {
        return [
            'name.string' => 'Name must be a string.',
            'name.max' => 'Name cannot exceed 255 characters.',
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
    }
    public function getCsvSettings(): array
    {
        return [
            'input_encoding' => 'UTF-8',
            'delimiter' => ',',
            'enclosure' => '"',
            'escape' => '\\',
            'validation_messages' => $this->customValidationMessages(),
        ];
    }
    public function onError(\Throwable $e)
    {
        if ($e instanceof \Maatwebsite\Excel\Validators\ValidationException) {
            $failures = $e->failures();
            foreach ($failures as $failure) {
                $rowIndex = $failure->row();
                $columnName = $failure->attribute();
                $errorMessage = $failure->errors()[0];
                $this->validationErrors[] = "Row $rowIndex: $columnName - $errorMessage";
            }
        } else {
            \Log::error('An error occurred during import: ' . $e->getMessage());
        }
    }


    public function getValidationErrors()
    {
        return $this->validationErrors;
    }
    
}