@extends('layouts.main')
@section('content')

<div class="container">
    <div class="row">
        <form action="{{route('allJobs')}}" method="GET">


        <div class="form-inline">
            <div class="form-group">
                <label>Keyword&nbsp;</label>
                <input type="text" name="title" class="form-control">&nbsp;
            </div>

            <div class="form-group">
                <label>Employment &nbsp;</label>
                 <select name="type" class="form-control">
                        <option value="">-Select-</option>  
                        <option value="fulltime">Fulltime</option>
                        <option value="parttime">Parttime</option>
                        <option value="casual">Casual</option>
                </select>
                &nbsp;&nbsp;
            </div>
            <div class="form-group">
                <label>Category</label>
                   <select name="category" class="form-control">
                           <option value="">-Select-</option>  
                            @foreach(App\Category::all() as $cat)
                            <option value="{{$cat->id}}">{{$cat->name}}</option>
                            @endforeach
                   </select>&nbsp;&nbsp;
            </div>

            <div class="form-group">
                <label>address</label>
                <input type="text" name="address" class="form-control">&nbsp;&nbsp;
            </div>
            
            <div class="form-group">
               <button type="submit" class= "btn btn-outline-success">Search</button>
            </div>
        </div> 
    </form>


        <div class="col-md-12">
         <div class="rounded border jobs-wrap">
            @if(count($jobs)>0)
               @foreach($jobs as $job)
              <a href="{{route('jobs.show',[$job->id,$job->slug])}}" class="job-item d-block d-md-flex align-items-center  border-bottom fulltime">
                <div class="company-logo blank-logo text-center text-md-left pl-3">
                  <img src="{{asset('uploads/logo')}}/{{$job->company->logo}}" alt="Image" class="img-fluid mx-auto">
                </div>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3>{{$job->position}}</h3>
                    <div class="d-block d-lg-flex">
                      <div class="mr-3"><span class="icon-suitcase mr-1"></span>{{$job->company->cname}}</div>
                      <div class="mr-3"><span class="icon-room mr-1"></span> {{str_limit($job->address,20)}}</div>
                      <div><span class="icon-money mr-1"></span>{{$job->salary}}</div>
                      <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-clock-o mr-1"></span>{{$job->created_at->diffForHumans()}}</div>

                    </div>
                  </div>
                </div>
                  <div class="job-category align-self-center">
                  @if($job->type=='fulltime')
                  <div class="p-3">
                    <span class="text-info p-2 rounded border border-info">{{$job->type}}</span>
                  </div>
                  @elseif($job->type=='parttime')
                  <div class="p-3">
                    <span class="text-danger p-2 rounded border border-danger">{{$job->type}}</span>
                  </div>
                  @else
                   <div class="p-3">
                    <span class="text-warning p-2 rounded border border-warning">{{$job->type}}</span>
                  </div>
                  @endif

                </div>  
              </a>

            @endforeach
            @else
            Sorry No Jobs Found !!
            @endif

            </div>
             <br> <br>
        </div>

        {{$jobs->appends(Illuminate\Support\Facades\Request::except('page'))->links()}}
       
    </div>

  
</div>

@endsection
