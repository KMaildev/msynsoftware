<table class="table">
    <thead>
        <tr>
            <th style="width: 1%;">#</th>
            <th style="width: 3vh; text-align: center;">name</th>
            <th style="width: 3vh; text-align: center;">gender</th>
            <th style="width: 3vh; text-align: center;">nrc</th>
            <th style="width: 3vh; text-align: center;">father_name</th>
            <th style="width: 3vh; text-align: center;">date_of_birth</th>
            <th style="width: 3vh; text-align: center;">address</th>
            <th style="width: 3vh; text-align: center;">passport</th>
            <th style="width: 3vh; text-align: center;">passport_date</th>
            <th style="width: 3vh; text-align: center;">owic</th>
            <th style="width: 3vh; text-align: center;">owic_date</th>
            <th style="width: 3vh; text-align: center;">place_of_passport</th>
            <th style="width: 3vh; text-align: center;">phone</th>
            <th style="width: 3vh; text-align: center;">remark</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($passports as $key => $passport)
            <tr>
                <td>{{ $key + 1 }}</td>
                <td>{{ $passport->name }}</td>
                <td>{{ $passport->gender }}</td>
                <td>{{ $passport->nrc ?? '' }}</td>
                <td>{{ $passport->father_name ?? '' }}</td>
                <td>{{ $passport->date_of_birth ?? '' }}</td>
                <td>{{ $passport->address ?? '' }}</td>
                <td>{{ $passport->passport ?? '' }}</td>
                <td>{{ $passport->passport_date ?? '' }}</td>
                <td>{{ $passport->owic ?? '' }}</td>
                <td>{{ $passport->owic_date ?? '' }}</td>
                <td>{{ $passport->place_of_passport ?? '' }}</td>
                <td>{{ $passport->phone ?? '' }}</td>
                <td>{{ $passport->remark ?? '' }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
