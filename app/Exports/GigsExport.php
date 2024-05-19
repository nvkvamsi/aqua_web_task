<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use App\Models\Gig;
class GigsExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Gig::select('id', 'title', 'location')->get();
    }

    public function headings(): array
    {
        return [
            'ID',
            'Name',
            'Location',
            // Add more headers as needed
        ];
    }
}
