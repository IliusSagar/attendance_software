@extends('admin.master')



@section('content')

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<div class="content-wrapper">
    <div class="page-header">
      <h3 class="page-title">Employee Attendance List</h3>



      <nav aria-label="breadcrumb">
        <a href="{{ route('employee.attendance.add')}}" class="btn btn-primary">Add Attendance Leave</a>
      </nav>
    </div>
    <div class="row">
      <div class="col-lg-12 grid-margin stretch-card">
        <div class="card table-responsive">
          <div class="card-body">
           
            </p>
            <table class="table table-bordered" id="example">
              <thead>
                <tr>
                  <th>Sl</th>
                  <th>Date</th>
                 
                  <th class="d-flex justify-content-end">Action</th>
        
                </tr>
              </thead>
              <tbody>

                @foreach($allData as $key => $value)
                <tr>
                  <td>{{ $key+1 }}</td>
           
                  <td>{{ date('d-m-Y',strtotime($value->date))  }}</td>
                  

                  <td class="d-flex justify-content-end">
                  
                    <a href="{{ route('employee.attendance.edit',$value->date) }}" class="btn btn-primary">Edit</a>&nbsp;
                    <a href="{{ route('employee.attendance.details',$value->date) }}" class="btn btn-danger" >Details</a>
                  </td>
                 
                </tr>
                @endforeach
               
           

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