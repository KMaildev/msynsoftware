<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUser extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'employee_id' => 'required|unique:users,employee_id',
            'name' => 'required',
            'phone' => 'required|min:6|max:11|unique:users,phone',
            'email' => 'required|email|unique:users,email',
            'nrc_number' => 'required',
            'gender' => 'required',
            'address' => 'required',
            'password' => 'required',
        ];
    }
}
