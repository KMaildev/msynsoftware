<?php

namespace App\Http\Controllers;

use App\Exports\ExportPassport;
use App\Http\Requests\StorePassport;
use App\Http\Requests\UpdatePassport;
use App\Models\AgentList;
use App\Models\Contract;
use App\Models\Passport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class PassportController extends Controller
{
    public function index(Request $request)
    {
        $agent_lists = AgentList::all();

        $total_passports = Passport::where('reject_status', NULL)
            ->count();

        $total_male_passports = Passport::where('reject_status', NULL)
            ->where('gender', 'male')
            ->count();

        $passports = Passport::where('reject_status', NULL)
            ->paginate(100);

        if (request('search')) {
            $passports = Passport::where('reject_status', NULL)
                ->where(function ($query) {
                    $query->where('name', 'Like', '%' . request('search') . '%');
                    $query->orWhere('father_name', 'Like', '%' . request('search') . '%');
                    $query->orWhere('nrc', 'Like', '%' . request('search') . '%');
                    $query->orWhere('date_of_birth', 'Like', '%' . request('search') . '%');
                    $query->orWhere('passport', 'Like', '%' . request('search') . '%');
                    $query->orWhere('address', 'Like', '%' . request('search') . '%');
                    $query->orWhere('remark', 'Like', '%' . request('search') . '%');
                    $query->orWhere('phone', 'Like', '%' . request('search') . '%');
                })->paginate(100);
        }

        if (request('agent_list_id')) {
            $passports = Passport::where('reject_status', NULL)
                ->where(function ($query) {
                    $query->where('agent_list_id', request('agent_list_id'));
                })->paginate(100);
        }

        if (request('from_date') && request('to_date')) {
            $passports = Passport::where('reject_status', NULL)
                ->whereBetween('join_date', [request('from_date'), request('to_date')])
                ->paginate(100);
        }

        return view('passport.index', compact('agent_lists', 'passports', 'total_passports'));
    }

    public function create()
    {
        $agent_lists = AgentList::all();
        return view('passport.create', compact('agent_lists'));
    }

    public function store(StorePassport $request)
    {
        $Passport = new Passport();
        $Passport->name = $request->name;
        $Passport->father_name = $request->father_name;
        $Passport->nrc = $request->nrc;
        $Passport->date_of_birth = $request->date_of_birth;
        $Passport->passport = $request->passport;
        $Passport->passport_date = $request->passport_date;
        $Passport->place_of_passport = $request->place_of_passport;
        $Passport->local_agent_name = $request->local_agent_name ?? '';
        $Passport->phone = $request->phone;
        $Passport->address = $request->address;
        $Passport->gender = $request->gender;
        $Passport->remark = $request->remark;
        $Passport->agent_list_id = $request->agent_list_id;
        $Passport->join_date = date("Y-m-d");
        $Passport->save();
        return redirect()->back()->with('success', 'Created successfully.');
    }

    public function show($id)
    {
        $passport = Passport::findOrFail($id);
        return view('passport.show', compact('passport'));
    }

    public function edit($id)
    {
        $passport = Passport::findOrFail($id);
        $agent_lists = AgentList::all();
        return view('passport.edit', compact('passport', 'agent_lists'));
    }

    public function update(UpdatePassport $request, $id)
    {
        $Passport = Passport::findOrFail($id);
        $Passport->name = $request->name;
        $Passport->father_name = $request->father_name;
        $Passport->nrc = $request->nrc;
        $Passport->date_of_birth = $request->date_of_birth;
        $Passport->passport = $request->passport;
        $Passport->passport_date = $request->passport_date;
        $Passport->place_of_passport = $request->place_of_passport;
        $Passport->local_agent_name = $request->local_agent_name ?? '';
        $Passport->phone = $request->phone;
        $Passport->address = $request->address;
        $Passport->gender = $request->gender;
        $Passport->remark = $request->remark;
        $Passport->agent_list_id = $request->agent_list_id;
        $Passport->owic = $request->owic;
        $Passport->owic_date = $request->owic_date;

        $Passport->reject_status = 'rejected';
        $Passport->reject_date = $request->reject_date;
        $Passport->reject_reason = $request->reject_reason;

        $Passport->update();
        return redirect()->back()->with('success', 'Updated successfully.');
    }

    public function destroy($id)
    {
        $passport = Passport::findOrFail($id);
        $passport->delete();
        return redirect()->back()->with('success', 'Deleted successfully.');
    }


    public function rejectPassport($id)
    {
        $passport = Passport::findOrFail($id);
        $agent_lists = AgentList::all();
        return view('passport.reject_passport', compact('passport', 'agent_lists'));
    }


    public function rejectPassportList(Request $request)
    {
        $agent_lists = AgentList::all();

        $total_passports = Passport::where('reject_status', 'rejected')
            ->count();
        $passports = Passport::where('reject_status', 'rejected')
            ->paginate(100);

        if (request('search')) {
            $passports = Passport::where(function ($query) {
                $query->where('name', 'Like', '%' . request('search') . '%');
                $query->orWhere('father_name', 'Like', '%' . request('search') . '%');
                $query->orWhere('nrc', 'Like', '%' . request('search') . '%');
                $query->orWhere('date_of_birth', 'Like', '%' . request('search') . '%');
                $query->orWhere('passport', 'Like', '%' . request('search') . '%');
                $query->orWhere('address', 'Like', '%' . request('search') . '%');
                $query->orWhere('remark', 'Like', '%' . request('search') . '%');
                $query->orWhere('phone', 'Like', '%' . request('search') . '%');
            })->paginate(100);
        }

        if (request('agent_list_id')) {
            $passports = Passport::where(function ($query) {
                $query->where('agent_list_id', request('agent_list_id'));
            })->paginate(100);
        }

        if (request('from_date') && request('to_date')) {
            $passports = Passport::whereBetween('join_date', [request('from_date'), request('to_date')])
                ->paginate(100);
        }

        return view('passport.reject_passport_list', compact('agent_lists', 'passports', 'total_passports'));
    }


    public function cancelRejectPassport($id)
    {
        $Passport = Passport::findOrFail($id);
        $Passport->reject_status = NULL;
        $Passport->reject_date = '';
        $Passport->reject_reason = '';
        $Passport->update();
        return redirect()->back()->with('success', 'Updated successfully.');
    }


    public function passportExport()
    {
        $passports = Passport::where('reject_status', NULL)
            ->get();
        return Excel::download(new ExportPassport($passports), 'passport_' . date("Y-m-d H:i:s") . '.xlsx');
    }

}
