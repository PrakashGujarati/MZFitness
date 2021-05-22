
<!doctype html>
<!--
* Smart Timesheet: Time and Attendance Management System
* Email: official.smarttimesheet@gmail.com
* Version: 3.0
* Author: Brian Luna
* Copyright 2018 Brian Luna
* Website: https://github.com/brianluna/smarttimesheet
-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <meta name="csrf-token" content="7uKirHJNT8LEZYtOtfHfP7WjBhR3htLLkBsn43TS" />

        <title>Smart Clock | Smart Timesheet</title>
        <link rel="stylesheet" type="text/css" href="<?php echo e(asset('/public/assets/clock/css/bootstrap.css')); ?>">
        <link rel="stylesheet" type="text/css" href="<?php echo e(asset('/public/assets/clock/semantic-ui/semantic.min.css')); ?>">
        <link rel="stylesheet" type="text/css" href="<?php echo e(asset('/public/assets/clock/css/clock.css')); ?>">
        
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="http://localhost/Smart/assets/js/html5shiv.js></script>
            <script src="http://localhost/Smart/assets/js/respond.min.js"></script>
        <![endif]-->

            </head>
    <body>

    <img src="<?php echo e(asset('public/images/clock-background.png')); ?>" class="wave">
    <div class="wrapper">
        
        <div id="body">

            <div class="content">

                    
    <div class="container-fluid">

        <div class="fixedcenter">
            <div class="clockwrapper">
                <div class="clockinout">
                    <button class="btnclock timein active" data-type="timein">Time In</button>
                    <button class="btnclock timeout" data-type="timeout">Time Out</button>
                </div>
            </div>

            <div class="clockwrapper">
                <div class="timeclock">
                    <span id="daytoday" class="clock-text"></span>
                    <span id="timetoday" class="clock-time"></span>
                    <span id="datetoday" class="clock-day"></span>
                </div>
            </div>

            <div class="clockwrapper">
                <div class="userinput">
                    
                    <form action="" method="get" accept-charset="utf-8" class="ui form">
                                                                                                    <div class="inline field">
                            <input class="enter_idno uppercase" name="idno" value="" type="text" placeholder="ENTER YOUR ID" required="">
                            <button id="btnclockin" type="button" class="ui positive large icon button">Confirm</button>
                            <input type="hidden" id="_url" value="http://localhost/Smart">
                        </div>
                    </form>

                </div>
            </div>

            <div class="message-after">
                <p> 
                    <span id="greetings">Welcome!</span> 
                    <span id="fullname"></span>
                </p>

                <p id="messagewrap">
                    <span id="type"></span>
                    <span id="message"></span> 
                    <span id="time"></span>
                </p>
            </div>
        </div>

    </div>

                 
            </div>

        </div>
    </div>
    
    <script src="<?php echo e(asset('/public/assets/clock/js/jquery-3.3.1.min.js')); ?>"></script>
    <script src="<?php echo e(asset('/public/assets/clock/semantic-ui/semantic.min.js')); ?>"></script>
    <script src="<?php echo e(asset('/public/assets/clock/js/script.js')); ?>"></script>
    <script src="<?php echo e(asset('/public/assets/clock/js/bootstrap.min.js')); ?>"></script>

    <script type="text/javascript">

    function date_time(timetoday) {
            date = new Date();
            h = date.getHours();
            hours = ((h + 11) % 12 + 1);
            var ampm = h >= 12 ? 'PM' : 'AM';
            if(hours<10) { hours = "0"+hours; }
            m = date.getMinutes();
            if(m<10) { m = "0"+m; }
            s = date.getSeconds();
            if(s<10) { s = "0"+s; }
            timecurrent = hours+':'+m+':'+s+' '+ampm;
            document.getElementById(timetoday).innerHTML = timecurrent;
            setTimeout('date_time("'+timetoday+'");','1000');
            return true;
    }

    function date_today(datetoday) {
            date = new Date;
            year = date.getFullYear();
            month = date.getMonth();
            months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
            d = date.getDate();
            day = date.getDay();
            days = new Array('Sunday,', 'Monday,', 'Tuesday,', 'Wednesday,', 'Thursday,', 'Friday,', 'Saturday,');
            datecurrent = months[month]+' '+d+', '+year;
            document.getElementById(datetoday).innerHTML = datecurrent;
            return true;
    }

    function day_today(daytoday) {
            date = new Date;
            year = date.getFullYear();
            month = date.getMonth();
            months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
            d = date.getDate();
            day = date.getDay();
            days = new Array('Sunday,', 'Monday', 'Tuesday', 'Wednesday', 'Thursday,', 'Friday', 'Saturday');
            daycurrent = days[day];
            document.getElementById(daytoday).innerHTML = daycurrent;
            return true;
    }

    window.onload = day_today('daytoday');
    window.onload = date_time('timetoday');
    window.onload = date_today('datetoday');

    $('.btnclock').click(function(event) {
        var is_comment = $(this).text();
        if (is_comment == "Time In") {
            $('.comment').slideDown('200').show();
        } else {
            $('.comment').slideUp('200');
        }
        $('.btnclock').removeClass('active animated fadeIn')
        $(this).toggleClass('active animated fadeIn');
    });

    $('#btnclockin').click(function(event) {
        var url, type, idno, comment;

       // $('#idno').val();

        //alert($('[name="idno"]').val());
        //console.log($('#timetoday').html());
        //console.log($('#datetoday').html());
        //console.log($('#datetoday').html());

        /*url = $("#_url").val();
        type = $('.btnclock.active').text();
        idno = $('input[name="idno"]').val();
        idno.toUpperCase();
        comment = $('textarea[name="comment"]').val();

        $.ajax({
            url: url + '/attendance/add',type: 'post',dataType: 'json',data: {idno: idno, type: type, clock_comment: comment},headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') },

            success: function(response) {
                if(response['error'] != null) {
                    function prefix() {
                        var gender = response['gender'];
                        var civilstatus = response['civilstatus'];
                        if (gender == 'MALE') { if(civilstatus == 'SINGLE') { return 'Mr ';  } else if(civilstatus == 'MARRIED') { return 'Sir '; } else if(civilstatus == 'ANULLED') { return 'Mr '; } else if(civilstatus == 'LEGALLY SEPARATED') { return 'Mr '; } else { return ''; } }
                        if (gender == 'FEMALE') { if(civilstatus == 'SINGLE') {return 'Miss '; } else if(civilstatus == 'MARRIED') {return 'Mrs ';} else if(civilstatus == 'ANULLED') {return 'Ms ';} else if(civilstatus == 'LEGALLY SEPARATED') {return 'Ms ';} else {return '';} }
                    }

                    $('.message-after').addClass('notok').hide()
                    $('#type, #fullname').text("").hide();
                    $('#time').html("").hide();
                    $('.message-after').removeClass("ok");
                    
                    $('#message').text(response['error']);
                    $('#fullname').text(prefix() + ' ' + response['employee']);
                    $('.message-after').slideToggle().slideDown('400');
                } else {
                    $('.message-after').addClass('ok').hide();
                    $('.message-after').removeClass("notok");
                    $('#type, #fullname, #message').text("").show();
                    $('#time').html("").show();

                    $('#type').text(response['type']);
                    $('#fullname').text(response['firstname'] + ' ' + response['lastname']);
                    $('#time').html('at ' + '<span id=clocktime>' + response['time'] + '</span>' + '.' + '<span id=clockstatus> Success!</span>');
                    $('.message-after').slideToggle().slideDown('400');
                }
            }
        })*/
    });

    </script> 

    
    </body>
</html><?php /**PATH C:\xampp\htdocs\MZFitnezz\resources\views/employeeAttendance/clock.blade.php ENDPATH**/ ?>