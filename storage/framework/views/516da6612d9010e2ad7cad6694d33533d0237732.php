<?php $__env->startSection('title','Employee Schedule'); ?>
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
                        <h3 class="box-title">Employee Schedule</h3>
                        <button type="button" class="btn btn-warning pull-right" data-toggle="modal" data-target="#addmodal">Add</button>
                        <span class="pull-right">&nbsp;</span>
                        <a href="<?php echo e(url('employeeSchedule/timetable')); ?>"><button type="button" class="btn btn-info  pull-right">TimeTable</button></a>

                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="members" class="table table-bordered table-striped table-responsive dynamic-table">
                            <thead>
                            <tr>
                                <th>Workout</th>
                                <th>Name</th>
                                <th>Batch_id</th>
                                <th>Day</th>
                                <th>Date</th>
                                <th>Checkin</th>
                                <th>Checkout</th>
                                <th>Note</th>
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
                    <h4 class="modal-title">Add</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <form action="employeeSchedule" method="post" id="addform" role="form">
                        <?php echo csrf_field(); ?>
                        <div class="row">
                            <div class="form-group col-md-3">
                                <label for="">Emp_id</label>
                                <select name="employee_id" id="employee_id" class="form-control">
                                    <?php $__currentLoopData = $employees; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $employee): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($employee->id); ?>"><?php echo e($employee->name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="">Batch_id</label>
                                <select name="batch_id" id="batch_id" class="form-control">
                                    <option value="0">Select Batch Time</option>
                                    <?php $__currentLoopData = $batches; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $batch): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($batch->id); ?>" data-checkin="<?php echo e($batch->starttime); ?>" data-checkout="<?php echo e($batch->endtime); ?>"><?php echo e($batch->starttime."-".$batch->endtime); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <div class="form-group col-md-3 bootstrap-timepicker">
                                <label>Check In Time :</label>
                                <div class="input-group">
                                    <input type="text" name="checkin" id="checkin" class="form-control timepicker">
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                </div>
                                <!-- /.input group -->
                            </div>
                            <div class="form-group col-md-3 bootstrap-timepicker">
                                <label>Check Out Time:</label>
                                <div class="input-group">
                                    <input type="text" name="checkout" id="checkout" class="form-control timepicker">
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                </div>
                                <!-- /.input group -->
                            </div>
                        </div>
                        <div class="row ">
                            <!-- time Picker -->
                            <div class="form-group col-md-4">
                                <label for="">Date (dd-mm-yyyy)</label>
                                <input type="text" class="form-control pull-right datepicker" name="date" id="date"
                                       placeholder="Enter date">
                            </div>
                            <div class="form-group col-md-4 bootstrap-timepicker">
                                <label>Day :</label>
                                <div class="input-group">
                                    <input type="text" name="day" id="day" class="form-control">
                                </div>
                                <!-- /.input group -->
                            </div>
                            <div class="form-group col-md-4">
                                <label for="">Note</label>
                                <input type="text" class="form-control pull-right" name="note" id="note"
                                       placeholder="Enter Note">
                            </div>
                        </div>
                        <div class="modal-footer  float-right">
                            <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
                            <button type="Submit" class="btn btn-primary btn-lg float-right">Add</button>
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
    </div>

    <div id="workoutrow" style="visibility: hidden;height: 0;">
        <input type="hidden" name="empworkid[]" value="0">
        <div class="row">
            <div class="form-group col-md-4">
                <select name="workout[]" id="workout" class="form-control">
                    <?php $__currentLoopData = $workouts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $workout): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option><?php echo e($workout->workout_name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
            <div class="form-group col-md-4">
                <input type="text" class="form-control" id="workout_description" name="workout_description[]"
                       placeholder="Enter Description">
            </div>
            <div class="form-group col-md-3">
                <input type="text" class="form-control" id="workout_duration" name="workout_duration[]"
                       placeholder="Enter Duration">
            </div>
            <div class="form-group col-md-1">
                <a class="btn btn-danger remove"><i class="fa fa-minus"></i></a>
            </div>
        </div>
    </div>

    <div class="modal fade" id="workoutmodel">
        <div class="modal-dialog" role="document" style="min-width:95%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Employee Workout : <span id='empdata' class="text-primary"></span> </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">

                    <form method="post" id="workoutform" role="form">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('PUT'); ?>
                        <div class="row">
                            <div class="form-group col-md-4">
                                <label for="">WorkOut</label>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="">Description</label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="">Duration</label>                               
                            </div>
                            <div class="form-group col-md-1">
                                <a class="btn btn-primary" id="addbutton"><i class="fa fa-plus"></i></a>
                            </div>
                        </div>
                        <div class="addrow">
                        </div>
                        <div class="modal-footer  float-right">
                            <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
                            <button type="Submit" class="btn btn-primary btn-lg float-right">Update</button>
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
    </div>

    <div class="modal fade" id="editmodal">
        <div class="modal-dialog" role="document" style="min-width:95%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <form method="post" id="editform" role="form">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('PUT'); ?>
                        <div class="row">
                            <div class="form-group col-md-3">
                                <label for="">Emp_id</label>
                                <select name="employee_id" id="employee_id" class="form-control">
                                    <?php $__currentLoopData = $employees; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $employee): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($employee->id); ?>"><?php echo e($employee->name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="">Batch_id</label>
                                <select name="batch_id" id="batch_id" class="form-control">
                                    <option value="0">Select Batch Time</option>
                                    <?php $__currentLoopData = $batches; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $batch): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($batch->id); ?>" data-checkin="<?php echo e($batch->starttime); ?>" data-checkout="<?php echo e($batch->endtime); ?>"><?php echo e($batch->starttime."-".$batch->endtime); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <div class="form-group col-md-3 bootstrap-timepicker">
                                <label>Check In Time :</label>
                                <div class="input-group">
                                    <input type="text" name="checkin" id="checkin" class="form-control timepicker">
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                </div>
                                <!-- /.input group -->
                            </div>
                            <div class="form-group col-md-3 bootstrap-timepicker">
                                <label>Check Out Time:</label>
                                <div class="input-group">
                                    <input type="text" name="checkout" id="checkout" class="form-control timepicker">
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                </div>
                                <!-- /.input group -->
                            </div>
                        </div>
                        <div class="row ">
                            <!-- time Picker -->
                            <div class="form-group col-md-4">
                                <label for="">Date (dd-mm-yyyy)</label>
                                <input type="text" class="form-control pull-right datepicker" name="date" id="date"
                                       placeholder="Enter date">
                            </div>
                            <div class="form-group col-md-4 bootstrap-timepicker">
                                <label>Day :</label>
                                <div class="input-group">
                                    <input type="text" name="day" id="day" class="form-control">
                                </div>
                                <!-- /.input group -->
                            </div>
                            <div class="form-group col-md-4">
                                <label for="">Note</label>
                                <input type="text" class="form-control pull-right" name="note" id="note"
                                       placeholder="Enter Note">
                            </div>
                        </div>
                        <div class="modal-footer  float-right">
                            <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
                            <button type="Submit" class="btn btn-primary btn-lg float-right">Update</button>
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
    </div>
    <!--</div>-->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_script'); ?>
    <!-- DataTables -->
    <script src="<?php echo e(asset('/public/assets/vendor_components/datatables.net/js/jquery.dataTables.min.js')); ?>"></script>
    <script
        src="<?php echo e(asset('/public/assets/vendor_components/datatables.net-bs/js/dataTables.bootstrap.min.js')); ?>"></script>

    <!-- This is data table -->
    <script
        src="<?php echo e(asset('/public/assets/vendor_plugins/DataTables-1.10.15/media/js/jquery.dataTables.min.js')); ?>"></script>

    <script
        src="<?php echo e(asset('/public/assets/vendor_components/jquery-validation-1.17.0/dist/jquery.validate.min.js')); ?>"></script>



    <script type="text/javascript">
        $(document).ready(function () {
            // $('#members').DataTable();
            var weekday = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
            //Date picker
            $('.datepicker').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });


            $('#batch_id').change(function () {
                var checkin = $(this).find(':selected').data('checkin');
                var checkout = $(this).find(':selected').data('checkout');
                $('#checkin').val(checkin);
                $('#checkout').val(checkout);
            });

            $('#editform #batch_id').change(function () {
                var checkin = $(this).find(':selected').data('checkin');
                var checkout = $(this).find(':selected').data('checkout');
                $('#editform #checkin').val(checkin);
                $('#editform #checkout').val(checkout);
            });

            $('#date').change(function () {
                var from = $(this).val().split("-");
                var date = new Date(from[2], from[1] - 1, from[0]);
                var selectedDate = new Date(date.setDate(date.getDate()));
                $('#day').val(weekday[selectedDate.getUTCDay()]);
            });

            $('#editform #date').change(function () {
                var from = $(this).val().split("-");
                var date = new Date(from[2], from[1] - 1, from[0]);
                var selectedDate = new Date(date.setDate(date.getDate()));
                $('#editform #day').val(weekday[selectedDate.getUTCDay()]);
            });

            //Timepicker
            $("#workoutform .addrow").html("");
            $("#workoutform #addbutton").click(function () {
                var data = $('#workoutrow').html();
                $("#workoutform .addrow").append(data);
            });

            $("body").on("click",".remove", function(){
                $(this).parent('div').parent('div').remove();
            });

            /*$("body").on("click", ".removebutton", function () {
                $(this).parentsUntil('span').remove();
            });*/
            $('.timepicker').timepicker({
                showInputs: false
            });

            mytable = $('.dynamic-table').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": "<?php echo e(url('employeeSchedule/getDataTable')); ?>",
                columns: [
                    {data: "workout"},
                    {data: "employee.name"},
                    {data: "batch_id"},
                    {data: "day"},
                    {data: "date"},
                    {data: "checkin"},
                    {data: "checkout"},
                    {data: "note"},
                    {data: "edit"},
                    {data: "delete"},
                ],
                "columnDefs": [
                    {"width": "15%", "targets": 1},
                    {"width": "5%", "targets": 4},
                    {"width": "5%", "targets": 5}
                ]
            });


            $(document).on('click', '.edit', function () {                
                var id = $(this).data("id");
                var employee_id = $(this).data('employee_id');
                var batch_id = $(this).data('batch_id');
                var day = $(this).data('day');
                var date = $(this).data('date');
                var checkin = $(this).data('checkin');
                var checkout = $(this).data('checkout');
                var note = $(this).data('note');

                $('#editform #name').val(name);
                $('#editform #employee_id').val(employee_id);
                $('#editform #batch_id').val(batch_id);
                $('#editform #day').val(day);
                $('#editform #date').val(date);
                $('#editform #checkin').val(checkin);
                $('#editform #checkout').val(checkout);
                $('#editform #note').val(note);

                $('#editform').attr('action', 'employeeSchedule/' + id);
                $('#editmodal').modal('show');
            });


            $(document).on('click', '.workout', function () {

                var id = $(this).data("id");

                $.ajax(
                    {
                        url: "EmployeeWorkout/getEmployeeWorkoutData/" + id,
                        type: 'GET',
                        success: function (result) {
                            var data="";
                            $.each(result, function(key, value) {
                                //console.log(value.employee_schedule_id);
                                data += '<input type="hidden" name="empworkid[]" value="'+value.id+'"><div class="row"><div class="form-group col-md-4">' +
                                    '<select name="workout[]" id="workout" class="form-control"><option>'+value.workout+'</option></select></div>' +
                                    '<div class="form-group col-md-4">' +
                                    '<input type="text" class="form-control" id="workout_description" name="workout_description[]" value="'+value.workout_description+'"></div>' +
                                    '<div class="form-group col-md-3"><input type="text" class="form-control" id="workout_duration" name="workout_duration[]" value="'+value.workout_duration+'"></div>' +
                                    '<div class="form-group col-md-1"><a class="btn btn-danger remove"><i class="fa fa-minus"></i></a></div></div>';

                            });
                            $('#workoutform .addrow').html(data);
                        }
                    });
                var empname = $(this).data("empname");
                var batch = $(this).data("batch");
                var date = $(this).data("date");
                var day = $(this).data("day");
                $('#empdata').html(empname+' / '+batch+' / '+date+' / '+day);
                $('#workoutform').attr('action', 'employeeWorkout/' + id);
                $('#workoutmodel').modal('show');
            });

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
                }, function (isConfirm) {
                    if (isConfirm) {
                        $.ajax(
                            {
                                url: "employee/" + id,
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
            var editaddformValidator = $("#editform").validate({
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
                submitHandler: function (form, e) {
                    e.preventDefault();
                   
                    $.ajax({
                        type: 'POST',
                        url: $(form).attr('action'),
                        data: new FormData($("#editform")[0]),
                        contentType: false,
                        cache: false,
                        processData: false,
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
            });

            var workouteditaddformValidator = $("#workoutform").validate({
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
                submitHandler: function (form, e) {
                    e.preventDefault();
                    $.ajax({
                        type: 'POST',
                        url: $(form).attr('action'),
                        data: new FormData($("#workoutform")[0]),
                        contentType: false,
                        cache: false,
                        processData: false,
                        success: function (data) {
                            $("#workoutmodel .close").click();
                            swal("Good job!", "Your Record Updated Successfully", "success");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            var response = JSON.parse(XMLHttpRequest.responseText);
                            editaddformValidator.showErrors(response.errors);
                        }
                    });
                    return false; // required to block normal submit since you used ajax
                }
            });


        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\MZFitnezz\resources\views/employeeSchedule/view.blade.php ENDPATH**/ ?>