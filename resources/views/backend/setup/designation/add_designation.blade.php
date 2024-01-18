@extends('admin.master')


@section('content')

<div class="content-wrapper">

    <div class="page-header">
        <h3 class="page-title">Add Designation</h3>
     
      </div>

    <div class="row">
        <div class="col-md-6 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
          
              <form class="forms-sample" action="{{ route('store.designation') }}" method="post" > 
                @csrf 

               <div class="row">

                <div class="col-md-6">
                    <div class="form-group">

                        <label class="form-label">Designation Name <span class="text-danger">*</span></label>
                        <input type="text" name="name" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('name')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

              

               </div>


              
                <button type="submit" class="btn btn-primary mr-2">Submit</button>
                <a  class="btn btn-light" href="">Cancel</a>
              </form>

            </div>
          </div>
        </div>

</div>



@endsection