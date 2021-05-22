<?php $__env->startSection('title','form'); ?>
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
                    <h3 class="box-title">User Details</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table class="table table-bordered table-responsive">
                        <tbody>
                            <?php
                                $data = json_decode($batch);
                            ?>
                            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <th style="width:200px;font-weight: bold;"><?php echo e($key); ?></th>
                                <th><?php echo e($value); ?></th>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    </section>
  <?php $__env->stopSection(); ?>

<?php $__env->startSection('page_script'); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/gujaratigraphics.com/public_html/MZFitnezz/resources/views/batch/display.blade.php ENDPATH**/ ?>