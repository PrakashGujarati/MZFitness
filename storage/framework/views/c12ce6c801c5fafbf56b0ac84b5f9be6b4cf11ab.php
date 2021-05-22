<?php $__env->startSection('title','Batch Member'); ?>
<?php $__env->startSection('page_head'); ?>
    <!-- Select2 -->
    <link rel="stylesheet" href="<?php echo e(asset('/public/assets/vendor_components/select2/dist/css/select2.min.css')); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo e(asset('/public/css/master_style.css')); ?>">
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
                        <h3 class="box-title">Batch Member</h3>
                        <button type="button" class="btn btn-warning pull-right" data-toggle="modal"
                                data-target="#addmodal">Add
                        </button>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="batch_member" class="table table-bordered table-striped table-responsive dynamic-table">
                            <thead>
                            <tr>
                                <th>Member Name</th>
                                <th>Batch</th>
                                <th>Joining Date</th>
                                <th>Valid Up To</th>
                                <th>Duration</th>
                                <th>Package</th>
                                <th>Fees</th>
                                <th>Payment Details</th>
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
                        <h4 class="modal-title">Add Batch Member</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <form action="batch_member" method="post" id="addform"  role="form">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="form-group col-md-8">
                                    <label for="">Member Name</label>
                                    <select class="form-control select2" multiple="multiple" data-placeholder="Select a Membters"
                                            name="member_id[]" id="member_id" style="width: 100%;">
                                        <?php $__currentLoopData = $members; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $member): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($member->id); ?>"><?php echo e($member->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Select Batch</label>
                                    <select name="batch_id" id="batch_id" class="form-control">
                                        <?php $__currentLoopData = $batches; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $batch): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($batch->id); ?>"><?php echo e($batch->starttime."-".$batch->endtime); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Joining Date (dd-mm-yyyy)</label>
                                    <input type="text" class="form-control pull-right datepicker" name="joiningdate" id="joiningdate" placeholder="Enter Joining Date">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Duration</label>
                                    <input type="text" class="form-control" id="duration" name="duration"
                                           placeholder="Enter Duration">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Valid Up To(dd-mm-yyyy)</label>
                                    <input type="text" class="form-control pull-right datepicker" name="validupto" id="validupto" placeholder="Enter End Date">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Package</label>
                                    <select name="package" id="package" class="form-control">
                                        <option value="0">Select Package</option>
                                        <?php $__currentLoopData = $packages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $package): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($package->id); ?>"><?php echo e($package->name." - ".$package->purpose." - ".$package->duration); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Fees</label>
                                    <input type="text" class="form-control" name="fees" id="fees" placeholder="Enter Fees">
                                </div>
                                <div class="col-md-4">
                                    <label for="">Payment Details</label>
                                    <select name="paymentdetails" id="paymentdetails" class="form-control">
                                        <option>Cash</option>
                                        <option>Cheque</option>
                                        <option>Card</option>
                                    </select>
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
                                <div class="col-md-4">
                                    <label for="">Member Name</label>
                                    <select name="membername" id="membername" class="form-control">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="">Select Batch</label>
                                    <select name="selectbatch" id="selectbatch" class="form-control">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="">Course Duration </label>
                                    <select name="duration" id="duration" class="form-control">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_script'); ?>
    <!-- DataTables -->
    <script src="<?php echo e(asset('/public/assets/vendor_components/datatables.net/js/jquery.dataTables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('/public/assets/vendor_components/datatables.net-bs/js/dataTables.bootstrap.min.js')); ?>"></script>


    <!-- This is data table -->
    <script src="<?php echo e(asset('/public/assets/vendor_plugins/DataTables-1.10.15/media/js/jquery.dataTables.min.js')); ?>"></script>

    <script src="<?php echo e(asset('/public/assets/vendor_components/jquery-validation-1.17.0/dist/jquery.validate.min.js')); ?>"></script>
    <!-- Select2 -->
    <script src="<?php echo e(asset('/public/assets/vendor_components/select2/dist/js/select2.full.js')); ?>"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true,
                forceParse: false,
            });

            //Initialize Select2 Elements
            $('.select2').select2();

            $('#duration').change(function(){
                var from = $("#joiningdate").val().split("-");
                var joiningdate= new Date(from[2], from[1] - 1, from[0]);
                var edt = new Date(joiningdate.setDate(joiningdate.getDate() + parseInt($(this).val())));
                $('#validupto').val(edt.getDate()+'-'+(edt.getMonth()+1)+'-'+edt.getFullYear());
            });

            $('#joiningdate').change(function(){
                var from = $(this).val().split("-");
                var joiningdate = new Date(from[2], from[1] - 1, from[0]);
                var edt = new Date(joiningdate.setDate(joiningdate.getDate() + parseInt($('#duration').val())));
                $('#validupto').val(edt.getDate()+'-'+(edt.getMonth()+1)+'-'+edt.getFullYear());
            });

            mytable = $('.dynamic-table').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": "<?php echo e(url('batch_member/getDataTable')); ?>",
                columns: [
                    {data: "name"},
                    {data: "batch_id"},
                    {data: "joiningdate"},
                    {data: "validupto"},
                    {data: "duration"},
                    {data: "package"},
                    {data: "fees"},
                    {data: "paymentdetails"},
                    {data: "edit"},
                    {data: "delete"}
                ],
                "columnDefs": [
                    { "width": "20%", "targets": 0 },
                    { "width": "5%", "targets": 4 },
                    { "width": "5%", "targets": 5 }
                ]
            });


            $(document).on('click', '.edit', function () {
                var membername = $(this).data('membername');
                var batch = $(this).data('batch');
                var joiningdate = $(this).data('joiningdate');
                var validupto = $(this).data('validupto');
                var duration = $(this).data('duration');
                var package = $(this).data('package');
                var fees = $(this).data('fees');
                var paymentdetails = $(this).data('paymentdetails');

                $('#editform #membername').val(membername);
                $('#editform #batch').val(batch);
                $('#editform #joiningdate').val(joiningdate);
                $('#editform #validupto').val(validupto);
                $('#editform #duration').val(duration);
                $('#editform #package').val(package);
                $('#editform #fees').val(fees);
                $('#editform #paymentdetails').val(paymentdetails);

                $('#editform').attr('action', 'batch_member/' + id);
                $('#editmodal').modal('show');
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
                }, function(isConfirm){
                    if (isConfirm) {
                        $.ajax(
                            {
                                url: "batch_member/" + id,
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



         $('body').on('change', '#package', function() {
                var id = $(this).val();
                $.ajax(
                        {
                         url: "batch_member/package/" + id,
                         type: 'POST',
                         data: {
                                "id": id,
                                "_method": 'POST',
                                "_token": "<?php echo e(csrf_token()); ?>",
                         },
                         success: function (result) {
                             $('#fees').val(result);
                         },
                         error: function (request, status, error) {
                            alert("select valid package");
                         }
                        });
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
            });

        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wgujaratigraphic/public_html/MZFitnezz/resources/views/batch_member/view.blade.php ENDPATH**/ ?>