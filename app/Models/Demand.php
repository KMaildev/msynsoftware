<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Demand extends Model
{
    use HasFactory;

    public function office_table()
    {
        return $this->belongsTo(Office::class, 'company_name', 'id');
    }

    public function overseas_agencies_table()
    {
        return $this->belongsTo(OverseasAgency::class, 'overseas_agencie_id', 'id');
    }
}
