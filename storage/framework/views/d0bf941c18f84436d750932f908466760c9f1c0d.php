<?php $__env->startSection('title','Employee Schedule'); ?>
<?php $__env->startSection('page_head'); ?>
    <style type="text/css">
        @page{size:A4 landscape;margin:10mm 30mm}
        html,body{margin:0;padding:0}
        sub,sup{font-size:75%}
        #grid-wrapper{font-family:"Roboto";position:relative}
        .tile{margin:.1333%;position:absolute;vertical-align:top;width:16.4%}
        .tile-content-1{left:0;line-height:1.3em;margin:0 2.5%;overflow:hidden;text-align:center;text-overflow:ellipsis;text-shadow:0 1px 0 rgba(0,0,0,.2);position:absolute;top:50%;transform:translate(0,-50%);width:95%}
        .tile-content-2{bottom:0;line-height:1.3em;margin:0 2.5%;overflow:hidden;position:absolute;text-align:center;text-overflow:ellipsis;text-shadow:0 1px 0 rgba(0,0,0,.2);vertical-align:top;width:95%}
        .grid-color-0{background-color:#eee;color:#333}
        .grid-color-26{background-color:#adabd6;color:#403f50}
        .grid-color-27{background-color:#f7ee59;color:#5c5921}
        .grid-color-28{background-color:#fe8d72;color:#5f342a}
        .grid-color-29{background-color:#72fed5;color:#000000}
        .grid-color-30{background-color:#a0bb94;color:#3c4537}
    </style>
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
                        <h3 class="box-title">Employee Timetable</h3>
                        <a href="<?php echo e(url('employeeSchedule')); ?>"><button type="button" class="btn btn-info  pull-right">Schedule</button></a>
                    </div>
                    <hr>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div style="height: 40px;">
                            <a href="<?php echo e(url('employeeSchedule')); ?>/timetable/<?php echo e(Carbon\Carbon::parse($weekStartDate)->addDays(7)->format('Y-m-d')); ?>"><button type="button" style="background-color:#7a57c1;color:#FFFFFF;border-color: #7a57c1;" class="btn btn-warning  pull-right"><strong> Next Week</strong> <i class="fa fa-chevron-right" aria-hidden="true"></i></button></a>
                            <a href="<?php echo e(url('employeeSchedule')); ?>/timetable/<?php echo e(Carbon\Carbon::parse($weekStartDate)->subDays(7)->format('Y-m-d')); ?>"><button type="button" style="background-color:#7a57c1;color:#FFFFFF;border-color: #7a57c1;" class="btn btn-warning"><i class="fa fa-chevron-left" aria-hidden="true"></i> <strong>Prev Week</strong></button></a>
                        </div>
                        <div id="grid-wrapper">
                            <div>
                                <div class="tile" data-pos-x="0" data-pos-y="0">
                                    <div class="tile-content-1" style="font-size:100%"></div>
                                    <div class="tile-content-2"></div>
                                </div>
                                <?php for($i=0;$i<count($weekdays);$i++): ?>
                                    <div class="tile grid-color-0" data-pos-x="<?php echo e(($i+1)); ?>" data-pos-y="0">
                                        <div class="tile-content-1" style="font-size:100%;top: 30%;"><?php echo e($weekdays[$i]); ?></div>
                                        <div class="tile-content-2" style="font-size:80%;margin: 5px 2.5%;"><?php echo e(Carbon\Carbon::parse($weekStartDate)->addDays($i)->format('d-m-Y')); ?></div>
                                    </div>
                                <?php endfor; ?>
                            </div>
                            <div>
                                <?php $j=1; ?>
                                <?php $__currentLoopData = $batches; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $batch): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="tile grid-color-0" data-pos-x="0" data-pos-y="<?php echo e($j++); ?>">
                                        <div class="tile-content-1" style="font-size:100%"><?php echo e($batch); ?></div>
                                        <div class="tile-content-2"></div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="tile" style="background-color:<?php echo e($value->employee->bgcolor); ?>;color:<?php echo e($value->employee->txtcolor); ?>" data-pos-x="<?php echo e(($value->x)+1); ?>" data-pos-y="<?php echo e(($value->y)+1); ?>">
                                    <div class="tile-content-1" style="font-size:100%"><?php echo e($value->employee->name); ?></div>
                                    <div class="tile-content-2" style="font-size:62.5%"></div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content
    
        -->

    
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_script'); ?>
    <script>
        var wWidth=(window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth),
            margin,tileHeight,gridItems,i,j,x,y,rows,cols;
        document.getElementById("grid-wrapper").style.width=wWidth+"px";
        tileHeight=Math.floor(0.042*wWidth);
        margin=Math.round(0.002666*wWidth);
        document.getElementById("grid-wrapper").style.height=Math.floor(9*(tileHeight+margin))+"px";
        document.getElementById("grid-wrapper").style.fontSize=Math.floor(0.01491*wWidth)+"px";
        gridItems=document.getElementsByClassName("tile");
        for(i=0;i<gridItems.length;i++){
            rows=parseInt(gridItems[i].getAttribute("data-height"))||1;
            cols=parseInt(gridItems[i].getAttribute("data-width"))||1;
            gridItems[i].style.height=(rows*tileHeight+(rows-1)*margin)+"px";
            gridItems[i].style.width=(cols*10.4+(cols-1)*0.2666)+"%";
            x=parseInt(gridItems[i].getAttribute("data-pos-x"));
            y=parseInt(gridItems[i].getAttribute("data-pos-y"));
            gridItems[i].style.top=(y*(tileHeight+margin)+margin/2)+"px";
            gridItems[i].style.left=(x*10.6666+0.1333)+"%";
        }
        gridItems=document.getElementsByClassName("tile-content-2");
        for(i=0;i<gridItems.length;i++){
            rows=parseInt(gridItems[i].parentNode.getAttribute("data-height"))||1;
            gridItems[i].style.minHeight=Math.floor(rows*tileHeight/4)+"px";
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wgujaratigraphic/public_html/MZFitnezz/resources/views/employeeSchedule/tt.blade.php ENDPATH**/ ?>