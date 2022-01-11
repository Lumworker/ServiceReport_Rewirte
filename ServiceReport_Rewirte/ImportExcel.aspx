<%@ Page Title="Import Excel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImportExcel.aspx.cs" Inherits="ServiceReport_Rewirte.ImportExcel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .max-wide {
            max-width: 100%;
        }

        .min-wide {
            min-width: 100%;
        }

        .datepicker {
            background: #333;
            border: 1px solid #555;
            color: #EEE;
        }

        .nav-tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        .ui-datepicker {
            z-index: 2 !important;
        }

        .btn-margin-left {
            margin-left: 2px;
        }

        .img-thumbnail {
            display: inline-block;
            max-width: 100%;
            padding: 4px;
            line-height: 1.42857143;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }

        input[type=checkbox] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
            margin-right: 1em;
            margin-bottom: 1em;
        }

        input[type=radio] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
            margin-right: 1em;
            margin-bottom: 1em;
        }

        /* Might want to wrap a span around your checkbox text */
        .checkboxtext {
            /* Checkbox text */
            font-size: 110%;
            display: inline;
        }

        .sorting_1 {
            text-align: center;
        }

        .center {
            text-align: center;
        }

        .att-margin {
            margin-top: 2.5rem;
        }


        .btn-Excel-dowlaod {
            background-color: #1f7244;
            color: ghostwhite;
            border: none;
        }

            .btn-Excel-dowlaod:hover {
                background-color: #006400;
                color: ghostwhite;
            }
    </style>
    <div class="page-header">
        <h2>Import WorkOrder</h2>
        <div class="row">
        </div>
    </div>

    <div class="panel-group">
        <div class="panel-body">
            <div class="row">
                <div id="smartwizard">
                    <ul>
                        <li class="check" data-step="Step1"><a href="#step-1">Import WorkOrder</a></li>
                        <li class="check" data-step="Step2"><a href="#step-2">Import Summary Report</a></li>
                        <li class="check" data-step="Step3"><a href="#step-3">Import Checklist</a></li>
                        <li class="check" data-step="Step4"><a href="#step-4">Import Sparepart</a></li>
                        <li class="check" data-step="Step5"><a href="#step-5">Complete</a></li>
                    </ul>
                    <div>
                        <%--======Step 1======--%>
                        <div id="step-1" class="">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="col-md-12">
                                        <div class="panel-group">
                                            <div class="panel panel-default" style="margin-top: 1em;">
                                                <div class="panel-heading">
                                                    <h4>Import WorkOrder</h4>
                                                </div>
                                                <div class="panel-body">

                                                    <div class="row" style="margin-bottom: 2rem; margin-top: 2rem;">
                                                        <div class="col-md-12">

                                                            <div class="col-md-12" style="margin-bottom: 2em;">
                                                                <h3 class="control-label">1) เลือกไฟล์ WorkOrder ที่ต้องการ Import </h3>

                                                            </div>

                                                            <div class="col-md-12 " style="margin-bottom: 2rem;">
                                                                <label class="control-label" style="font-size: 15px; color: red;">*แก้ไขหัวColumn จาก Job No. (SRO/Project No.) เป็น SRO*</label>

                                                                <input type="file" class="form-control max-wide " id="Step1_fileUpload">
                                                                <%--<div class="input-group">
                                                                    <input type="file" class="form-control max-wide " id="Step1_fileUpload">
                                                                    <div class="input-group-btn">
                                                                        <button class="btn btn-danger" id="Delete_upload" type="button" data-type="GetUsername">
                                                                            <i class="glyphicon glyphicon-trash"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>--%>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <div style="text-align: right; margin: 1rem;">
                                                        <button id="nextPage1" class="btn btn-warning Pos_Viewer" type="button" data-toggle="modal" style="text-align: left; margin-top: 2rem; display: none">Next</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div id="step-2" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Import Summary Report</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="row" style="margin-bottom: 2rem; margin-top: 2rem;">
                                            <div class="col-md-12">

                                                <div class="col-md-12" style="margin-bottom: 2em;">
                                                    <h3 class="control-label">2) เลือกไฟล์ Summary Report ที่ต้องการ Import </h3>
                                                </div>

                                                <div class="col-md-12 center" style="margin-bottom: 2rem;">
                                                    <input type="file" class="form-control max-wide " id="Step2_fileUpload">
                                                </div>


                                            </div>
                                        </div>

                                        <div style="text-align: right; margin: 1rem;">
                                            <button id="nextPage2" class="btn btn-warning Pos_Viewer" type="button" data-toggle="modal" style="text-align: left; margin-top: 2rem;">Next</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======Step 2======--%>
                        <div id="step-3" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Import Checklist</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="row" style="margin-bottom: 2rem; margin-top: 2rem;">
                                            <div class="col-md-12">

                                                <div class="col-md-12" style="margin-bottom: 2em;">
                                                    <h3 class="control-label">3) เลือกไฟล์ Checklist ที่ต้องการ Import </h3>
                                                </div>

                                                <div class="col-md-12 center" style="margin-bottom: 2rem;">
                                                    <input type="file" class="form-control max-wide " id="Step3_fileUpload">
                                                </div>


                                            </div>
                                        </div>

                                        <div style="text-align: right; margin: 1rem;">
                                            <button id="nextPage3" class="btn btn-warning Pos_Viewer" type="button" data-toggle="modal" style="text-align: left; margin-top: 2rem;">Next</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======Step 3======--%>
                        <div id="step-4" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Import Sparepart</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="row" style="margin-bottom: 2rem; margin-top: 2rem;">
                                            <div class="col-md-12">

                                                <div class="col-md-12" style="margin-bottom: 2em;">
                                                    <h3 class="control-label">4) เลือกไฟล์ Sparepart ที่ต้องการ Import </h3>
                                                </div>

                                                <div class="col-md-12 center" style="margin-bottom: 2rem;">
                                                    <input type="file" class="form-control max-wide " id="Step4_fileUpload">
                                                </div>


                                            </div>
                                        </div>

                                        <div style="text-align: right; margin: 1rem;">
                                            <button id="nextPage4" class="btn btn-warning Pos_Viewer" type="button" data-toggle="modal" style="text-align: left; margin-top: 2rem;">Next</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======Step 4======--%>
                        <div id="step-5" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Complete</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======Step 5======--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalBrowseSearch" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-xs" id="modalSize">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                        <div class="col-md-9 col-lg-9 col-sm-12">
                            <h4 id="Titlebrowse" class="modal-title">Text</h4>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="form-group col-md-12 col-lg-12 col-sm-12">
                            <div id="search_box">
                            </div>
                            <div id="row_box" style="display: none">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <table id="TbListBrowse" class="table table-striped table-bordered table-responsive">
                        <thead>
                            <tr class="header" id="TBheaderBrowse">
                            </tr>
                        </thead>
                        <tbody id='TBbodyBrowse'></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--Browse_modal--%>



    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/xlsx.full.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            
            var encrypt = getAllUrlParams("username");
            var username = GetUsername();

            $('#smartwizard').smartWizard({
                theme: 'arrows',
                keyNavigation: false,
                showStepURLhash: false,
                selected: 0, //ใส่ 0 จะเริ่มที่ Step แรกสุด
                transitionEffect: 'slide',
                toolbarSettings: { toolbarPosition: 'none', showNextButton: 'false', showPreviousButton: 'false' }
            });

            $(document).on("change", "#Step1_fileUpload", function () {
                var file = $(this).val();
                if (file != "") {
                    $('#nextPage1').show();
                }
                else {
                    $('#nextPage1').hide();
                }
            });

            $(document).on("change", "#Step2_fileUpload", function () {
                var file = $(this).val();
                if (file != "") {
                    $('#nextPage2').show();
                }
                else {
                    $('#nextPage2').hide();
                }
            });

            $(document).on("change", "#Step3_fileUpload", function () {
                var file = $(this).val();
                if (file != "") {
                    $('#nextPage3').show();
                }
                else {
                    $('#nextPage3').hide();
                }
            });

            $(document).on("change", "#Step4_fileUpload", function () {
                var file = $(this).val();
                if (file != "") {
                    $('#nextPage4').show();
                }
                else {
                    $('#nextPage4').hide();
                }
            });


            $(document).on("click", "#nextPage1", function () {
                var excel = $("#Step1_fileUpload")[0].files[0];
                var extention = excel.name;
                var lastDot = extention.lastIndexOf('.');
                var ext = extention.substring(lastDot + 1);
                var excelExtention = ['xlsx', 'xlsm', 'xlsb', 'xltx', 'xltm', 'xls', 'xlt', 'CSV'];
                if (excel = '') {
                    swal('Error', 'Plese select files.', 'error');
                }
                else if (!excelExtention.includes(ext)) {
                    swal('Error', 'Plese check files.', 'error');
                }
                else {
                    excel = $("#Step1_fileUpload")[0].files[0];
                    //console.log(excel);
                    LoadFile(excel, 'WorkOrder',username);
                }

            });


            $(document).on("click", "#nextPage2", function () {
                var excel = $("#Step2_fileUpload")[0].files[0];
                var extention = excel.name;
                var lastDot = extention.lastIndexOf('.');
                var ext = extention.substring(lastDot + 1);
                var excelExtention = ['xlsx', 'xlsm', 'xlsb', 'xltx', 'xltm', 'xls', 'xlt', 'CSV'];
                if (excel = '') {
                    swal('Error', 'Plese select files.', 'error');
                }
                else if (!excelExtention.includes(ext)) {
                    swal('Error', 'Plese check files.', 'error');
                }
                else {
                    excel = $("#Step2_fileUpload")[0].files[0];
                    //console.log(excel);
                    LoadFile(excel, 'Report',username);
                }
            });


            $(document).on("click", "#nextPage3", function () {
                var excel = $("#Step3_fileUpload")[0].files[0];
                var extention = excel.name;
                var lastDot = extention.lastIndexOf('.');
                var ext = extention.substring(lastDot + 1);
                var excelExtention = ['xlsx', 'xlsm', 'xlsb', 'xltx', 'xltm', 'xls', 'xlt', 'CSV'];
                if (excel = '') {
                    swal('Error', 'Plese select files.', 'error');
                }
                else if (!excelExtention.includes(ext)) {
                    swal('Error', 'Plese check files.', 'error');
                }
                else {
                    excel = $("#Step3_fileUpload")[0].files[0];
                    //console.log(excel);
                    LoadFile(excel, 'Checklist',username);
                }
            });


            $(document).on("click", "#nextPage4", function () {
                var excel = $("#Step4_fileUpload")[0].files[0];
                var extention = excel.name;
                var lastDot = extention.lastIndexOf('.');
                var ext = extention.substring(lastDot + 1);
                var excelExtention = ['xlsx', 'xlsm', 'xlsb', 'xltx', 'xltm', 'xls', 'xlt', 'CSV'];
                if (excel = '') {
                    swal('Error', 'Plese select files.', 'error');
                }
                else if (!excelExtention.includes(ext)) {
                    swal('Error', 'Plese check files.', 'error');
                }
                else {
                    excel = $("#Step4_fileUpload")[0].files[0];
                    //console.log(excel);
                    LoadFile(excel, 'Sparepart',username);
                }
            });

            function LoadFile(data, type,username) {
                //console.log(data);
                $("#IMGUpload").modal("show");
                var formData = new FormData();
                formData.append('file', data);
                formData.append('type', type);
                if (type == "WorkOrder") {
                    //1) Delete Temp 
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/DELETE_TB_FS_PM_Temp_WorkOrder") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({}),
                        success: function (response) {
                            //2 )Import Data To TB_FS_PM_Temp_WorkOrder
                            $.ajax({
                                type: 'post',
                                url: './LoadExcel.ashx',
                                data: formData,
                                async: false,
                                processData: false,
                                contentType: false,
                                success: function (status) {
                                    if (status == "Error") {
                                        swal('Error', 'แก้ไขหัวColumn จาก Job No. (SRO/Project No.) เป็น SRO', 'error');
                                        $("#IMGUpload").modal("hide");
                                    } else {
                                        //3 )insert&update data form TB_FS_PM_Temp_WorkOrder TO = > TB_FS_PM_WorkOrder & TB_FS_PM_Infromations
                                        $.ajax({
                                            type: "POST",
                                            async: false,
                                            url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_Temp_WorkOrder") %>",
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            data: JSON.stringify({username:username}),
                                            success: function (response) {
                                                setTimeout(function () {
                                                    $("#IMGUpload").modal("hide");
                                                    $('#smartwizard').smartWizard("next");
                                                }, 1000);
                                            }
                                        });

                                    }
                                },
                                error: function () {
                                    swal('Error', 'Whoops something went wrong!', 'error');
                                }
                            });
                        }
                    });

                }
                else if (type == "Report") {
                    //1) Delete Temp 
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/DELETE_TB_FS_PM_Temp_ReportWorkOrder") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({}),
                        success: function (response) {
                            //2 )Import Data To TB_FS_PM_Temp_ReportWorkOrder
                            $.ajax({
                                type: 'post',
                                url: './LoadExcel.ashx',
                                data: formData,
                                async: false,
                                processData: false,
                                contentType: false,
                                success: function (status) {
                                    //3 )insert&update data form TB_FS_PM_Temp_ReportWorkOrder TO = > 5 Table
                                    $.ajax({
                                        type: "POST",
                                        async: false,
                                        url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_Temp_ReportWorkOrder") %>",
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                            data: JSON.stringify({username:username}),
                                        success: function (response) {
                                            setTimeout(function () {
                                                $("#IMGUpload").modal("hide");
                                                $('#smartwizard').smartWizard("next");
                                            }, 1000);
                                        }
                                    });
                                },
                                error: function () {
                                    swal('Error', 'Whoops something went wrong!', 'error');
                                }
                            });
                        }
                    });

                }
                else if (type == "Checklist") {
                    //1) Delete Temp 
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/DELETE_TB_FS_PM_Temp_Checklist") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({}),
                        success: function (response) {
                            //2 )Import Data To TB_FS_PM_Temp_Checklist
                            $.ajax({
                                type: 'post',
                                url: './LoadExcel.ashx',
                                data: formData,
                                async: false,
                                processData: false,
                                contentType: false,
                                success: function (status) {
                                    //3 )insert&update data form TB_FS_PM_Temp_Checklist TO = > TB_FS_PM_Checklist
                                    $.ajax({
                                        type: "POST",
                                        async: false,
                                        url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_Temp_Checklist") %>",
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                            data: JSON.stringify({username:username}),
                                        success: function (response) {
                                            setTimeout(function () {
                                                $("#IMGUpload").modal("hide");
                                                $('#smartwizard').smartWizard("next");
                                            }, 1000);
                                        }
                                    });
                                },
                                error: function () {
                                    swal('Error', 'Whoops something went wrong!', 'error');
                                }
                            });
                        }
                    });
                }
                else if (type == "Sparepart") {
                    //1) Delete Temp 
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/DELETE_TB_FS_PM_Temp_Sparepart") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({}),
                        success: function (response) {
                            //2 )Import Data To TB_FS_PM_Temp_Sparepart
                            $.ajax({
                                type: 'post',
                                url: './LoadExcel.ashx',
                                data: formData,
                                async: false,
                                processData: false,
                                contentType: false,
                                success: function (status) {
                                    //3 )insert&update data form TB_FS_PM_Temp_Sparepart TO = > 5 Table
                                    $.ajax({
                                        type: "POST",
                                        async: false,
                                        url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_Temp_Sparepart") %>",
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                            data: JSON.stringify({username:username}),
                                        success: function (response) {
                                            setTimeout(function () {
                                                $("#IMGUpload").modal("hide");
                                                $('#smartwizard').smartWizard("next");
                                            }, 1000);
                                        }
                                    });
                                },
                                error: function () {
                                    swal('Error', 'Whoops something went wrong!', 'error');
                                }
                            });
                        }
                    });
                }
            }
            


        });

    </script>


</asp:Content>
