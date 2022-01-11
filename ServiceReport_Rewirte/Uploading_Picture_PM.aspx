<%@ Page Title="Uploading Picture PM" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Uploading_Picture_PM.aspx.cs" Inherits="ServiceReport_Rewirte.Uploading_Picture_PM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .max-wide {
            max-width: 100%;
        }

        inp
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

        @media (min-width: 768px) {
            .CssSetHightCompressor {
                height: 553px;
            }
        }

        @media (min-width: 375px) {
            .img-thumbnail{
                height: 250px !important;
            }
        }


        .red {
            color: red;
            font-size: 18px;
        }

        input[type=checkbox] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
        }

        /* Might want to wrap a span around your checkbox text */
        .checkboxtext {
            /* Checkbox text */
            font-size: 110%;
            display: inline;
        }
    </style>

    <div class="page-header">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-8 col-xs-8" style="text-align: left; font-size: 30px;">
                    <span>Uploading Picture PM
                    </span>
                    <%-- <span>Report Title
                    <button id="btnHome" class="btn btn-default" type="button" data-toggle="modal">
                        <i class="glyphicon glyphicon-home"></i>
                    </button></span>--%>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top:0.5em">
            <div class="col-md-12 col-xs-12">
                <div class="col-md-12 col-xs-12">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <span style="font-size: 14px;font-weight: bold">Customer Name : </span><span style="font-size: 14px;" id="textTitle_Customer"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <span style="font-size: 14px;font-weight: bold">Service Contract : </span><span style="font-size: 14px;" id="textTitle_Service_Contract"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <span style="font-size: 14px; font-weight: bold">Subject : </span><span style="font-size: 14px;" id="textTitle_Subject"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!----End Header---->

    <div class="panel-group">
        <div class="panel">
            <div class="panel-body">

                <div class="row" style="margin-bottom: 2rem;">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <div class="col-md-6">
                                <label class="control-label">Work Order No. :</label>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                <input type="text" id="textWorkOrder" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                <div class="input-group-btn">
                                    <button class="btn btn-default Browse_modal" type="button" data-type="WorkOrder" id="btnWorkOrder" data-toggle="modal">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="col-md-6">
                                <label class="control-label">Work Order Line Item Number :</label>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" id="textWorkOrderLineItemNumber" class="form-control" style="min-width: 100%;" autocomplete="off" disabled />
                                    <div class="input-group-btn">
                                        <button class="btn btn-default Browse_modal" type="button" data-type="Checklist">
                                            <i class="glyphicon glyphicon-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               <%-- <div class="row" style="margin-bottom: 2rem;">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <label class="control-label">Work Order No. :</label>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                            <input type="text" id="textWorkOrder" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                <div class="input-group-btn">
                                    <button class="btn btn-default Browse_modal" type="button" data-type="WorkOrder" id="btnWorkOrder" data-toggle="modal">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-bottom: 2rem;">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <label class="control-label">Work Order Line Item Number :</label>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <input type="text" id="textWorkOrderLineItemNumber" class="form-control" style="min-width: 100%;" autocomplete="off" disabled/>
                                <div class="input-group-btn">
                                    <button class="btn btn-default Browse_modal" type="button" data-type="Checklist">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>

                <div class="row" id="divUpload">

                    <div class="col-md-12 col-xs-12">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="col-md-8 col-xs-8" style="text-align: left; font-size: 30px;">

                                                <h3 style="margin-left: 5px;" id="textTitleChecklist"></h3>
                                                <%-- <span>Report Title
                    <button id="btnHome" class="btn btn-default" type="button" data-toggle="modal">
                        <i class="glyphicon glyphicon-home"></i>
                    </button></span>--%>
                                            </div>
                                            <div class="col-md-4 col-xs-4" style="text-align: right">
                                                <button id="btnSaveImage" class="btn btn-info" type="button" style="margin-top: 1em;">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12">
                                            <div class="row">
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <div class="row" style="margin-bottom: 2px; margin-top: 3px;">
                                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_image1_1">
                                                                                <img class="d-block rounded img-thumbnail" id="image1_1" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px;" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">Before</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image1_2">
                                                                                <img class="d-block rounded img-thumbnail" id="image1_2" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">Repearing</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image1_3">
                                                                                <img class="d-block rounded img-thumbnail" id="image1_3" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">After</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div>
                                                                <input type="file" id="Input_image1_1" class="Checkimage" data-img-id="image1_1" data-img-name="_Before" style="display: none">
                                                                <input type="text" id="Input_Image1_1_OLD" disabled style="display: none">
                                                                <input type="file" id="Input_Image1_2" class="Checkimage" data-img-id="image1_2" data-img-name="_Repearing" style="display: none">
                                                                <input type="text" id="Input_Image1_2_OLD" disabled style="display: none">
                                                                <input type="file" id="Input_Image1_3" class="Checkimage" data-img-id="image1_3" data-img-name="_After" style="display: none">
                                                                <input type="text" id="Input_Image1_3_OLD" disabled style="display: none">
                                                                <%--<input type="file" id="Input_image1_1" class="Checkimage" data-img-id="image1_1" data-img-name="Checklist_Before" style="display: none">
                                                                <input type="text" id="Input_Image1_1_OLD" disabled style="display: none">
                                                                <input type="file" id="Input_Image1_2" class="Checkimage" data-img-id="image1_2" data-img-name="Checklist_Repearing" style="display: none">
                                                                <input type="text" id="Input_Image1_2_OLD" disabled style="display: none">
                                                                <input type="file" id="Input_Image1_3" class="Checkimage" data-img-id="image1_3" data-img-name="Checklist_After" style="display: none">
                                                                <input type="text" id="Input_Image1_3_OLD" disabled style="display: none">--%>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!--- End  (Image) --->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--1 Refrigeration Piping and Value Check Leak--%>

                      
                    </div>
                    <%--End col-12--%>
                </div>
            </div>
            <%--End col-12--%>
        </div>
    </div>
    

<div class="modal fade" id="modalBrowseSearch" role="dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md" id="modalSize">
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

    <script type="text/javascript">
        $(document).ready(function () {
            var WorkOrder = getAllUrlParams("WorkOrder");
            var WorkOrderLineItemNumber = getAllUrlParams("WorkOrderLineItemNumber");
            var encrypt = getAllUrlParams("username");
            var username = GetUsername();

            if (WorkOrder && WorkOrderLineItemNumber) {
                $("#textWorkOrder").val(WorkOrder);
                $("#textWorkOrderLineItemNumber").val(WorkOrderLineItemNumber);
                GetHeader_title(WorkOrder)
                GetTB_FS_PM_Checklist(WorkOrder, WorkOrderLineItemNumber)
            } else {
                $("#Titlebrowse").text("WorkOrder");
                $("#search_box").append('<input type="text" id="search_WorkOrder" placeholder="Search Work Order, Service Contract, Customer Name....." class="form-control max-wide" autocomplete="off">');
                Search_WorkOrder('');
                $("#modalBrowseSearch").modal("show");
                $("#divUpload").hide();
            }

            $(document).on("click", "#btnHome", function () {
                window.location.href = "./WorkOrderReporting.aspx" + "?WorkOrder=" + WorkOrder;
            });

            $(".Click_Image").on('click', function () {
                let image = $(this).attr("data-input-id");
                console.log(image);
                let x = "#" + image;
                console.log(x);
                $(x).click();
            });

            
           $(document).on("click", ".Browse_modal", function () {
                var fragment = '';
                var fragmentHeader = '';
                var Type = $(this).attr("data-type");
                $("#Titlebrowse").text(Type);
                $("#TBbodyBrowse").empty();
                $("#TBheaderBrowse").empty();
                $("#search_box").empty();
              
               if (Type == 'WorkOrder') {
                   $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search Work Order, Service Contract, Customer Name....." class="form-control max-wide" autocomplete="off">');
                    Search_WorkOrder('');
                }//End Browse1
               else if (Type == 'Checklist') {
                    $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search WorkOrder Line Item Number....." class="form-control max-wide" autocomplete="off">');
                    Search_Checklist('');
                }//End Get_Browse2


                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");
            });
            //Modal Browse
            
            $(document).on("click", ".selectOrder", function () {
                var Customer = $(this).closest("tr").find("td:nth-child(1)").text();
                var Subject = $(this).closest("tr").find("td:nth-child(2)").text();
                var WorkOrder = $(this).closest("tr").find("td:nth-child(3)").text();
                var SRO = $(this).closest("tr").attr("data-SRO");
                var Technician = $(this).closest("tr").attr("data-Technician");
                var Service_Contract = $(this).closest("tr").attr("data-Service_Contract");
                $("#textWorkOrder").val(WorkOrder);
                //hide WorkOrder

                
                $("#Titlebrowse").text('Checklist');
                $("#TBbodyBrowse").empty();
                $("#TBheaderBrowse").empty();
                $("#search_box").empty();
                $("#search_box").append('<input type="text" id="search_Checklist" placeholder="Search WorkOrder Line Item Number....." class="form-control max-wide" autocomplete="off">');
                Search_Checklist('');
                GetHeader_title(WorkOrder)
                
                //Show Checklist


            });

            $(document).on("click", ".selectChecklist", function () {
                var Description = $(this).closest("tr").find("td:nth-child(1)").text();
                var Model = $(this).closest("tr").find("td:nth-child(2)").text();
                var WorkOrderLineItemNumber = $(this).closest("tr").attr("data-WorkOrderLineItemNumber")
                var WorkOrder = $("#textWorkOrder").val();
                let Title = Description + " " + Model;
                $("#textTitleChecklist").text(Title);
                 $("#textWorkOrderLineItemNumber").val(WorkOrderLineItemNumber);
                $("#modalBrowseSearch").modal("hide");

                $("#divUpload").show();
                GetTB_FS_PM_Checklist(WorkOrder,WorkOrderLineItemNumber)

            });

            
            $("#btnSaveImage").on('click', function () {
                let WorkOrder =  $("#textWorkOrder").val();
                let WorkOrderLineItemNumber =  $("#textWorkOrderLineItemNumber").val();
                $('.Checkimage').each(function () {
                    if ($(this).val() != "") {
                        var data = $(this)[0].files[0];
                        var imgName = $(this).attr("data-img-name")
                        let folder = WorkOrder + "/UploadIMG/" + WorkOrderLineItemNumber
                        imgName = WorkOrderLineItemNumber + imgName;
                        console.log(imgName);
                        console.log(data);
                        console.log("------------------------");
                        insertFileToolTag(data, imgName, folder);
                    }
                });

                $.ajax({
                    type: "POST",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_CheckListIMG") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder, WorkOrderLineItemNumber: WorkOrderLineItemNumber,username:username}),
                    success: function (response) {
                        swal('Complete', 'บันทึกสำเร็จ', 'success');
                    }
                });

            });


            $(document).on("change", "#search_WorkOrder", function () {
                var search = $(this).val();
                Search_WorkOrder(search);
            });


            $(document).on("change", "#search_Checklist", function () {
                var search = $(this).val();
                Search_Checklist(search);
            });

            function GetHeader_title(WorkOrder) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_WorkOrder_Service_only") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Subject = val[2];
                                var Start_Date = val[3];
                                var End_Date = val[4];
                                var Customer = val[5];
                                var Address = val[6];
                                var Machine_Data = val[7];
                                var Technician = val[8];
                                var Report_By = val[9];
                                var Checked_By = val[10];
                                var SRO = val[11];
                                var Service_Contract = val[12];
                                
                                $("#textTitle_Customer").text(Customer);
                                $("#textTitle_Service_Contract").text(Service_Contract);
                                $("#textTitle_Subject").text(Subject);
                            });
                        }
                    }
                });
            }

            function Search_WorkOrder(search) {
                $("#Titlebrowse").text('Search WorkOrder');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                
                fragmentHeader = `<th>Customer Name</th>
                                <th>Subject</th>
                                <th style="width: 30%">Work Order</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_WorkOrder_PM_only") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[WorkOrder],[Subject],[Start_Date],[End_Date],[Customer],[Address],[Machine_Data]
                                //, [Technician], [Report_By], [Checked_By], [SRO], [Service_Contract]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Subject = val[2];
                                var Start_Date = val[3];
                                var End_Date = val[4];
                                var Customer = val[5];
                                var Address = val[6];
                                var Machine_Data = val[7];
                                var Technician = val[8];
                                var Report_By = val[9];
                                var Checked_By = val[10];
                                var SRO = val[11];
                                var Service_Contract = val[12];

                                fragment += '<tr data-SRO="' + SRO + '" data-Technician="' + Technician + '" data-Service_Contract="'+Service_Contract+'" >';
                                fragment += '<td><a href="javascript:void(0)" class="selectOrder">' + Customer + '</a></td>';
                                fragment += '<td><a href="javascript:void(0)" class="selectOrder">' + Subject + '</a></td>';
                                fragment += '<td><a href="javascript:void(0)" class="selectOrder">' + WorkOrder + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                        $("#TBheaderBrowse").append(fragmentHeader);
                        $("#TBbodyBrowse").append(fragment);
                    }
                });
            }
            
            function Search_Checklist(search) {
                var WorkOrder = $("#textWorkOrder").val();
                $("#Titlebrowse").text('Search Checklist');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                
                fragmentHeader = `<th>Description</th>
                                <th>Model</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/Search_TB_FS_PM_Checklist") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder,search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[WorkOrder],[WorkType],[WorkOrderLineItemNumber],[Description],[Model],[Result]
                                //, [Value], [Solution], [Problem], [Fixed], [CheckList_Before], [CheckList_During], [CheckList_After]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var WorkType = val[2];
                                var WorkOrderLineItemNumber = val[3];
                                var Description = val[4];
                                var Model = val[5];
                                var Result = val[6];
                                var Value = val[7];
                                var Solution = val[8];
                                var Problem = val[9];
                                var Fixed = val[10];
                                var CheckList_Before = val[11];
                                var CheckList_During = val[12];
                                var CheckList_After = val[13];
                                fragment += '<tr data-WorkOrderLineItemNumber="'+WorkOrderLineItemNumber+'" >';
                                fragment += '<td><a href="javascript:void(0)" class="selectChecklist">' + Description + '</a></td>';
                                fragment += '<td><a href="javascript:void(0)" class="selectChecklist">' + Model + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                        $("#TBheaderBrowse").append(fragmentHeader);
                        $("#TBbodyBrowse").append(fragment);
                    }
                });
            }


            $(".Checkimage").change(function () {
                var img_id = "#" + $(this).attr("data-img-id");
                var file_name = $(this).val().replace(/\\/g, '/').replace(/.*\//, '');
                var fileNameIndex = file_name.lastIndexOf("/") + 1;
                var dotIndex = file_name.lastIndexOf('.');
                var file_type = file_name.substr(dotIndex + 1, (file_name.length - 1) - dotIndex);
                var arr_type = ['jpg', 'jpeg', 'png'];

                file_name = file_name.substr(fileNameIndex, dotIndex < fileNameIndex ? file_name.length : dotIndex);
                if (arr_type.includes(file_type)) {
                    if (this.files && this.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function (e) { $(img_id).attr('src', e.target.result); };
                        reader.readAsDataURL(this.files[0]);
                    }
                } else {
                    $(this).val('');
                    swal("ไฟล์ไม่ถูกต้อง", "ประเภทไฟล์ที่ใช้ได้ jpg, jpeg และ png  เท่านั้น");
                }
            });

            
            function insertFileToolTag(data, name, folder) {
                var formData = new FormData();
                formData.append('file', data);
                formData.append('name', name);
                formData.append('folderName', folder);
                $.ajax({
                    type: 'post',
                    url: './Uploadfile_Uploading_Picture_PM.ashx',
                    //ต้องสร้างใหม่เป็นของ PATAG
                    data: formData,
                    async: false,
                    success: function (status) {
                        //alert("Upload Complete");
                    },
                    processData: false,
                    contentType: false,
                    error: function () {
                        alert("Whoops something went wrong!");
                    }
                });
            }

            

            function GetTB_FS_PM_Checklist(WorkOrder,WorkOrderLineItemNumber) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GetTB_FS_PM_Checklist") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder,WorkOrderLineItemNumber:WorkOrderLineItemNumber }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID], [WorkOrder], [WorkType], [WorkOrderLineItemNumber], [Description]
                                //, [Model], [Result], [Value], [Solution], [Problem], [Fixed], [CheckList_Before], [CheckList_During], [CheckList_After]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var WorkType = val[2];
                                var WorkOrderLineItemNumber = val[3];
                                var Description = val[4];
                                var Model = val[5];
                                var Result = val[6];
                                var Value = val[7];
                                var Solution = val[8];
                                var Problem = val[9];
                                var Fixed = val[10];
                                var CheckList_Before = val[11] ? img_Add_String(val[11]) : "images/Upload.png";
                                var CheckList_During = val[12] ? img_Add_String(val[12]) : "images/Upload.png";
                                var CheckList_After = val[13] ? img_Add_String(val[13]) : "images/Upload.png";
                                $("#image1_1").attr('src', CheckList_Before);
                                $("#image1_2").attr('src', CheckList_During);
                                $("#image1_3").attr('src', CheckList_After);

                                let Title = Description + " " + Model;
                                $("#textTitleChecklist").text(Title);
                            });
                        }
                    }
                });
            }
            //1
            function img_Add_String(img) {
                let date = new Date().format("ddMMyyyyhhmmss");
                let text = img + '?randomnumber=' + date;
                //console.log(text);
                //this function for Reset Log
                return text;
            }

        });
    </script>
</asp:Content>
