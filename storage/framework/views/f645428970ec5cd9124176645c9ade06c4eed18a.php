<div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
		  <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo e(asset('/public/images/user2-160x160.jpg')); ?>" class="user-image rounded-circle" alt="User Image">
            </a>
            <ul class="dropdown-menu scale-up">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo e(asset('/public/images/user2-160x160.jpg')); ?>" class="float-left rounded-circle" alt="User Image">

                <p>
                  Maical Clark
                  <small class="mb-5">max@gmail.com</small>
                  <a href="#" class="btn btn-primary btn-sm">View Profile</a>
                </p>
              </li>
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="<?php echo e(route('logout')); ?>" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"
                    <?php echo e(__('Logout')); ?> class="btn btn-block btn-danger"><i class="ion ion-power"></i> Log Out</a>
                  <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                    <?php echo csrf_field(); ?>
                  </form>
                </div>
			  </li>
            </ul>
          </li>
         
        </ul>
      </div><?php /**PATH D:\xampp\htdocs\MZFitnezz\resources\views/include/navtopbar.blade.php ENDPATH**/ ?>