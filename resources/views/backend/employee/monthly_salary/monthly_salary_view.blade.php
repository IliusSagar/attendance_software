@extends('admin.master')


@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<div class="content-wrapper">

    <div class="page-header">
        <h3 class="page-title">Employee <strong>Monthly Salary</strong></h3>
     
      </div>

    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
          
             

               <div class="row">

                <div class="col-md-6">
                    <div class="form-group">

                        <label class="form-label">Attendance Date <span class="text-danger">*</span></label>
                        <input type="date" name="date" id="date" class="form-control" >
              
                        
                          
                      </div>
                </div>

                <div class="col-md-6" style="padding-top: 25px;">
                    <a id="search" class="btn btn-primary" name="search">Search</a>               
                  </div> <!-- End col-md-6 -->

               </div>


               <div class="row">
                <div class="col-md-12">
                    <div id="DocumentResults">
                    <script id="document-template" type="text/x-handlebars-template">
                        <table class="table table-bordered table-striped" style="width: 100%">
                        <thead>
                            <tr>
                                @{{{thsource}}}
                            </tr>
                        </thead> 
                        <tbody>
                                @{{#each this}}
                            <tr>
                                @{{{tdsource}}}
                            </tr>
                                @{{/each}}
                        </tbody>                           
                        </table>
                    </script>
                    </div><!--  DocumentResults -->
                </div><!--  col-md-12 -->
            </div><!-- Row -->
              

            </div>
          </div>
        </div>

</div>

<script type="text/javascript">
    $(document).on('click','#search',function(){
      var date = $('#date').val();

       $.ajax({
        url: "{{ route('employee.monthly.salary.get')}}",
        type: "get",
        data: {'date':date},
        beforeSend: function() {       
        },
        success: function (data) {
          var source = $("#document-template").html();
          var template = Handlebars.compile(source);
          var html = template(data);
          $('#DocumentResults').html(html);
          $('[data-toggle="tooltip"]').tooltip();
        }
      });
    });
  
  </script>


@endsection