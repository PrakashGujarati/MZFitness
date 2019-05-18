<?php $__env->startSection('title','Members'); ?>
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
                        <h3 class="box-title">Members</h3>
                        <button type="button" class="btn btn-warning pull-right" data-toggle="modal"
                                data-target="#addmodal">Add
                        </button>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="members" class="table table-bordered table-striped table-responsive dynamic-table">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Contact</th>
                                <th>FollowupBy</th>
                                <th>Services</th>
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
                        <form action="/member" method="post" id="addform"  role="form">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="">Name</label>
                                            <input type="text" class="form-control" id="name" name="name"
                                                   placeholder="Enter Name">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Birthdate</label>
                                            <input type="text" class="form-control pull-right datepicker" name="birth_date" id="birth_date" placeholder="Enter Birthdate">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="">Contact No.</label>
                                            <input type="text" class="form-control" id="contact" name="contact"
                                                   placeholder="Enter Contact No." maxlength="10">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Height</label>
                                            <input type="text" class="form-control" id="height" name="height"
                                                   placeholder="Enter Height">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Address</label>
                                        <textarea name="address" id="input" placeholder="Enter Address" name="address"
                                                  class="form-control" rows="6"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Email</label>
                                    <input type="text" class="form-control" id="email" name="email"
                                           placeholder="Enter Email">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Weight</label>
                                    <input type="text" class="form-control" id="weight" name="weight"
                                           placeholder="Enter Weight">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Reference</label>
                                    <input type="text" class="form-control" id="reference" name="reference"
                                           placeholder="Enter Reference">
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
                                    <input type="text" class="form-control" id="goal" name="goal"
                                           placeholder="Enter Your Goal">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Medical History</label>
                                    <input type="text" class="form-control" id="medical" name="medical"
                                           placeholder="Enter Medical History">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Comments</label>
                                    <input type="text" class="form-control" name="comments" id="comments"
                                           placeholder="Enter Comments">
                                </div>
                                <div class="form-group col-md-4">
                                    <label>You Want To All Update By</label>
                                    <div class="row">
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_1" name="updatesons[]" value="Whatsapp">
                                                <label for="Checkbox_1">Whatsapp</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_2" name="updatesons[]" value="SMS">
                                                <label for="Checkbox_2">SMS</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_3" name="updatesons[]" value="Email">
                                                <label for="Checkbox_3">Email</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_4" name="updatesons[]" value="Call">
                                                <label for="Checkbox_4">Call</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Joining Date</label>
                                    <input type="text" class="form-control pull-right datepicker" name="joining_date" id="joining_date">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Followup By</label>
                                    <input type="text" class="form-control" name="followupby" id="followupby"
                                           placeholder="Enter Followup By">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Next Followup</label>
                                    <input type="text" class="form-control" name="nextfollowup" id="nextfollowup" placeholder="Enter Next Followup">
                                </div>
                            </div>
                            <div class="row">
                               <div class="form-group col-md-4">
                                    <label for="">Type of Services</label>
                                    <select id="service" class="form-control col-md-11"  style="float:left;">
                                        <option>Personal/General Training</option>
                                        <option>Weight Losss Batch</option>
                                        <option>Inch-Loss Therapy</option>
                                        <option>Weekly Weight Loss Sessions</option>
                                        <option>PCOS/PCOD Solutions</option>
                                        <option>Pregnancy Yoga</option>
                                        <option>Kids Batch</option>
                                        <option>Only Diet Sessions</option>
                                        <option>Diabetes & Thyroid Sessions</option>
                                        <option>Exercises for People Above 40 Years</option>
                                        <option>Stamina Batch</option>
                                    </select>
                                   <a class="btn btn-primary" id="addservice" style="float:right;"><i class="fa fa-plus"></i></a>
                                </div>                                
                                <div class="form-group col-md-8">
                                    <label for="">Remarks</label>
                                    <input type="text" class="form-control" name="remarks" id="remarks"
                                           placeholder="Enter Remarks">
                                </div>
                                
                            </div>
                            <div class="row" id="servicescontent">
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
                                            <label for="">Birthdate</label>
                                            <input type="text" class="form-control pull-right datepicker" 
                                            name="birth_date" id="birth_date" placeholder="Enter Birthdate">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="">Contact No.</label>
                                            <input type="text" class="form-control" id="contact" name="contact"
                                                   placeholder="Enter Contact No." maxlength="10">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="">Height</label>
                                            <input type="text" class="form-control" id="height" name="height"
                                                   placeholder="Enter Height">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Address</label>
                                        <textarea name="address" id="input" placeholder="Enter Address" name="address"
                                                  class="form-control" rows="6"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Email</label>
                                    <input type="text" class="form-control" id="email" name="email"
                                           placeholder="Enter Email">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Weight</label>
                                    <input type="text" class="form-control" id="weight" name="weight"
                                           placeholder="Enter Weight">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Reference</label>
                                    <input type="text" class="form-control" id="reference" name="reference"
                                           placeholder="Enter Reference">
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
                                    <input type="text" class="form-control" id="goal" name="goal"
                                           placeholder="Enter Your Goal">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Medical History</label>
                                    <input type="text" class="form-control" id="medical" name="medical"
                                           placeholder="Enter Medical History">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Comments</label>
                                    <input type="text" class="form-control" name="comments" id="comments"
                                           placeholder="Enter Comments">
                                </div>
                                <div class="form-group col-md-4">
                                    <label>You Want To All Update By</label>
                                    <div class="row">
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_5" name="updatesons[]" value="Whatsapp">
                                                <label for="Checkbox_5">Whatsapp</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_6" name="updatesons[]" value="SMS">
                                                <label for="Checkbox_6">SMS</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_7" name="updatesons[]" value="Email">
                                                <label for="Checkbox_7">Email</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="checkbox">
                                                <input type="checkbox" id="Checkbox_8" name="updatesons[]" value="Call">
                                                <label for="Checkbox_8">Call</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="">Joining Date</label>
                                    <input type="text" class="form-control pull-right datepicker" name="joining_date" id="joining_date">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Followup By</label>
                                    <input type="text" class="form-control" name="followupby" id="followupby"
                                           placeholder="Enter Followup By">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Next Followup</label>
                                    <input type="text" class="form-control" name="nextfollowup" id="nextfollowup" placeholder="Enter Next Followup">
                                </div>
                            </div>
                            <div class="row">
                               <div class="form-group col-md-4">
                                    <label for="">Type of Services</label>
                                    <select id="service" class="form-control col-md-11"  style="float:left;">
                                        <option>Personal/General Training</option>
                                        <option>Weight Losss Batch</option>
                                        <option>Inch-Loss Therapy</option>
                                        <option>Weekly Weight Loss Sessions</option>
                                        <option>PCOS/PCOD Solutions</option>
                                        <option>Pregnancy Yoga</option>
                                        <option>Kids Batch</option>
                                        <option>Only Diet Sessions</option>
                                        <option>Diabetes & Thyroid Sessions</option>
                                        <option>Exercises for People Above 40 Years</option>
                                        <option>Stamina Batch</option>
                                    </select>
                                   <a class="btn btn-primary" id="addservice" style="float:right;"><i class="fa fa-plus"></i></a>
                                </div>                                
                                <div class="form-group col-md-8">
                                    <label for="">Remarks</label>
                                    <input type="text" class="form-control" name="remarks" id="remarks"
                                           placeholder="Enter Remarks">
                                </div>                                
                            </div>
                            <div class="row" id="servicescontent">
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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_script'); ?>
    <!-- DataTables -->
    <script src="<?php echo e(asset('assets/vendor_components/datatables.net/js/jquery.dataTables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/vendor_components/datatables.net-bs/js/dataTables.bootstrap.min.js')); ?>"></script>


    <!-- This is data table -->
    <script src="<?php echo e(asset('assets/vendor_plugins/DataTables-1.10.15/media/js/jquery.dataTables.min.js')); ?>"></script>

    	<!-- bootstrap datepicker -->
    <script src="<?php echo e(asset('assets/vendor_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')); ?>"></script>
    
    	<!-- bootstrap datepicker -->	
	<link rel="stylesheet" href="<?php echo e(asset('assets/vendor_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')); ?>">

    <!-- minimal_admin for Data Table -->
    <script type="text/javascript">
        $(document).ready(function () {
           // $('#members').DataTable();

            //Date picker
            $('.datepicker').datepicker({
                format: 'mm/dd/yyyy',
                autoclose: true
            });

            $("#addform #servicescontent").html("");
            $("#editform #servicescontent").html("");

            $("#addform #addservice").click(function(){
                var service = $('#addform #service').val();
                var data = "<div class='row col-md-12'><div class='form-group col-md-4'><input class='form-control' name='services[]' " +
                    "type='text' value='"+service+"' readonly></div>" +
                    "<div class='form-group col-md-7'><input class='form-control' name='servicescomments[]' type='text'></div>" +
                    "<a class='btn btn-danger removeservice' style='float:right;height:35px;'><i class='fa fa-minus'></i></a></div>";
                $("#addform #servicescontent").append(data);
            });

            $("#editform #addservice").click(function(){
                var service = $('#editform #service').val();
                var data = "<div class='row col-md-12'><div class='form-group col-md-4'><input class='form-control' name='services[]' " +
                    "type='text' value='"+service+"' readonly></div>" +
                    "<div class='form-group col-md-7'><input class='form-control' name='servicescomments[]' type='text'></div>" +
                    "<a class='btn btn-danger removeservice' style='float:right;height:35px;'><i class='fa fa-minus'></i></a></div>";
                $("#editform #servicescontent").append(data);
            });

            $("body").on("click",".removeservice", function(){
                $(this).parent('div').remove();
            });        

            mytable = $('.dynamic-table').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": "<?php echo e(url('/member/getDataTable')); ?>",
                columns: [
                    {data: "name"},
                    {data: "contact"},
                    {data: "followupby"},
                    {data: "servicecomment"},
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
                var age = $(this).data('age');
                var contact = $(this).data('contact');
                var email = $(this).data('email');
                var address = $(this).data('address');
                var height = $(this).data('height');
                var weight = $(this).data('weight');
                var birth_date = $(this).data('birth_date');
                var reference = $(this).data('reference');
                var married = $(this).data('married');
                var status = $(this).data('status');
                var goal = $(this).data('goal');
                var medical = $(this).data('medical');
                var comments = $(this).data('comments');
                var updateson = $(this).data('updateson');
                var joining_date = $(this).data('joining_date');
                var followupby = $(this).data('followupby');
                var nextfollowup = $(this).data('nextfollowup');
                var remarks = $(this).data('remarks');
                var service = $(this).data('service');
                var servicecomment = $(this).data('servicecomment');

                $('#editform #name').val(name);
                $('#editform #age').val(age);
                $('#editform #contact').val(contact);
                $('#editform #email').val(email);
                $('#editform #address').val(address);
                $('#editform #height').val(height);
                $('#editform #weight').val(weight);
                $('#editform #birth_date').val(birth_date);
                $('#editform #reference').val(reference);
                $('#editform #married').val(married);
                $('#editform #status').val(status);
                $('#editform #goal').val(goal);
                $('#editform #medical').val(medical);
                $('#editform #comments').val(comments);
                $('#editform #joining_date').val(joining_date);
                $('#editform #followupby').val(followupby);
                $('#editform #nextfollowup').val(nextfollowup);
                $('#editform #remarks').val(remarks);
                
                var updatesonarray = "";
                $(":checkbox").prop('checked', false);

                updatesonarray = updateson.split(',');                
                $.each(updatesonarray, function (index, value) {
                    if(value == "Whatsapp"){$("#" + "Checkbox_5").prop('checked', true);}
                    else if(value == "SMS"){$("#" + "Checkbox_6").prop('checked', true);}
                    else if(value == "Email"){$("#" + "Checkbox_7").prop('checked', true);}
                    else if(value == "Call"){$("#" + "Checkbox_8").prop('checked', true);}
                });
                
                servicearray = service.split(','); 
                servicecommentarray = servicecomment.split('|');                 

                $.each(servicearray, function (index, value) {      
                    if(value!="")
                    {
                        var data = "<div class='row col-md-12'><div class='form-group col-md-4'>"+
                        "<input class='form-control' name='services[]' type='text' value='"+value+"' readonly></div>" +
                        "<div class='form-group col-md-7'><input class='form-control' value='"+servicecommentarray[index]+"' name='servicescomments[]' type='text'></div>" +
                        "<a class='btn btn-danger removeservice' style='float:right;height:35px;'><i class='fa fa-minus'></i></a></div>";
                        $("#editform #servicescontent").append(data);
                    }
                });

                $('#editform').attr('action', '/member/' + id);
                $('#editmodal').modal('show');  
            });   

        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Laravel\MZFitness\resources\views/member/view.blade.php ENDPATH**/ ?>