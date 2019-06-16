@extends('layouts.master')
@section('title','table')
@section('page_head')

@endsection

@section('bredscrum')
<section class="content-header">
  <h1>
    Data Tables
  </h1>
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="breadcrumb-item"><a href="#">Tables</a></li>
    <li class="breadcrumb-item active">Data tables</li>
  </ol>
</section>
@endsection

@section('content')

<!-- Main content -->
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Hover Export Data Table</h3>
          <button type="button" class="btn btn-warning pull-right" data-toggle="modal" data-target="#addmodal">
            Add
          </button>
        </div>
        <!-- /.box-header
         -->
        <div class="box-body">
          <table id="example" class="table table-bordered table-hover display nowrap margin-top-10 table-responsive">
            <thead>
              <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Contact No.</th>
                <th>Height</th>
                <th>Address</th>
                <th>Email</th>
                <th>Weight</th>
                <th>Reference</th>
                <th>Marital Status</th>
                <th>Current Status</th>
                <th>Goal</th>
                <th>Medical History</th>
                <th>Comments</th>
                <th>All Update By</th>
                <th>Joining Date</th>
                <th>Follow By</th>
                <th>Remarks</th>
              </tr>
            </thead>
            <tbody>
            
            </tbody>
            <tfoot>
              <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Contact No.</th>
                <th>Height</th>
                <th>Address</th>
                <th>Email</th>
                <th>Weight</th>
                <th>Reference</th>
                <th>Marital Status</th>
                <th>Current Status</th>
                <th>Goal</th>
                <th>Medical History</th>
                <th>Comments</th>
                <th>All Update By</th>
                <th>Joining Date</th>
                <th>Follow By</th>
                <th>Remarks</th>
              </tr>
            </tfoot>
          </table>


        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->          
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>


<div class="modal fade" id="addmodal">
  <div class="modal-dialog" role="document" style="min-width:95%;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Add</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body">
          <form action="/add" method="post" role="form">
            <div class="row">
              <div class="col-md-6">
                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Age</label>
                    <input type="text" class="form-control" id="age" name="age" placeholder="Enter Age">
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="">Contact No.</label>
                    <input type="text" class="form-control" id="contact" name="contact" placeholder="Enter Contact No." maxlength="10">
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Height</label>
                    <input type="text" class="form-control" id="height" name="height" placeholder="Enter Height">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="">Address</label>
                  <textarea name="address" id="input" placeholder="Enter Address" name="address" class="form-control" rows="6"></textarea>
                </div>
              </div>  
            </div>
            <div class="row">
              <div class="form-group col-md-4">
                <label for="">Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email">
              </div>
              <div class="form-group col-md-4">
                <label for="">Weight</label>
                <input type="text" class="form-control" id="weight" name="weight" placeholder="Enter Weight">
              </div>
              <div class="form-group col-md-4">
                <label for="">Reference</label>
                <input type="text" class="form-control" id="reference" name="reference" placeholder="Enter Reference">
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <label for="">Marital Status</label>
                <select name="married" id="married" class="form-control">
                  <option value="married">Married</option>
                  <option value="unmarried">Unmarried</option>
                </select>
              </div>
              <div class="col-md-4">
                <label for="">Current Status</label>
                <select name="status" id="status" class="form-control">
                  <option value="housewife">Housewife</option>
                  <option value="employed">Employed</option>
                  <option value="student">Student</option>
                  <option value="others">Others</option>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label for="">Your Goal</label>
                <input type="text" class="form-control" id="goal" name="goal" placeholder="Enter Your Goal">
              </div>
            </div>
            <div class="row">
              <div class="form-group col-md-4">
                <label for="">Medical History</label>
                <input type="text" class="form-control" id="medical" name="medical" placeholder="Enter Medical History">
              </div>
              <div class="form-group col-md-4">
                <label for="">Comments</label>
                <input type="text" class="form-control" name="comments" id="comments" placeholder="Enter Comments">
              </div>
              <div class="form-group col-md-4">
                 <label>You Want To All Update By</label>
                 <div class="row">
                   <div class="col-md-6">
                     <input type="checkbox" name="chckw" value="whatsapp">
                     <label>Whatsapp</label>
                   </div>
                   <div class="col-md-6">
                     <input type="checkbox" name="chcks" value="sms">
                     <label>SMS</label>
                   </div>
                 </div>
                 <div class="row">
                   <div class="col-md-6">
                     <input type="checkbox" name="email" value="email">
                     <label>Email</label>
                   </div>
                   <div class="checkbox col-md-6">
                     <input type="checkbox" name="call" value="call">
                     <label>Call</label>
                   </div> 
                 </div>
             </div>
            </div>
            <div class="row">
              <div class="form-group col-md-4">
                <label for="">Joining Date</label>
                <input type="text" class="form-control" name="join" id="join" placeholder="Enter Joining Date">
              </div>
              <div class="form-group col-md-4">
                <label for="">Followup By</label>
                <input type="text" class="form-control" name="followby" id="followby" placeholder="Enter Followup By">
              </div>
              <div class="form-group col-md-4">
                <label for="">Remarks</label>
                <input type="text" class="form-control" name="remarks" id="remarks" placeholder="Enter Remarks">
              </div>  
            </div>  
            <div class="modal-footer">
              @csrf
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="Submit" class="btn btn-primary float-right">Add</button>
            </form>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    @endsection

    @section('page_script')
    <script
        src="https://code.jquery.com/jquery-3.4.0.js"
        integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
        crossorigin="anonymous"></script>
    <!-- This is data table -->
    <script src="assets/vendor_plugins/DataTables-1.10.15/media/js/jquery.dataTables.min.js"></script>

    <!-- start - This is for export functionality only -->
    <script src="assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/dataTables.buttons.min.js"></script>
    <script src="assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/buttons.flash.min.js"></script>
    <script src="assets/vendor_plugins/DataTables-1.10.15/ex-js/jszip.min.js"></script>
    <script src="assets/vendor_plugins/DataTables-1.10.15/ex-js/pdfmake.min.js"></script>
    <script src="assets/vendor_plugins/DataTables-1.10.15/ex-js/vfs_fonts.js"></script>
    <script src="assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/buttons.html5.min.js"></script>
    <script src="assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/buttons.print.min.js"></script>
    <!-- end - This is for export functionality only -->

    <script type="text/javascript">
      $(function () {
        "use strict";

        $('#example1').DataTable();
        $('#example2').DataTable({
          'paging'      : true,
          'lengthChange': false,
          'searching'   : false,
          'ordering'    : true,
          'info'        : true,
          'autoWidth'   : false
        });


        $('#example').DataTable( {
          dom: 'Bfrtip',
          buttons: [
          'copy', 'csv', 'excel', 'pdf', 'print'
          ]
        } );

      });
    </script> 
    @endsection
