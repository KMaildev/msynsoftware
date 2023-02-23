<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AgentList extends Model
{
    use HasFactory;

    public function passport_table()
    {
        return $this->hasMany(Passport::class, 'agent_list_id', 'id');
    }
}
