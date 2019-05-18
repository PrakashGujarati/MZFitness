@extends('layout.master')
@section('title','dashboard')
@section('page_head')

@endsection

@section('bredscrum')
<section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
</section>
@endsection

@section('content')

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box bg-blue">
            <span class="info-box-icon push-bottom"><i class="ion ion-ios-pricetag-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">New Clients</span>
              <span class="info-box-number">450</span>

              <div class="progress">
                <div class="progress-bar" style="width: 45%"></div>
              </div>
              <span class="progress-description">
                    45% Increase in 28 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box bg-green">
            <span class="info-box-icon push-bottom"><i class="ion ion-ios-eye-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total Visits</span>
              <span class="info-box-number">15,489</span>

              <div class="progress">
                <div class="progress-bar" style="width: 40%"></div>
              </div>
              <span class="progress-description">
                    40% Increase in 28 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box bg-purple">
            <span class="info-box-icon push-bottom"><i class="ion ion-ios-cloud-download-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Downloads</span>
              <span class="info-box-number">55,005</span>

              <div class="progress">
                <div class="progress-bar" style="width: 85%"></div>
              </div>
              <span class="progress-description">
                    85% Increase in 28 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box bg-red">
            <span class="info-box-icon push-bottom"><i class="ion-ios-chatbubble-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Direct Chat</span>
              <span class="info-box-number">13,921</span>

              <div class="progress">
                <div class="progress-bar" style="width: 50%"></div>
              </div>
              <span class="progress-description">
                    50% Increase in 28 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-xl-4 connectedSortable"> 
          <!-- PRODUCT LIST -->
        <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">Recently Products</h3>

          <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <ul class="products-list product-list-in-box">
          <li class="item">
            <div class="product-img">
            <img src="images/default-50x50.gif" alt="Product Image">
            </div>
            <div class="product-info">
            <a href="javascript:void(0)" class="product-title">iphone 7plus
              <span class="label label-warning pull-right">$300</span></a>
            <span class="product-description">
                12MP Wide-angle and telephoto cameras.
              </span>
            </div>
          </li>
          <!-- /.item -->
          <li class="item">
            <div class="product-img">
            <img src="images/default-50x50.gif" alt="Product Image">
            </div>
            <div class="product-info">
            <a href="javascript:void(0)" class="product-title">Apple Tv
              <span class="label label-info pull-right">$400</span></a>
            <span class="product-description">
                Library | For You | Browse | Radio
              </span>
            </div>
          </li>
          <!-- /.item -->
          <li class="item">
            <div class="product-img">
            <img src="images/default-50x50.gif" alt="Product Image">
            </div>
            <div class="product-info">
            <a href="javascript:void(0)" class="product-title">MacBook Air<span
              class="label label-danger pull-right">$450</span></a>
            <span class="product-description">
                Make big things happen. All day long.
              </span>
            </div>
          </li>
          <!-- /.item -->
          <li class="item">
            <div class="product-img">
            <img src="images/default-50x50.gif" alt="Product Image">
            </div>
            <div class="product-info">
            <a href="javascript:void(0)" class="product-title">iPad Pro
              <span class="label label-success pull-right">$289</span></a>
            <span class="product-description">
                Anything you can do, you can do better.
              </span>
            </div>
          </li>
          <!-- /.item -->
          </ul>
        </div>
        <!-- /.box-body -->
        <div class="box-footer text-center">
          <a href="javascript:void(0)" class="uppercase">View All Products</a>
        </div>
        <!-- /.box-footer -->
        </div>           
      </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->    
@endsection

@section('page_script')
  <!-- minimal_admin dashboard demo (This is only for demo purposes) -->
  <script src="js/pages/dashboard.js"></script>
  
  <!-- minimal_admin for demo purposes -->
  <script src="js/demo.js"></script>
@endsection
