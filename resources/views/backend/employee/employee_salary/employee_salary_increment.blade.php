@extends('admin.master')


@section('content')

<div class="content-wrapper">

    <div class="page-header">
        <h3 class="page-title">Employee Salary Increment</h3>
     
      </div>

    <div class="row">
        <div class="col-md-6 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
          
              <form class="forms-sample" action="{{ route('update.increment.store',$editData->id) }}" method="post" > 
                @csrf 

               <div class="row">

                <div class="col-md-6">
                    <div class="form-group">

                        <label class="form-label">Salary Amount <span class="text-danger">*</span></label>
                        <input type="text" name="increment_salary" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('increment_salary')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">

                        <label class="form-label">Effected Date <span class="text-danger">*</span></label>
                        <input type="date" name="effected_salary" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('effected_salary')
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