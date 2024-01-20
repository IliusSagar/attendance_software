@extends('admin.master')



@section('content')

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<div class="content-wrapper ">
    <div class="page-header">
      <h3 class="page-title">Employee Salary Details</h3>

      <h5><strong>Employee Name: </strong>{{ $details->name }}</h5>
      <h5><strong>Employee ID No: </strong>{{ $details->id_no }}</h5>

    
    </div>
    <div class="row">
      <div class="col-lg-12 grid-margin stretch-card ">
        <div class="card table-responsive">
          <div class="card-body">
           
            </p>
            <table class="table table-bordered " >
              <thead>
                <tr>
                  <th>Sl</th>
                  <th>Previous Salary</th>
                  <th>Increment Salary</th>
                  <th>Present Salary</th>
                  <th>Effected Salary</th>
                 
                 
             
        
                </tr>
              </thead>
              <tbody>

                @foreach($salary_log as $key => $log)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $log->previous_salary }}</td>
                    <td>{{ $log->increment_salary }}</td>
                    <td>{{ $log->present_salary }}</td>
                    <td>{{ $log->effected_salary }}</td>
                

                 
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