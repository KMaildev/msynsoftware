<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LabourManagement extends Model
{
    use HasFactory;

    protected $fillable = [
        'demand_id',
        'contract_id',
        'overseas_agencies_id',
        'name',
        'father_name',
        'nrc',
        'date_of_birth',
        'passport',
        'passport_date',
        'phone',
        'address',
        'gender',
        'remark',
        'place_of_passport',
        'owic',
        'owic_date',
        'created_at',
        'updated_at',
    ];

    public function overseas_agency_table()
    {
        return $this->belongsTo(OverseasAgency::class, 'overseas_agencies_id', 'id');
    }
}
