<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreLabourManagement;
use App\Imports\ImportLabourManagement;
use App\Models\Contract;
use App\Models\LabourManagement;
use App\Models\Passport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class LabourManagementController extends Controller
{
    public function createAndView($id)
    {
        $contract = Contract::findOrFail($id);

        $passports = Passport::whereHas('labour_management_table', function ($q) use ($id) {
            $q->where('contract_id', $id);
        })->paginate(100);

        $total_passports =  Passport::whereHas('labour_management_table', function ($q) use ($id) {
            $q->where('contract_id', $id);
        })->count();

        return view('labour_management.create_View', compact('contract', 'passports', 'total_passports'));
    }

    public function store(StoreLabourManagement $request)
    {
        $demand_id = $request->demand_id;
        $contract_id = $request->contract_id;
        $overseas_agencies_id = $request->overseas_agencies_id;

        Excel::import(new ImportLabourManagement($demand_id, $contract_id, $overseas_agencies_id), request()->file('labour_lists'));
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }
}
