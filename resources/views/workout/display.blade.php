@extends('layouts.master')
@section('title','form')
@section('page_head')

@endsection

@section('bredscrum')

@endsection

@section('content')
    <!-- Main content -->
    <section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Workout Details</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table class="table table-bordered table-responsive">
                        <tbody>
                            @php
                                $data = json_decode($workout);
                            @endphp
                            @foreach($data as $key => $value)
                            <tr>
                                <th style="width:200px;font-weight: bold;">{{$key}}</th>
                                <th>{{$value}}</th>
                            </tr>
                            @endforeach
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
  @endsection

@section('page_script')

@endsection
