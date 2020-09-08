@extends('layouts.main')
@section('content')
   <div class="album text-muted">
     <div class="container">
      @if(Session::has('message'))
        <div class="alert alert-success">
          {{Session::get('message')}}
        </div>
      @endif
      @if(Session::has('err_message'))
        <div class="alert alert-danger">
          {{Session::get('err_message')}}
        </div>
      @endif
      @if(isset($errors)&&count($errors)>0)
      <div class="alert alert-danger">
        <ul>
          @foreach($errors->all() as $error)
             <li>{{$error}}</li>
          @endforeach
        </ul>
      </div>

      @endif
       <div class="row" id="app">
          <div class="title" style="margin-top: 20px;">
                <h2>{{$job->title}}</h2> 
          </div>

      <img src="{{asset('hero-job-image.jpg')}}" style="width: 100%;">

          <div class="col-lg-8">
            
            
            <div class="p-4 mb-8 bg-white">
              <h3 class="h5 text-black mb-3">Description<a href=""data-toggle="modal" data-target="#exampleModal1"><i class="fa fa-envelope-square"
                style="font-size: 34px;float: right;color: green;"></i></a></h3>
              <p>{{$job->description}}</p>
            </div>

            <div class="p-4 mb-8 bg-white">
              <h3 class="h5 text-black mb-3">Roles and Responsiblities</h3>
              <p> {{$job->roles}}</p>
            </div>

            <div class="p-4 mb-8 bg-white">
              <h3 class="h5 text-black mb-3">No. of Vacancy</h3>
              <p>{{$job->number_of_vacancy}}</p>
            </div>

            <div class="p-4 mb-8 bg-white">
              <h3 class="h5 text-black mb-3">Experience</h3>
              <p>{{$job->experience}}</p>
            </div>

            <div class="p-4 mb-8 bg-white">
              <h3 class="h5 text-black mb-3">Gender</h3>
              <p>{{$job->gender}}</p>
            </div>

           <div class="p-4 mb-8 bg-white">
              <h3 class="h5 text-black mb-3">Salary</h3>
              <p>{{$job->salary}}</p>
            </div>

          </div>

          
            <div class="col-md-4 p-4 site-section bg-light">
              <h3 class="h5 text-black mb-3 text-center">Short Info</h3>
                    <p>Company Name: {{$job->company->cname}}</p>
                    <p>Address:{{$job->address}}</p>
                    <p>Employement Type:{{$job->type}}</p>
                    <p>Position:{{$job->position}}</p>
                    <p>Date:{{$job->created_at->diffForHumans()}} </p>
                    <p>Last Date to Apply :{{ date('F d,Y',strtotime($job->last_date))}} </p>
                


              <p><a href="{{route('company.index',[$job->company->id,$job->company->slug])}}" class="btn btn-warning" style="width:100%;">
              Visit Company Page</a></p>
              <p>
                  @if(Auth::check()&&Auth::user()->user_type == 'seeker')
                  @if(!$job->checkApplication())
                 <apply-component jobid={{$job->id}}></apply-component>
                  @endif
                  <br>
                  <favourite-component jobid={{$job->id}}  :favourited={{$job->checkSaved()?'true':'false'}}></favourite-component>
                  @endif
                
              </p>
            </div>
               @foreach($jobRecommendations as $jobRecommendation)
              <div class="card" style="width: 18rem;">
                <div class="card-body">
                  <p class="badge badge-success">{{$jobRecommendation->type}}</p>
                  <h5 class="card-title">{{$jobRecommendation->position}}</h5>
                  <p class="card-text">{{str_limit($jobRecommendation->description,90)}}</p>
                  <center><a href="{{route('jobs.show',[$jobRecommendation->id,$jobRecommendation->slug])}}" class="btn btn-success">Apply</a></center>
                </div>
              </div>
              @endforeach


                  <!-- Modal -->
                  <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Send Jobs to Your Friend</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="{{route('mail')}}" method="POST">
                          @csrf
                        <div class="modal-body">
                          <input type="hidden" name="job_id" value="{{$job->id}}">
                          <input type="hidden" name="job_slug" value="{{$job->slug}}">

                          <div class="form-group">
                            <label>Your Name *</label>
                            <input type="text" name="your_name" class="form-control" required="">
                          </div>
                          <div class="form-group">
                            <label>Your Email *</label>
                            <input type="email" name="your_email" class="form-control" required="">
                          </div>
                          <div class="form-group">
                            <label>Person Name *</label>
                            <input type="text" name="friend_name" class="form-control" required="">
                          </div>
                          <div class="form-group">
                            <label>Person Email *</label>
                            <input type="email" name="friend_email" class="form-control" required="">
                          </div>
                        </div>

                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary">Mail this Job</button>
                        </div>
                        </form>
                      </div>
                    </div>
                  </div>


            </div>
              
        

       </div>
   </div>
</div>
@endsection
