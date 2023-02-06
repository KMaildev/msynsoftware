<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Passport extends Model
{
    use HasFactory;

    public function agent_list_table()
    {
        return $this->belongsTo(AgentList::class, 'agent_list_id', 'id');
    }

    public function labour_management_table()
    {
        return $this->belongsTo(LabourManagement::class, 'passport', 'passport');
    }
}
