<!DOCTYPE html>
<html lang="en">
<head>
    <title>@yield('title')</title>
    @include('include.head')
    @yield('page_head')
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    @include('include.header')

      @include('include.navtopbar')
    </nav>
  </header>
  
  <!-- Left side column. contains the logo and sidebar -->
  @include('include.sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @yield('bredscrum')
    @yield('content')

  </div>
  <!-- /.content-wrapper -->
  
@include('include.footer')

  
  
</div>
<!-- ./wrapper -->
	@include('include.script')
  @yield('page_script')
</body>
</html>
