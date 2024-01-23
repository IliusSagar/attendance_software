@extends('admin.master')



@section('content')

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<div class="content-wrapper ">
    <div class="page-header">
      <h3 class="page-title">Employee Salary List</h3>




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


                  <th class="d-flex justify-content-end">Action</th>

                </tr>
              </thead>
              <tbody>

                @foreach($allData as $key => $value)
                <tr>
                  <td>{{ $key+1 }}</td>

                  <td>
                    <img src="{{ URL('upload/employee_images/'.$value->image)}}" alt="">
                  </td>
                  <td>{{ $value->name }}</td>
                  <td>{{ $value->id_no }}</td>
                  <td>{{ $value->mobile }}</td>
                  <td>{{ $value->gender }}</td>
                  <td>{{ $value->join_date }}</td>
                  <td>{{ $value->salary }}</td>
                  <td>{{ $value->email }}</td>


                  <td class="d-flex justify-content-end">

                    <a title="Increment" href="{{ route('employee.salary.increment',$value->id) }}" class="btn btn-primary"><i class="fa fa-plus-circle"></i></a>&nbsp;
                    <a title="Details" target="_blank" href="{{ route('employee.salary.details',$value->id) }}" class="btn btn-danger" >Details</a>
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