@extends('admin.master')



@section('content')

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<div class="content-wrapper ">
    <div class="page-header">
      <h3 class="page-title">Employee List</h3>



      <nav aria-label="breadcrumb">
        <a href="{{ route('employee.registration.add')}}" class="btn btn-primary">Add Employee</a>
      </nav>
    </div>
    <div class="row">
      <div class="col-lg-12 grid-margin stretch-card ">
        <div class="card table-responsive">
          <div class="card-body">
           
            </p>
            <table class="table table-bordered " id="example">
              <thead>
                <tr>
                  <th>Sl</th>
                  <th>Photo</th>
                  <th >Name</th>
                  <th >ID No</th>
                  <th>Mobile</th>
                  <th>Gender</th>
                  <th>Join Date</th>
                  <th>Salary</th>
                  <th>Email</th>
                  @if(Auth::guard('admin')->user()->usertype == "Admin")
                  <th>Code</th>
                  @endif
             
                  <th class="d-flex justify-content-end">Action</th>
        
                </tr>
              </thead>
              <tbody>

                @foreach($allData as $key => $employee)
                <tr>
                  <td>{{ $key+1 }}</td>
           
                  <td>
                    <img src="{{ URL('upload/employee_images/'.$employee->image)}}" alt="">
                  </td>
                  <td>{{ $employee->name }}</td>
                  <td>{{ $employee->id_no }}</td>
                  <td>{{ $employee->mobile }}</td>
                  <td>{{ $employee->gender }}</td>
                  <td>{{ $employee->join_date }}</td>
                  <td>{{ $employee->salary }}</td>
                  <td>{{ $employee->email }}</td>
                  {{-- @php 
                  $admin = \Auth::guard('admin')->user()->name;
                  @endphp --}}

                  @if(Auth::guard('admin')->user()->usertype == "Admin")
                  <td>{{ $employee->code }}</td>
                  @endif
                  <td class="d-flex justify-content-end">
                  
                    <a href="{{ route('employee.registration.edit',$employee->id) }}" class="btn btn-primary">Edit</a>&nbsp;
                    <a target="_blank" href="{{ route('employee.registration.details',$employee->id) }}" class="btn btn-danger" >Details</a>
                  </td>
                  @endforeach
                 
                </tr>

               

                 
           

              </tbody>
            </table>
          </div>
        </div>
      </div>

      </div>
    </div>

    @if(Session::has('success'))
    <script>
        toastr.success("{{ session("success") }}");
    </script>
    @endif
   
    @if(Session::has('error'))
    <script>
        toastr.error("{{ session("error") }}");
    </script>
    @endif

    <script>

        $('#example').DataTable( {
            dom: 'Bfrtip',
            buttons: [
                'csv', 'excel', 'pdf' , 'print'
            ]
        } );
      
        </script>

<script>
    $(document).on("click","#delete", function(e){
     e.preventDefault();
     var link = $(this).attr("href");
     swal({
       title: "Are you want to delete?",
       text: "Once Delete, This will be Permanently Delete!",
       icon: "warning",
       buttons: true,
       dangerMode: true,
     })
     .then((willDelete) => {
       if(willDelete){
         window.location.href = link;
       }else{
         swal("Safe Data!");
       }
     });
    });
   </script>

@endsection