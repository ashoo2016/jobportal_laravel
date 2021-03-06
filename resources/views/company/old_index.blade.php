@extends('layouts.app')

@section('content')
<div class="container">
<div class="col-md-12">

        <div class="company-profile">
            @if(empty($company->cover_photo))
                <img src="{{asset('cover/520a34e3500f4_thumb900.jpg')}}" style="width:100%;">
            @else
                <img src= "{{asset('uploads/coverphoto')}}/{{$company->cover_photo}}" style="width: 100%;"><br><br>
            
            @endif
        <div class="company-desc">
            @if($company->logo)
                <img width="100" src="{{asset('avatar/serwman1.jpg')}}">
            @else
                <img width="100" src= "{{asset('uploads/logo')}}/{{$company->logo}}">
            @endif

           
            <p>{{$company->description}}</p>
                <h1>{{$company->cname}}</h1>
                <p><strong>Slogan</strong>-{{$company->slogan}}&nbsp;Address-{{$company->address}}&nbsp; Phone-{{$company->phone}}&nbsp; Website-{{$company->website}}</p>
            </div>
        </div>

         <table class="table">
            <thead>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
                @foreach($company->jobs as $job)
                <tr>
                    <td><img src="{{asset('avatar/serwman1.jpg')}}" width="80"></td>
                    <td>Position:{{$job->position}}
                    <br>
                    <i class="fa fa-clock-o" aria-hidden = "true"></i>&nbsp;{{$job->type}}
                    </td>
                    <td><i class="fa fa-map-marker" aria-hidden = "true"></i>&nbsp;Address:{{$job->address}}</td>
                    <td>  <i class="fa fa-globe" aria-hidden = "true"></i>&nbsp;Date:{{$job->created_at->diffForHumans()}}</td>
                    <td><a href="{{route('jobs.show',[$job->id,$job->slug])}}"><button class="btn btn-success btn-sm">Apply</button></a></td>
                </tr>
                @endforeach
            </tbody>
        </table>


</div>
</div>
    
@endsection
