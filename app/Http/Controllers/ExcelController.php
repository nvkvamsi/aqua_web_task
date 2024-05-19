<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\GigsExport;
use App\Imports\GigsImport;

class ExcelController extends Controller
{
    public function exportGigs()
    {
        return Excel::download(new GigsExport(), 'Gigs.xlsx');
    }
  
    public function importGigs(Request $request)
    {
       try {
            if ($request->hasFile('file_input')) {
                $filePaths = [];
                $file=$request->file('file_input');
                $filePath = $file->store('file_input', 'public');
               
                
            }
            $storage_path =storage_path('app/public/'.$filePath);
            if (!file_exists($storage_path )) {
                $this->error('File not found: ' . $storage_path );
                return 'file not found';
            }
            $import =new GigsImport();
            $import->import($storage_path);
            $validationErrors = $import->getValidationErrors();
            if (!empty($validationErrors)) {
                // Handle validation errors
                return redirect()->back()->withErrors($validationErrors)->withInput();
            }
            return redirect()->route('gigs.index')->with('success', 'Excel Imported Successfully.');
        } catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
            $failures = $e->failures();
            $errors = [];
    
            foreach ($failures as $failure) {
                $rowIndex = $failure->row(); // Get the row index where the error occurred
                $columnName = $failure->attribute(); // Get the column name where the error occurred
                $errorMessage = $failure->errors()[0]; // Get the error message for the column
                $errors[] = "Row $rowIndex: $columnName - $errorMessage"; // Combine row index, column name, and error message
            }
            return redirect()->back()->withErrors($errors)->withInput();
            
            
        }
        catch (\Exception $e) {
            // Handle any exceptions that occur during the process.
            return redirect()->back()->withErrors($e->getMessage())->withInput();
          
            
        }
    }
   
    
}