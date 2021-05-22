<div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
		  <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="{{asset('/public/images/user2-160x160.jpg')}}" class="user-image rounded-circle" alt="User Image">
            </a>
            <ul class="dropdown-menu scale-up">
              <!-- User image -->
              <li class="user-header">
                <img src="{{asset('/public/images/user2-160x160.jpg')}}" class="float-left rounded-circle" alt="User Image">
                <p>
                    {{Auth::user()->name}}
                  <small class="mb-5">Admin</small>
                  {{--<a href="#" class="btn btn-primary btn-sm">View Profile</a>--}}
                    <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"
                       {{ __('Logout') }} class="btn btn-block btn-danger"><i class="ion ion-power"></i> Log Out</a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                      @csrf
                  </form>
                </p>
              </li>
            </ul>
          </li>
         
        </ul>
      </div>
