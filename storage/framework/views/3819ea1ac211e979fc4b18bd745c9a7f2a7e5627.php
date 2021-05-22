<?php $__env->startSection('title','Batch'); ?>
<?php $__env->startSection('page_head'); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('bredscrum'); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Batch </h3>
                        <button type="button" class="btn btn-warning pull-right" data-toggle="modal"
                                data-target="#addmodal">Add
                        </button>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="workplace" class="table table-bordered table-striped table-responsive dynamic-table">
                            <thead>
                            <tr>
                                <th>Work ID</th>
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th>Duration</th>
                                <th>Start Date</th>
                                <th>End Date</th>
                                <th>Description</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
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
    <!-- /.content -->

    <div class="modal fade" id="addmodal">
        <div class="modal-dialog" role="document" style="min-width:95%;">
            <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Batch</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <form action="batch " method="post" id="addform"  role="form">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label for="">Work Place ID</label>
                                            <select class="form-control" id="workplace_id" name="workplace_id">
                                                <?php $__currentLoopData = $workplaces; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $workplace): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($workplace->id); ?>"><?php echo e($workplace->name); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                         <div class="form-group col-md-4 bootstrap-timepicker">
                                          <label>Start Time :</label>
                                          <div class="input-group">
                                            <input type="text" id="starttime" name="starttime" class="form-control timepicker">
                                            <div class="input-group-addon">
                                              <i class="fa fa-clock-o"></i>
                                            </div>
                                          </div>
                                          <!-- /.input group -->
                                        </div>
                                        <div class="form-group col-md-4 bootstrap-timepicker">
                                          <label>End Time :</label>
                                          <div class="input-group">
                                            <input type="text" id="endtime" name="endtime" class="form-control timepicker">
                                            <div class="input-group-addon">
                                              <i class="fa fa-clock-o"></i>
                                            </div>
                                          </div>
                                          <!-- /.input group -->
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="">Start Date</label>
                                                <input type="text" class="form-control  datepicker" id="startdate" name="startdate" placeholder="Enter Start Date">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="">Duration</label>
                                                <input type="text" class="form-control" id="duration" name="duration" placeholder="Enter Duration">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="">End Date</label>
                                                <input type="text" class="form-control  datepicker" id="enddate" name="enddate" placeholder="Enter End Date">
                                            </div>
                                        </div>    
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="">Description</label>
                                                <input type="text" class="form-control" id="description" name="description" placeholder="Enter Description">
                                            </div>
                                        </div>           
                                    </div>
                                </div>
                                
                            </div>
                                
                            <div class="modal-footer  float-right">
                                <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
                                <button type="Submit" class="btn btn-primary btn-lg float-right">Add</button>
                            </div>

                        </form>
                    </div>                    
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_script'); ?>
    <!-- DataTables -->
    <script src="<?php echo e(asset('/public/assets/vendor_components/datatables.net/js/jquery.dataTables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('/public/assets/vendor_components/datatables.net-bs/js/dataTables.bootstrap.min.js')); ?>"></script>
    <!-- bootstrap datepicker -->
    <script src="<?php echo e(asset('/public/assets/vendor_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')); ?>"></script>

    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="<?php echo e(asset('/public/assets/vendor_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')); ?>">

    <!-- This is data table -->
    <script src="<?php echo e(asset('/public/assets/vendor_plugins/DataTables-1.10.15/media/js/jquery.dataTables.min.js')); ?>"></script>
    
    <script src="<?php echo e(asset('/public/assets/vendor_components/jquery-validation-1.17.0/dist/jquery.validate.min.js')); ?>"></script>



    <script type="text/javascript">
        $(document).ready(function () {
            //Date picker
            $('.datepicker').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true,
                forceParse: false,
            });

            $('#duration').change(function(){
                var from = $("#startdate").val().split("-");
                var startDate= new Date(from[2], from[1] - 1, from[0]);
                var edt = new Date(startDate.setDate(startDate.getDate() + parseInt($(this).val())));
                $('#enddate').val(edt.getDate()+'-'+(edt.getMonth()+1)+'-'+edt.getFullYear());
            });

            $('#startdate').change(function(){
                var from = $(this).val().split("-");
                var startdate = new Date(from[2], from[1] - 1, from[0]);
                var edt = new Date(startdate.setDate(startdate.getDate() + parseInt($('#duration').val())));
                $('#enddate').val(edt.getDate()+'-'+(edt.getMonth()+1)+'-'+edt.getFullYear());
            });

            //Timepicker
            $('.timepicker').timepicker({
              showInputs: false
            });
           // $('#workplace').DataTable();
            mytable = $('.dynamic-table').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": "<?php echo e(url('batch/getDataTable')); ?>",
                columns: [
                    {data: "workplace"},
                    {data: "starttime"},
                    {data: "endtime"},
                    {data: "duration"},
                    {data: "startdate"},
                    {data: "enddate"},
                    {data: "description"},
                    {data: "edit"},
                    {data: "delete"}
                ],
                "columnDefs": [
                    { "width": "20%", "targets": 0 },
                    { "width": "5%", "targets": 7 },
                    { "width": "5%", "targets": 8 }
                ]
            });


            /*$(document).on('click', '.edit', function () {
                var id = $(this).data("id");
                var workplace_id = $(this).data('workplace_id');
                var starttime = $(this).data('starttime');
                var endtime = $(this).data('endtime');
                var duration = $(this).data('duration');
                var startdate = $(this).data('startdate');
                var enddate = $(this).data('enddate');
                var description = $(this).data('description');                
                $('#editform #workplace_id').val(workplace_id);
                $('#editform #starttime').val(starttime);
                $('#editform #endtime').val(endtime);
                $('#editform #duration').val(duration);
                $('#editform #startdate').val(startdate);
                $('#editform #enddate').val(enddate);
                $('#editform #description').val(description);

                $('#editform').attr('action', 'batch/' + id);
                $('#editmodal').modal('show');  
            });   */

            /* DELETE Record using AJAX Requres */
            $(document).on('click', '.delete', function () {
                var id = $(this).data("delete-id");
                var token = $(this).data("token");
                swal({
                    title: "Are you sure?",
                    text: "Do you want to delete it perminantly !",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#f83f37",
                    confirmButtonText: "Yes, delete it!",
                    cancelButtonText: "No, cancel!",
                    closeOnConfirm: false,
                    closeOnCancel: false
                }, function(isConfirm){
                    if (isConfirm) {
                        $.ajax(
                            {
                                url: "bat/" + id,
                                type: 'POST',
                                data: {
                                    "id": id,
                                    "_method": 'DELETE',
                                    "_token": token
                                },
                                success: function (result) {
                                    swal("Deleted!", "Your Record is deleted.", "success");
                                    mytable.draw();
                                },
                                error: function (request, status, error) {
                                    var val = request.responseText;
                                    console.log(val);
                                    alert("error" + val);
                                }
                            });
                    } else {
                        swal("Cancelled", "Your record is safe :)", "error");
                    }
                });
                return false;
            });

            /* ADD Record using AJAX Requres */
            var addformValidator = $("#addform").validate({
                ignore: ":hidden",
                errorElement: "span",
                errorClass: "text-danger",
                validClass: "text-success",
                highlight: function (element, errorClass, validClass) {
                    $(element).addClass(errorClass);
                    $(element.form).find("span[id=" + element.id + "-error]").addClass(errorClass);
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).removeClass(errorClass);
                    $(element.form).find("span[id=" + element.id + "-error]").removeClass(errorClass);
                },
                submitHandler: function (form) {
                    $.ajax({
                        type: "POST",
                        url: $(form).attr('action'),
                        method: $(form).attr('method'),
                        data: $(form).serialize(),
                        success: function (data) {
                            $("#addmodal .close").click();
                            swal("Good job!", "Your Record Inserted Successfully", "success");
                            $(form).trigger('reset');
                            mytable.draw();
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            var response = JSON.parse(XMLHttpRequest.responseText);
                            addformValidator.showErrors(response.errors);
                            console.log(response.errors);

                        }
                    });
                    return false; // required to block normal submit since you used ajax
                }
            });

            /* EDIT Record using AJAX Requres */
            /*var editaddformValidator = $("#editform").validate({
                ignore: ":hidden",
                errorElement: "span",
                errorClass: "text-danger",
                validClass: "text-success",
                highlight: function (element, errorClass, validClass) {
                    $(element).addClass(errorClass);
                    $(element.form).find("span[id=" + element.id + "-error]").addClass(errorClass);
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).removeClass(errorClass);
                    $(element.form).find("span[id=" + element.id + "-error]").removeClass(errorClass);
                },
                submitHandler: function (form,e) {
                    e.preventDefault();
                    $.ajax({
                        type: 'POST',
                        url: $(form).attr('action'),
                        data: new FormData($("#editform")[0]),
                        contentType: false,
                        cache: false,
                        processData:false,
                        success: function (data) {
                            $("#editmodal .close").click();
                            swal("Good job!", "Your Record Updated Successfully", "success");
                            $(form).trigger('reset');
                            mytable.draw();
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            var response = JSON.parse(XMLHttpRequest.responseText);
                            editaddformValidator.showErrors(response.errors);
                        }
                    });
                    return false; // required to block normal submit since you used ajax
                }
            });*/

        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\MZFitnezz\resources\views/batch/view.blade.php ENDPATH**/ ?>