@extends('admin.master')


@section('content')

<div class="content-wrapper">

    <div class="page-header">
        <h3 class="page-title">Add Employee</h3>
     
      </div>

    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
          
              <form class="forms-sample" action="#" method="post" > 
                @csrf 

               <div class="row">

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Employee Name <span class="text-danger">*</span></label>
                        <input type="text" name="name" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('name')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Father's Name  <span class="text-danger">*</span></label>
                        <input type="text" name="fname" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('fname')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Mother's Name <span class="text-danger">*</span></label>
                        <input type="text" name="mname" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('mname')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Mobile Number <span class="text-danger">*</span></label>
                        <input type="text" name="mobile" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('mobile')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Address<span class="text-danger">*</span></label>
                        <input type="text" name="address" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('address')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Gender<span class="text-danger">*</span></label>
                        <select name="gender" id="gender" required class="form-control">
                            <option value="" selected="" disabled="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>   
                      </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Religion<span class="text-danger">*</span></label>
                        <select name="religion" id="religion" required class="form-control">
                            <option value="" selected="" disabled="">Select Religion</option>
                            <option value="Islam">Islam</option>
                            <option value="Hindu">Hindu</option>
                            <option value="Chirstan">Christan</option>
                        </select>   
                      </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Date of Birth <span class="text-danger">*</span></label>
                        <input type="date" name="dob" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('dob')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>


                <div class="col-md-4">
                    <div class="form-group">

                        <label class="form-label">Designation<span class="text-danger">*</span></label>
                        <select name="designation_id"  required class="form-control">
                            <option value="" selected="" disabled="">Select Year</option>
                         
                        </select>   
                      </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">

                        <label class="form-label">Salary <span class="text-danger">*</span></label>
                        <input type="text" name="salary" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('salary')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">

                        <label class="form-label">Joining Date <span class="text-danger">*</span></label>
                        <input type="date" name="join_date" class="form-control" required="" >
              
                        <span style="color: red;">
                          @error('join_date')
                              {{$message}}
                          @enderror
                          </span>
                          
                      </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">

                        <label class="form-label">Profile Image <span class="text-danger">*</span></label>
                        <input type="file" name="image" class="form-control" id="image"   >
     
                      </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">

                        <img id="showImage" src="{{ url('upload/no_image.jpg') }}" style="height: 100px; width: 100px; border: 1px solid #000000;">
     
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

<script type="text/javascript">
    $(document).ready(function(){
        $('#image').change(function(e){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#showImage').attr('src',e.target.result);
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });
</script>


@endsection