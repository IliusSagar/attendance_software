@extends('admin.master')



@section('content')

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<div class="content-wrapper">
    <div class="page-header">
      <h3 class="page-title">Employee Salary List</h3>



      <nav aria-label="breadcrumb">
        <a href="{{ route('account.salary.add')}}" class="btn btn-primary">Add / Edit Employee Salary</a>
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
                  <th>ID No</th>
                  <th>Name</th>
                  <th>Amount</th>
                  <th>Date</th>
        
                </tr>
              </thead>
              <tbody>

                @foreach($allData as $key => $value)
                <tr>
                  <td>{{ $key+1 }}</td>
                  <td>{{ $value['admin']['id_no'] }}</td>
                  <td>{{ $value['admin']['name'] }}</td>
                  <td>{{ $value->amount }}</td>
                  <td>{{ date('M Y', strtotime($value->date)) }}</td>
                  

                 
                 
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