@extends('layouts.app')

@section('content')

<div class="container">
	     @if(Session::has('message'))
                <div class="alert alert-success">
                    {{Session::get('message')}}
                </div>
         @endif
	<div class="row">
		<div class="col-md-4">
			 @include('admin.left-menu')
		</div>
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					Add Testimonial
				</div>
				<div class="card-body">
					<form action="{{route('testimonial.store')}}" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="form-group">
							<label>Content</label>
							<textarea name="content" class="form-control @error('content') is-invalid @enderror">{{ old('content') }}</textarea>
							    @error('content')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
						</div>
						<div class="form-group">
							<label>Name</label>
							<input type="text" name="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}">
							    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
						</div>
						<div class="form-group">
							<label>Profession</label>
							<input type="text" name="profession" class="form-control @error('profession') is-invalid @enderror" value="{{ old('profession') }}">
							    @error('profession')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
						</div>
						<div class="form-group">
							<label>Viemo Video Id</label>
							<input type="text" name="video_id" class="form-control @error('video_id') is-invalid @enderror" value="{{ old('video_id') }}">
							    @error('video_id')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
						</div>
						
						<div class="form-group">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</form>
				</div>
		    </div>
	</div>



</div>



@endsection