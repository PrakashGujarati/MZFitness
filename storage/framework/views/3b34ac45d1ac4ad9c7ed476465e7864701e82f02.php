
<?php $__env->startSection('title','Feedback'); ?>
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
                        <h3 class="box-title">Feedback</h3>
                        <button type="button" class="btn btn-warning pull-right" data-toggle="modal"
                                data-target="#addmodal">Add
                        </button>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="members" class="table table-bordered table-striped table-responsive dynamic-table">
                            <thead>
                            <tr>
                                <th>Member ID</th>
                                <th>Employee ID</th>
                                <th>Rating</th>
                                <th>Review</th>
                                
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
                        <form action="employee" method="post" id="addform"  role="form">
                            <?php echo csrf_field(); ?>
                            
                                
                                    <div class="row">
                                        <div class="form-group col-md-2">
                                            <label for="">Member_id</label>
                                            <input type="text" class="form-control" id="member_id" name="member_id"
                                                   placeholder="Enter Member_id">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="">Emp_id</label>
                                            <input type="text" class="form-control pull-right" name="employee_schedule_id" id="employee_schedule_id" placeholder="Emp_id">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="">Rating</label>
                                            <input type="text" class="form-control" id="rating" name="rating"
                                                   placeholder="Rating">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="">Review</label>
                                            <input type="text" class="form-control" id="feeds" name="feeds"
                                                   placeholder="Review">
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
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="">Name</label>
                                            <input type="text" class="form-control" id="name" name="name"
                                                   placeholder="Enter Name">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Designation</label>
                                            <input type="text" class="form-control pull-right" name="designation" id="designation" placeholder="Designation">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="">Contact No.</label>
                                            <input type="text" class="form-control" id="contact" name="contact"
                                                   placeholder="Enter Contact No." maxlength="10">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Email</label>
                                            <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Address</label>
                                        <textarea name="address" id="address" placeholder="Enter Address" name="address"
                                                  class="form-control" rows="6"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Birthdate (dd-mm-yyyy)</label>
                                    <input type="text" class="form-control pull-right datepicker" name="birth_date" id="birth_date" placeholder="Enter Birthdate">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Branch</label>
                                    <input type="text" class="form-control" id="branch" name="branch"
                                           placeholder="Enter Branch">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Blode Group</label>
                                    <input type="text" class="form-control" id="blood_group" name="blood_group"
                                           placeholder="Enter Blode Group">
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



    <script type="text/javascript">
        $(document).ready(function () {
           // $('#members').DataTable();

            //Date picker
            $('.datepicker').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });

            $("#addform #addservice").click(function(){

                var service = $('#addform #service').val();
                 alert(service);
                /*if($("input[value='"+service+"']").val()!=service){
                    var data = "<div class='row col-md-12'><div class='form-group col-md-4'><input class='form-control services' name='services[]' " +
                        "type='text' value='"+service+"' readonly></div>" +
                        "<div class='form-group col-md-7'><input class='form-control' name='servicescomments[]' type='text'></div>" +
                        "<a class='btn btn-danger removeservice' style='float:right;height:35px;'><i class='fa fa-minus'></i></a></div>";
                    $("#addform #servicescontent").append(data);
                }*/
            });

            //Timepicker
            $('.timepicker').timepicker({
              showInputs: false
            });        

            mytable = $('.dynamic-table').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": "<?php echo e(url('employee/getDataTable')); ?>",
                columns: [
                    {data: "name"},
                    {data: "contact"},
                    {data: "designation"},
                    {data: "branch"},
                    {data: "blood_group"},
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
                var id = $(this).data("id");
                var name = $(this).data('name');
                var designation = $(this).data('designation');
                var contact = $(this).data('contact');
                var email = $(this).data('email');
                var address = $(this).data('address');
                var birth_date = $(this).data('birth_date');
                var branch = $(this).data('branch');
                var blood_group = $(this).data('blood_group');
                
                $('#editform #name').val(name);
                $('#editform #designation').val(designation);
                $('#editform #contact').val(contact);
                $('#editform #email').val(email);
                $('#editform #address').val(address);
                $('#editform #birth_date').val(birth_date);
                $('#editform #branch').val(branch);
                $('#editform #blood_group').val(blood_group);

                $('#editform').attr('action', 'employee/' + id);
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

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wgujaratigraphic/public_html/MZFitnezz/resources/views/feedback/view.blade.php ENDPATH**/ ?>