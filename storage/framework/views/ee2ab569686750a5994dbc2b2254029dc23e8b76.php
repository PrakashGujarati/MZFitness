<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Diana-Ionescu.ro">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
    <title>My School Timetable</title>
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
</head>
<body>
<div id="grid-wrapper">
    <div>
        <div class="tile" data-pos-x="0" data-pos-y="0">
            <div class="tile-content-1" style="font-size:100%"></div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="1" data-pos-y="0">
            <div class="tile-content-1" style="font-size:100%">Monday</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="2" data-pos-y="0">
            <div class="tile-content-1" style="font-size:100%">Tuesday</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="3" data-pos-y="0">
            <div class="tile-content-1" style="font-size:100%">Wednesday</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="4" data-pos-y="0">
            <div class="tile-content-1" style="font-size:100%">Thursday</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="5" data-pos-y="0">
            <div class="tile-content-1" style="font-size:100%">Friday</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="6" data-pos-y="0">
            <div class="tile-content-1" style="font-size:100%">Saturday</div>
            <div class="tile-content-2"></div>
        </div>
    </div>
    <div>
        <div class="tile grid-color-0" data-pos-x="0" data-pos-y="1">
            <div class="tile-content-1" style="font-size:100%">8.00 – 9.00</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="0" data-pos-y="2">
            <div class="tile-content-1" style="font-size:100%">9.00 – 10.00</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="0" data-pos-y="3">
            <div class="tile-content-1" style="font-size:100%">10.00 – 11.00</div>
            <div class="tile-content-2"></div>
        </div>
        <div class="tile grid-color-0" data-pos-x="0" data-pos-y="4">
            <div class="tile-content-1" style="font-size:100%">11.00 – 12.00</div>
            <div class="tile-content-2"></div>
        </div>
    </div>
    <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="tile" style="background-color:<?php echo e($value->employee->bgcolor); ?>;color:<?php echo e($value->employee->txtcolor); ?>" data-pos-x="<?php echo e(($value->x)+1); ?>" data-pos-y="<?php echo e(($value->y)+1); ?>">
        <div class="tile-content-1" style="font-size:100%"><?php echo e($value->employee->name); ?></div>
        <div class="tile-content-2" style="font-size:62.5%"></div>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<script>
    var wWidth=(window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth),
        margin,tileHeight,gridItems,i,j,x,y,rows,cols;
    document.getElementById("grid-wrapper").style.width=wWidth+"px";
    tileHeight=Math.floor(0.052*wWidth);
    margin=Math.round(0.002666*wWidth);
    document.getElementById("grid-wrapper").style.height=Math.floor(9*(tileHeight+margin))+"px";
    document.getElementById("grid-wrapper").style.fontSize=Math.floor(0.01491*wWidth)+"px";
    gridItems=document.getElementsByClassName("tile");
    for(i=0;i<gridItems.length;i++){
        rows=parseInt(gridItems[i].getAttribute("data-height"))||1;
        cols=parseInt(gridItems[i].getAttribute("data-width"))||1;
        gridItems[i].style.height=(rows*tileHeight+(rows-1)*margin)+"px";
        gridItems[i].style.width=(cols*12.4+(cols-1)*0.2666)+"%";
        x=parseInt(gridItems[i].getAttribute("data-pos-x"));
        y=parseInt(gridItems[i].getAttribute("data-pos-y"));
        gridItems[i].style.top=(y*(tileHeight+margin)+margin/2)+"px";
        gridItems[i].style.left=(x*12.6666+0.1333)+"%";
    }
    gridItems=document.getElementsByClassName("tile-content-2");
    for(i=0;i<gridItems.length;i++){
        rows=parseInt(gridItems[i].parentNode.getAttribute("data-height"))||1;
        gridItems[i].style.minHeight=Math.floor(rows*tileHeight/4)+"px";
    }
</script>
</body>
</html>
<?php /**PATH D:\xampp\htdocs\MZFitnezz\resources\views/employeeSchedule/timetable.blade.php ENDPATH**/ ?>