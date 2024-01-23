@extends('admin.master')


@section('content')

<div class="content-wrapper">

    <div class="page-header">
        <h3 class="page-title">Edit Employee Leave</h3>
     
      </div>

    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
          
              <form class="forms-sample" action="{{ route('update.employee.leave',$editData->id) }}" method="post" > 
                @csrf 

               <div class="row">

                <div class="col-md-6">
                    <div class="form-group">
                        <label class="form-label">Employee Name <span class="text-danger">*</span></label>
                        <select name="employee_id"  required class="form-control">
                            <option value="" selected="" disabled="">Select Employee Name</option>
                           @foreach($employees as $employee)
                           <option value="{{ $employee->id }}" {{ ($editData->employee_id == $employee->id)? 'selected': '' }}>{{ $employee->name }}</option>
                            @endforeach
                        </select>
                          
                      </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">

                        <label class="form-label">Start Date <span class="text-danger">*</span></label>
                        <input type="date" name="start_date" class="form-control" required="" value="{{ $editData->start_date }}">
   
                      </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">

                      <label class="form-label">Leave Purpose<span class="text-danger">*</span></label>
                    
                      <div class="controls">
                        <select name="leave_purpose_id" id="leave_purpose_id" required class="form-control">
                            <option value="" selected="" disabled="">Select Leave Purpose</option>
                           @foreach($leave_purpose as $leave)
                           <option value="{{ $leave->id }}" {{ ($editData->leave_purpose_id == $leave->id)? 'selected': '' }}>{{ $leave->name }}</option>
                            @endforeach
                            <option value="0">New Purpose</option>
                        </select>

                        <input type="text" name="name" id="add_another" class="form-control mt-2" placeholder="Write Purpose" style="display: none;">
                    </div>
                     
                        
                    </div>
              </div>

                
              <div class="col-md-6">
                <div class="form-group">

                    <label class="form-label">End Date <span class="text-danger">*</span></label>
                    <input type="date" name="end_date" class="form-control" required=""  value="{{ $editData->end_date }}">

                  </div>
            </div>
              

               </div>


              
                <button type="submit" class="btn btn-primary mr-2">Update</button>
                <a  class="btn btn-light" href="">Cancel</a>
              </form>

            </div>
          </div>
        </div>

</div>

<script type="text/javascript">
  $(document).ready(function(){
      $(document).on('change','#leave_purpose_id',function(){
          var leave_purpose_id = $(this).val();

          if(leave_purpose_id == '0'){
              $('#add_another').show('slow');
          }else{
              $('#add_another').hide('slow');
          }
      });
  });
</script>


@endsection