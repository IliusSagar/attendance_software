@extends('admin.master')



@section('content')

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<div class="content-wrapper">
    <div class="page-header">
      <h3 class="page-title">Employee List</h3>



      <nav aria-label="breadcrumb">
        <a href="{{ route('employee.registration.add')}}" class="btn btn-primary">Add Employee</a>
      </nav>
    </div>
    <div class="row">
      <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
           
            </p>
            <table class="table table-bordered" id="example">
              <thead>
                <tr>
                  <th>Sl</th>
                  <th class="wd-15p">ID No</th>
                  <th>Mobile</th>
                  <th>Gender</th>
                  <th>Join Date</th>
                  <th>Salary</th>
                  <th>Code</th>
                  <th class="d-flex justify-content-end">Action</th>
        
                </tr>
              </thead>
              <tbody>

            
                <tr>
                  <td>1</td>
           
                  <td>42342255</td>
                  <td>01830596312</td>
                  <td>Female</td>
                  <td>2023-01-05</td>
                  <td>3000</td>
                  <td>8326</td>

                  <td class="d-flex justify-content-end">
                  
                    <a href="#" class="btn btn-primary">Edit</a>&nbsp;
                    <a href="#" class="btn btn-danger" id="delete">Delete</a>
                  </td>
                 
                </tr>

                <tr>
                    <td>2</td>
             
                    <td>42342255</td>
                    <td>01830596312</td>
                    <td>Female</td>
                    <td>2023-01-05</td>
                    <td>3000</td>
                    <td>8326</td>
  
                    <td class="d-flex justify-content-end">
                    
                      <a href="#" class="btn btn-primary">Edit</a>&nbsp;
                      <a href="#" class="btn btn-danger" id="delete">Delete</a>
                    </td>
                   
                  </tr>

                  <tr>
                    <td>3</td>
             
                    <td>42342255</td>
                    <td>01830596312</td>
                    <td>Female</td>
                    <td>2023-01-05</td>
                    <td>3000</td>
                    <td>8326</td>
  
                    <td class="d-flex justify-content-end">
                    
                      <a href="#" class="btn btn-primary">Edit</a>&nbsp;
                      <a href="#" class="btn btn-danger" id="delete">Delete</a>
                    </td>
                   
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