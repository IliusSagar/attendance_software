@extends('admin.master')


@section('content')

<div class="content-wrapper">

    <div class="page-header">
        <h3 class="page-title">Add Employee Leave</h3>
     
      </div>

    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
          
              <form class="forms-sample" action="#" method="post" > 
                @csrf 

               <div class="row">

                <div class="col-md-6">
                    <div class="form-group">
                        <label class="form-label">Employee Name <span class="text-danger">*</span></label>
                        <select name="employee_id"  required class="form-control">
                            <option value="" selected="" disabled="">Select Employee Name</option>
                           @foreach($employees as $employee)
                            <option value="{{ $employee->id }}">{{ $employee->name }}</option>
                            @endforeach
                        </select>
                          
                      </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">

                        <label class="form-label">Start Date <span class="text-danger">*</span></label>
                        <input type="date" name="start_date" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('start_date')
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