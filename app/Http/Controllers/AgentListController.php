<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreAgentList;
use App\Http\Requests\UpdateAgentList;
use App\Models\AgentList;
use Illuminate\Http\Request;

class AgentListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $search = request('search');
        $agent_lists = AgentList::query()
            ->where('name', 'LIKE', "%{$search}%")
            ->orWhere('email', 'LIKE', "%{$search}%")
            ->orWhere('phone', 'LIKE', "%{$search}%")
            ->orWhere('address', 'LIKE', "%{$search}%")
            ->get();
        return view('agent_list.index', compact('agent_lists'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('agent_list.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAgentList $request)
    {
        $oversea = new AgentList();
        $oversea->name = $request->name;
        $oversea->phone = $request->phone;
        $oversea->email = $request->email;
        $oversea->address = $request->address;
        $oversea->save();
        return redirect()->back()->with('success', 'Process is completed.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $agent_list = AgentList::findOrFail($id);
        return view('agent_list.edit', compact('agent_list'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAgentList $request, $id)
    {
        $oversea = AgentList::findOrFail($id);
        $oversea->name = $request->name;
        $oversea->phone = $request->phone;
        $oversea->email = $request->email;
        $oversea->address = $request->address;
        $oversea->update();
        return redirect()->back()->with('success', 'Process is completed.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $oversea = AgentList::findOrFail($id);
        $oversea->delete();
        return redirect()->back()->with('success', 'Process is completed.');
    }
}
