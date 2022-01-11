<%@ Page Title="ServiceCall" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Uploading_Picture_ServiceCall.aspx.cs" Inherits="ServiceReport_Rewirte.Uploading_Picture_ServiceCall" %>

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
        }

        @media (min-width: 768px) {
            .CssSetHightCompressor {
                height: 553px;
            }
        }

        @media (min-width: 375px) {
            .img-thumbnail {
                height: 250px !important;
            }
        }

        .red {
            color: red;
            font-size: 18px;
        }

        .font-header {
            font-size: 20px; 
            font-weight: bold
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
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="row">
                    <span style="font-size: 30px;">Service Call 
                    </span>
                </div>
                <div class="row" style="margin-top:0.5em;margin-bottom:0.5em">
                        <span style="font-size: 16px; font-weight: bold">Work Order :  </span><span style="font-size: 16px;" id="textWorkOrder"></span>
                            <button class="btn btn-default Browse_modal" type="button" data-type="WorkOrder" style="font-size: 9px">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
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
             <%--   <div class="row" style="margin-bottom: 1em;">
                    <div class="col-md-12">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div style="float: right;">
                                    <button class="btn btn-default" id="btnClear" type="button" style="display:no">Clear</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <div class="panel-group">
                    <div class="panel nav-tab panel-default" style="margin-top: 0.5em;padding: 0px;">
                        <ul class="nav nav-tabs">
                            <li class="nav-item active" id="nav_Checklist">
                                <a href="#TAB1" class="nav-link"  role="tab" data-toggle="tab">CheckList</a>
                            </li>
                            <li class="nav-item" id="nav_ServiceCall">
                                <a href="#TAB2" class="nav-link"  data-toggle="tab" role="tab">Before - After</a>
                            </li>
                        </ul>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane active" role="tabpanel" id="TAB1">
                                    <div class="row">
                                        <div class="col-md-12" style="margin-top: 0.5em;margin-bottom: 1em;">
                                            <div class="col-md-3">
                                                <label class="control-label">Work Order Line Item Number :</label>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="input-group">
                                                    <input type="text" id="textWorkOrderLineItemNumber" class="form-control" style="min-width: 100%;" autocomplete="off" disabled />
                                                    <input type="text" id="textWorkOrderLineItemNumber_Header" class="form-control" style="min-width: 100%; display: none" autocomplete="off" disabled />
                                                    <div class="input-group-btn">
                                                        <button class="btn btn-default Browse_modal" type="button" data-type="CheckList">
                                                            <i class="glyphicon glyphicon-search"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="row" style="margin-top: 0.5em; margin-bottom: 0.5em;">
                                            <div class="col-md-12">
                                                <div style="float: right;">
                                                    <button class="btn btn-info divbtn_AddSave btnSaveImage" id="btnSave_Checklist" data-type="CheckList" type="button" style="margin-left: 0.5em">Save</button>
                                                </div>
                                            </div>
                                        </div>
                                    <div class="row" id="divUpload_CheckList">
                                    </div>
                                </div>
                                <!--================End Tab 1====================-->
                                <div class="tab-pane fade" role="tabpanel" id="TAB2">
                                    <div class="row" style="margin-top: 1em; margin-bottom: 1em;">
                                        <div class="col-md-12" >
                                            <div style="float: left;">
                                                <button id="btnAddnew" class="btn btn-success divbtn_AddSave" type="button" style="margin-left: 0.5em"><span style="font-weight: bold;">+</span></button>
                                            </div>
                                            <div style="float: right;">
                                                <button class="btn btn-info divbtn_AddSave btnSaveImage" id="btnSave_ServiceCall" data-type="ServiceCall" type="button" style="margin-left: 0.5em">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" id="divUpload_ServiceCall">
                                    </div>
                                </div>
                                <!--================End Tab 2====================-->
                            </div>
                        </div>
                    </div>
                </div>

                <%--End Tab--%>
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

    <div class="modal fade" id="modalAddNew" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-md" style="top: 15%;">
            <div class="modal-content">
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 2em; margin-top: 1em;">
                            <div class="col-md-12 col-lg-12 col-sm-12">
                                <h4 class="modal-title" id="text_modalAddNew" style="margin-bottom: 1em; font-size: 27px; font-weight: 600;"></h4>
                            </div>
                            <div class="col-md-12 col-lg-12 col-sm-12">
                                <input type="text" id="text_Subject" class="form-control " placeholder="Plase Input subject Name..." style="max-width: 100%;" />
                            </div>
                            <div class="col-md-12 col-lg-12 col-sm-12" style="text-align: center; margin-top: 1em;">
                                <button class="btn btn-success" id="btnSubmitAddnew" data-type="ServiceCall" type="button">Confirm</button>
                                <%--btn New--%>
                                <button class="btn btn-success" id="btnSubmitSubject" type="button">Confirm</button>
                                <%--btn Edit subject(Header Name)--%>
                                <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <%--BrowseAddNew--%>
    <script type="text/javascript">
        $(document).ready(function () {
            var WorkOrder = getAllUrlParams("WorkOrder");
            var WorkOrderLineItemNumber = getAllUrlParams("WorkOrderLineItemNumber") ? getAllUrlParams("WorkOrderLineItemNumber") : "";
            var encrypt = getAllUrlParams("username");
            var Tab = getAllUrlParams("Tab")? AvtiveTab(getAllUrlParams("Tab")) :"";
            var username = GetUsername();
            let count_row = 1;
            
            if (WorkOrder) {
                $("#textWorkOrder").text(WorkOrder);
                $("#textWorkOrderLineItemNumber").val(WorkOrderLineItemNumber);
                if (WorkOrderLineItemNumber != "") {
                    $.ajax({
                        type: "post",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/Search_TB_FS_PM_CheckList") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ WorkOrder: WorkOrder, search: WorkOrderLineItemNumber }),
                        success: function (response) {
                            if (response.d.length > 0) {
                                $.each(response.d, function (index, val) {
                                    var Description = val[4];
                                    var Model = val[5];
                                    let Title = Description + " " + Model;
                                    $("#textWorkOrderLineItemNumber_Header").val(Title);
                                });
                            }
                        }
                    });
                }
                GetHeader_title(WorkOrder)
                GetTB_FS_PM_ServiceCall(WorkOrder, WorkOrderLineItemNumber)
                $(".divbtn_AddSave").show();
            } else {
                $("#Titlebrowse").text("WorkOrder");
                $("#search_box").append('<input type="text" id="search_WorkOrder" placeholder="Search Work Order, Service Contract, Customer Name....." class="form-control max-wide" autocomplete="off">');
                Search_WorkOrder('');
                $("#modalBrowseSearch").modal("show");
                $(".divbtn_AddSave").hide();
            }



            $(document).on("click", "#btnHome", function () {
                window.location.href = "./WorkOrderReporting.aspx" + "?WorkOrder=" + WorkOrder;
            });

            $(document).on("click", "#btnClear", function () {
                location.href = "./Uploading_Picture_ServiceCall.aspx" + "?username=" + encrypt;
            });

            $(document).on("click", ".Click_Image", function () {
                let image = $(this).attr("data-input-id");
                //console.log(image);
                let x = "#" + image;
                //console.log(x);
                $(x).click();
            });

            $(document).on("click", ".Browse_modal", function () {
                var fragment = '';
                var fragmentHeader = '';
                var Type = $(this).attr("data-type");
                $("#Titlebrowse").text(Type);
                $("#search_box").empty();

                if (Type == 'WorkOrder') {
                    $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search Work Order, Service Contract, Customer Name....." class="form-control max-wide" autocomplete="off">');
                    Search_WorkOrder('');
                }//End Browse1
                else if (Type == 'CheckList') {
                    $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search WorkOrder Line Item Number....." class="form-control max-wide" autocomplete="off">');
                    Search_CheckList('');
                }//End Get_Browse2

                $("#modalBrowseSearch").modal("show");
            });
            //Modal Browse

            $(document).on("click", ".selectOrder", function () {
                var Customer = $(this).closest("tr").find("td:nth-child(1)").text();
                var Subject = $(this).closest("tr").find("td:nth-child(2)").text();
                var WorkOrder = $(this).closest("tr").find("td:nth-child(3)").text();
                var SRO = $(this).closest("tr").attr("data-SRO");
                var Service_Contract = $(this).closest("tr").attr("data-Service_Contract");
                var Technician = $(this).closest("tr").attr("data-Technician");

                $("#textWorkOrder").text(WorkOrder);
                GetHeader_title(WorkOrder)
                $("#textWorkOrderLineItemNumber_Header").val('');
                $("#divUpload_CheckList").empty();
                //hide WorkOrder

                $("#Titlebrowse").text('CheckList');
                $("#textWorkOrderLineItemNumber").val('');
                $("#TBbodyBrowse").empty();
                $("#TBheaderBrowse").empty();
                $("#search_box").empty();
                $("#search_box").append('<input type="text" id="search_CheckList" placeholder="Search WorkOrder Line Item Number....." class="form-control max-wide" autocomplete="off">');
                $("#modalBrowseSearch").modal("hide");

                GetTB_FS_PM_ServiceCall(WorkOrder, '')
                $(".divbtn_AddSave").show();
                $("#btnSave_Checklist").hide();

                //Show CheckList
            });

            $(document).on("click", ".selectCheckList", function () {
                var Description = $(this).closest("tr").find("td:nth-child(1)").text();
                var Model = $(this).closest("tr").find("td:nth-child(2)").text();
                var WorkOrderLineItemNumber = $(this).closest("tr").attr("data-WorkOrderLineItemNumber")
                var WorkOrder = $("#textWorkOrder").text();
                let Title = Description + " " + Model;
                $("#textWorkOrderLineItemNumber_Header").val(Title);
                $("#textTitleCheckList").text(Title);
                $("#textWorkOrderLineItemNumber").val(WorkOrderLineItemNumber);
                $("#modalBrowseSearch").modal("hide");

                GetTB_FS_PM_ServiceCall(WorkOrder, WorkOrderLineItemNumber);

            });

            $(".btnSaveImage").on('click', function () {
                let WorkOrder = $("#textWorkOrder").text();
                let WorkOrderLineItemNumber = $("#textWorkOrderLineItemNumber").val();
                let Type = $(this).attr("data-type");
                let divId = "";
                let count_time_new = "";
                let Return_ID = "";
                let Return_WorkOrderLineItemNumber = "";
                if (Type == "CheckList") {
                    divId == "#divUpload_CheckList";
                } else if (Type == "ServiceCall") {
                    divId == "#divUpload_ServiceCall";
                }
                $(divId + ' .Checkimage ').each(function () {
                    if ($(this).val() != "") {
                        var ID = $(this).attr("data-id") ? parseInt($(this).attr("data-id")) : 0;
                        var time = $(this).attr("data-time");
                        var this_subject_id = $(this).attr("data-subject");
                        var Subject = $("#" + this_subject_id).text();
                        //Get Subject 
                        var imgName = $(this).attr("data-img-name");
                        var data = $(this)[0].files[0];
                        //console.log("ID :"+ID);
                        //console.log("time :"+time);
                        //console.log("this_subject :"+this_subject);
                        //console.log("Subject :"+Subject);
                        //console.log("time :"+data);

                        if (count_time_new != time) {
                            //Call SP_FS_PM_ServiceCall_IMG
                            $.ajax({
                                type: "post",
                                async: false,
                                url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_ServiceCall_IMG") %>",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                data: JSON.stringify({ ID: ID, WorkOrder: WorkOrder, WorkOrderLineItemNumber: WorkOrderLineItemNumber, Subject: Subject, Type: Type, username: username }),
                                success: function (response) {
                                    $.each(response.d, function (index, val) {
                                        Return_ID = val[0];
                                        Return_WorkOrderLineItemNumber = val[1];

                                    });

                                }
                            });
                            count_time_new = time;
                        }

                        //console.log("Return_ID :" + Return_ID);
                        //console.log("Return_WorkOrderLineItemNumber :" + Return_WorkOrderLineItemNumber);
                        //console.log("folder :" + folder);
                        //console.log("imgName :" + imgName);
                        //console.log("imgName :" + imgName);

                        var UpdateLineNo = $(this).attr("data-UpdateLineNo") ? $(this).attr("data-UpdateLineNo") : "";
                        //console.log("UpdateLineNo :" + UpdateLineNo);
                        //console.log("Return_WorkOrderLineItemNumber :" + Return_WorkOrderLineItemNumber);
                        let folder = "";
                        if (Type == "CheckList") {
                            folder = WorkOrder + "/ServiceCall/" + WorkOrderLineItemNumber + "/" + Return_ID;
                            imgName = WorkOrderLineItemNumber + imgName;
                            console.log("Case 1 Have Line Number");
                        } else if (Type == "ServiceCall") {
                            if (UpdateLineNo != "") {
                                folder = WorkOrder + "/ServiceCall/" + UpdateLineNo + "/" + Return_ID;
                                imgName = UpdateLineNo + imgName;
                                console.log("Case 2 Update");
                            } else {
                                folder = WorkOrder + "/ServiceCall/" + Return_WorkOrderLineItemNumber + "/" + Return_ID;
                                imgName = Return_WorkOrderLineItemNumber + imgName;
                                console.log("Case 3 AddNew");
                            }
                        }
                        console.log("folder :" + folder);
                        //console.log("------------------------")
                        insertFileToolTag(data, imgName, folder);
                        //Save File 

                    }
                    swal('Complete', 'บันทึกสำเร็จ', 'success').then(function () {
                        location.href = "./Uploading_Picture_ServiceCall.aspx" + "?username=" + encrypt + "&WorkOrder=" + WorkOrder + "&WorkOrderLineItemNumber=" + WorkOrderLineItemNumber+"&Tab="+Type;
                            
                    });
                });
                //Loop picture ServiceCall UPload


            });


            $(document).on("change", "#search_WorkOrder", function () {
                var search = $(this).val();
                Search_WorkOrder(search);
            });


            $(document).on("change", "#search_CheckList", function () {
                var search = $(this).val();
                Search_CheckList(search);
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
                                <th >Subject</th>
                                <th style="width: 15%">Work Order</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_WorkOrder_Service_only") %>",
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

            function Search_CheckList(search) {
                var WorkOrder = $("#textWorkOrder").text();
                $("#Titlebrowse").text('Search CheckList');
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
                    url: "<%= ResolveUrl("Default.aspx/Search_TB_FS_PM_CheckList") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder, search: search }),
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
                                fragment += '<tr data-WorkOrderLineItemNumber="' + WorkOrderLineItemNumber + '" >';
                                fragment += '<td><a href="javascript:void(0)" class="selectCheckList">' + Description + '</a></td>';
                                fragment += '<td><a href="javascript:void(0)" class="selectCheckList">' + Model + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                        $("#TBheaderBrowse").append(fragmentHeader);
                        $("#TBbodyBrowse").append(fragment);
                    }
                });
            }


            $(document).on("change", ".Checkimage", function () {
                var img_id = "#" + $(this).attr("data-img-id");
                console.log(img_id);
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

            $(document).on("click", ".btnDelete", function () {
                let type = $(this).attr("data-type");
                let id = $(this).attr("data-deleteID");
                let WorkOrder = $("#textWorkOrder").text();
                let WorkOrderLineItemNumber = $("#textWorkOrderLineItemNumber").val();
                //for window location
                if (type == "FromDB") {
                    let array = [];
                    let img1 = ".." + $(this).attr("data-img-1").substring(27);
                    let img2 = ".." + $(this).attr("data-img-2").substring(27);
                    let img3 = ".." + $(this).attr("data-img-3").substring(27);
                    swal({
                        title: 'ยืนยันการลบข้อมูล',
                        text: "",
                        icon: 'info',
                        buttons: {
                            cancel: true,
                            confirm: true,
                        },
                    }).then(function (confirm) {
                        if (confirm) {
                            //Delete TB_FS_PM_ServiceCall WHERE ID
                            $.ajax({
                                type: "post",
                                async: false,
                                url: "<%= ResolveUrl("Default.aspx/Delete_TB_FS_PM_ServiceCall") %>",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    data: JSON.stringify({ ID: id, }),
                                    success: function (response) {
                                        array.push(img1, img2, img3);
                                        array.forEach(path => UpLoadFileDelete(path));
                                        //Delete file 
                                        swal('Complete', 'ลบข้อมูลสำเร็จ', 'success').then(function () {
                                            location.href = "./Uploading_Picture_ServiceCall.aspx" + "?username=" + encrypt + "&WorkOrder=" + WorkOrder + "&WorkOrderLineItemNumber=" + WorkOrderLineItemNumber+"&Tab=ServiceCall";
                                        });
                                    }
                                });

                            }
                        });
                    //Delete form [TB_FS_PM_ServiceCall]
                } else if (type == "New") {
                    swal({
                        title: 'ยืนยันกาลบข้อมูล',
                        text: "",
                        icon: 'info',
                        buttons: {
                            cancel: true,
                            confirm: true,
                        },
                    }).then(function (confirm) {
                        if (confirm) {
                            swal('Complete', 'ลบข้อมูลสำเร็จ', 'success').then(function () {
                                $("#Addnew_" + id).empty();
                            });
                        }
                    });
                }
            });

            $("#btnAddnew").on('click', function () {
                $("#text_Subject").val("");
                $("#text_modalAddNew").text("Create New Subject");
                //let textHeader = $("#textWorkOrderLineItemNumber_Header").val();
                //if (textHeader != "") {
                //    $("#text_Subject").val(textHeader);
                //}
                $("#btnSubmitAddnew").show();
                $("#btnSubmitSubject").hide();
                $("#modalAddNew").modal("show");
            });

            $(document).on("click", ".btnEdit", function () {
                $("#text_modalAddNew").text("Edit Subject Name");
                var ID = $(this).attr("data-ID") ? $(this).attr("data-ID") : "";
                var this_subject_id = $(this).attr("data-subject");
                var Subject = $("#" + this_subject_id).text();
                $("#text_Subject").val(Subject);
                $("#btnSubmitSubject").attr('data-subject', this_subject_id);
                if (ID != "") {
                    $("#btnSubmitSubject").attr('data-ID', ID);
                }
                $("#btnSubmitAddnew").hide();
                $("#btnSubmitSubject").show();
                $("#modalAddNew").modal("show");
            });

            $(document).on("click", "#btnSubmitAddnew", function () {
                let Subject = $("#text_Subject").val();
                let Type = $(this).attr("data-type");
                AddNew(Subject, Type);
                $("#modalAddNew").modal("hide");
            });

            $(document).on("click", "#btnSubmitSubject", function () {
                var ID = $(this).attr("data-ID") ? $(this).attr("data-ID") : "";
                var this_subject_id = $(this).attr("data-subject");
                let Subject = $("#text_Subject").val();
                $("#" + this_subject_id).text(Subject);
                $("#modalAddNew").modal("hide");
                if (ID != "") {
                    $.ajax({
                        type: "post",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_ServiceCall_IMG") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ ID: ID, WorkOrder: '', WorkOrderLineItemNumber: '', Subject: Subject, Type: '', username: username }),
                        success: function (response) {
                            swal('Complete', 'บันทึกสำเร็จ', 'success');
                        }
                    });
                }

            });
            //btn New , Edit , Save , Delete
            function GetTB_FS_PM_ServiceCall(WorkOrder, WorkOrderLineItemNumber) {
                $("#divUpload_CheckList").empty();
                $("#divUpload_ServiceCall").empty();
                if (WorkOrderLineItemNumber != "") {
                    CheckTB_FS_PM_ServiceCall(WorkOrder, WorkOrderLineItemNumber, 'CheckList');

                } if (WorkOrder != "") {
                    CheckTB_FS_PM_ServiceCall(WorkOrder, '', 'ServiceCall');

                }
            }

            function CheckTB_FS_PM_ServiceCall(WorkOrder, WorkOrderLineItemNumber, FromType) {
                let Subject = $("#textWorkOrderLineItemNumber_Header").val();
                if (FromType == "CheckList") {
                    $("#btnSave_Checklist").show();
                }
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GetTB_FS_PM_ServiceCall") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder, WorkOrderLineItemNumber: WorkOrderLineItemNumber, Type: FromType }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[WorkOrder],[Subject],[Service_Call_Before_IMG],[Service_Call_During_IMG],[Service_Call_After_IMG],[Update_By],[WorkOrderLineItemNumber],[Type]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Subject = val[2];
                                var Service_Call_Before_IMG = val[3] ? img_Add_String(val[3]) : "images/Upload.png";
                                var Service_Call_During_IMG = val[4] ? img_Add_String(val[4])  : "images/Upload.png";
                                var Service_Call_After_IMG = val[5] ? img_Add_String(val[5]) : "images/Upload.png";
                                var Update_By = val[6];
                                var WorkOrderLineItemNumber = val[7];
                                var Type = val[8];
                                SetdivUpload(ID, Subject, Service_Call_Before_IMG, Service_Call_During_IMG, Service_Call_After_IMG, WorkOrderLineItemNumber, Type);
                            });
                        } else {
                            if (FromType == "CheckList") {
                                AddNew(Subject, 'CheckList')
                                console.log("Add Empty checklist")
                            }
                        }

                    }
                });
            }
            function AddNew(Subject, Type) {
                // console.log(count_row);
                let fragment = "";
                if (Type == "CheckList") {
                    fragment += `
                    <div class="col-md-12 col-xs-12" id="Addnew_`+ count_row + `" style="paddding:0px">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="col-md-8 col-xs-12" style="text-align: left; font-size: 30px;">
                                                <sapn>
                                                     <span class="font-header" id="subject_`+ count_row + `" >` + Subject + `</span>
                                                     <button class="btn btn-default  btnEdit" data-subject="subject_`+ count_row + `" type="button">
                                                        <i class="glyphicon glyphicon-pencil"></i>  
                                                    </button>
                                                </span>
                                            </div>
                                            <div class="col-md-4 col-xs-12" style="text-align: right">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12" style="paddding:0px">
                                            <div class="row">
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <div class="row" style="margin-bottom: 2px; margin-top: 3px;">
                                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_image`+ count_row + `_1">
                                                                                <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_1" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px;" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">Before</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_2">
                                                                                <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_2" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">Repearing</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_3">
                                                                                <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_3" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">After</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="display: none">
                                                                <input type="file" id="Input_image`+ count_row + `_1" class="Checkimage" data-id="" data-img-id="image` + count_row + `_1" data-Subject="subject_` + count_row + `" data-time="` + count_row + `" data-img-name="_Before">
                                                                <input type="file" id="Input_Image`+ count_row + `_2" class="Checkimage" data-id="" data-img-id="image` + count_row + `_2" data-Subject="subject_` + count_row + `" data-time="` + count_row + `" data-img-name="_Repearing">
                                                                <input type="file" id="Input_Image`+ count_row + `_3" class="Checkimage" data-id="" data-img-id="image` + count_row + `_3" data-Subject="subject_` + count_row + `" data-time="` + count_row + `" data-img-name="_After">
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
                    </div>
                    `
                    $("#divUpload_CheckList").append(fragment);
                } else if (Type == "ServiceCall") {
                    fragment += `
                    <div class="col-md-12 col-xs-12" id="Addnew_`+ count_row + `" style="paddding:0px">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="col-md-8 col-xs-12" style="text-align: left; font-size: 30px;">
                                                <sapn>
                                                     <span class="font-header" id="subject_`+ count_row + `" >` + Subject + `</span>
                                                     <button class="btn btn-default  btnEdit" data-subject="subject_`+ count_row + `" type="button">
                                                        <i class="glyphicon glyphicon-pencil"></i>  
                                                    </button>
                                                </span>
                                            </div>
                                            <div class="col-md-4 col-xs-12" style="text-align: right">
                                                <button data-deleteID="`+ count_row + `" data-type="New"  class="btn btn-danger btnDelete" type="button" style="margin-top: 1em;margin-left:1em;">
                                                            <i class="glyphicon glyphicon-trash"></i>  </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body" >
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12" style="paddding:0px">
                                            <div class="row">
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <div class="row" style="margin-bottom: 2px; margin-top: 3px;">
                                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_image`+ count_row + `_1">
                                                                                <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_1" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px;" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">Before</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_2">
                                                                                <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_2" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">Repearing</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 col-sm-12 col-xs-12">
                                                                        <div class="main-img-preview" style="text-align: center;">
                                                                            <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_3">
                                                                                <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_3" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                            </a>
                                                                            <p style="font-size: 18px;">After</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="display: none">
                                                                <input type="file" id="Input_image`+ count_row + `_1" class="Checkimage" data-id="" data-img-id="image` + count_row + `_1" data-Subject="subject_` + count_row + `" data-time="` + count_row + `" data-img-name="_Before">
                                                                <input type="file" id="Input_Image`+ count_row + `_2" class="Checkimage" data-id="" data-img-id="image` + count_row + `_2" data-Subject="subject_` + count_row + `" data-time="` + count_row + `" data-img-name="_Repearing">
                                                                <input type="file" id="Input_Image`+ count_row + `_3" class="Checkimage" data-id="" data-img-id="image` + count_row + `_3" data-Subject="subject_` + count_row + `" data-time="` + count_row + `" data-img-name="_After">
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
                    </div>
                    `
                    $("#divUpload_ServiceCall").append(fragment);
                }
                $("#divUpload").append(fragment);
                count_row++
            }
            function SetdivUpload(ID, Subject, Service_Call_Before_IMG, Service_Call_During_IMG, Service_Call_After_IMG, WorkOrderLineItemNumber, Type) {
                
                let fragment = "";
                if (Type == "CheckList") {
                 fragment = `
                                <div class="col-md-12 col-xs-12">
                                    <div class="panel-group">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="col-md-8 col-xs-12" style="text-align: left; font-size: 30px;">
                                                            <sapn>
                                                                 <span class="font-header"  id="subject_`+ count_row + `" >` + Subject + `</span>
                                                                <button class="btn btn-default btnEdit"  data-id="`+ ID + `" data-subject="subject_` + count_row + `" type="button" >
                                                                    <i class="glyphicon glyphicon-pencil"></i>  
                                                                </button>
                                                            </span>
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
                                                                                        <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_image`+ count_row + `_1">
                                                                                            <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_1" src="` + Service_Call_Before_IMG + `" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px;" alt="IMAGE" />
                                                                                        </a>
                                                                                        <p style="font-size: 18px;">Before</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12">
                                                                                    <div class="main-img-preview" style="text-align: center;">
                                                                                        <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_2">
                                                                                            <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_2" src="` + Service_Call_During_IMG + `" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                                        </a>
                                                                                        <p style="font-size: 18px;">Repearing</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12">
                                                                                    <div class="main-img-preview" style="text-align: center;">
                                                                                        <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_3">
                                                                                            <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_3" src="` + Service_Call_After_IMG + `" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                                        </a>
                                                                                        <p style="font-size: 18px;">After</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div style="display: none">
                                                                            <input type="file" id="Input_image`+ count_row + `_1" class="Checkimage" data-id="` + ID + `" data-img-id="image` + count_row + `_1" data-Subject="subject_` + count_row + ` "data-UpdateLineNo="` + WorkOrderLineItemNumber + `" data-time="` + count_row + `" data-img-name="_Before">
                                                                            <input type="file" id="Input_Image`+ count_row + `_2" class="Checkimage" data-id="` + ID + `" data-img-id="image` + count_row + `_2" data-Subject="subject_` + count_row + ` "data-UpdateLineNo="` + WorkOrderLineItemNumber + `" data-time="` + count_row + `" data-img-name="_Repearing">
                                                                            <input type="file" id="Input_Image`+ count_row + `_3" class="Checkimage" data-id="` + ID + `" data-img-id="image` + count_row + `_3" data-Subject="subject_` + count_row + ` "data-UpdateLineNo="` + WorkOrderLineItemNumber + `" data-time="` + count_row + `" data-img-name="_After">
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
                                `
                    $("#divUpload_CheckList").append(fragment);
                } else if (Type == "ServiceCall") {
                 fragment = `
                                <div class="col-md-12 col-xs-12">
                                    <div class="panel-group">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="col-md-8 col-xs-12" style="text-align: left; font-size: 30px;">
                                                            <sapn>
                                                                 <span class="font-header"  id="subject_`+ count_row + `" >` + Subject + `</span>
                                                                <button class="btn btn-default btnEdit"  data-id="`+ ID + `" data-subject="subject_` + count_row + `" type="button" >
                                                                    <i class="glyphicon glyphicon-pencil"></i>  
                                                                </button>
                                                            </span>
                                                        </div>
                                                        <div class="col-md-4 col-xs-12" style="text-align: right">
                                                             <button data-deleteID="`+ ID + `" data-type="FromDB" data-img-1="` + Service_Call_Before_IMG + `" data-img-2="` + Service_Call_During_IMG + `" data-img-3="` + Service_Call_After_IMG + `" class="btn btn-danger btnDelete" type="button" style="margin-top: 1em;margin-left:1em;">
                                                            <i class="glyphicon glyphicon-trash"></i>  </button>
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
                                                                                        <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_image`+ count_row + `_1">
                                                                                            <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_1" src="` + Service_Call_Before_IMG + `" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px;" alt="IMAGE" />
                                                                                        </a>
                                                                                        <p style="font-size: 18px;">Before</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12">
                                                                                    <div class="main-img-preview" style="text-align: center;">
                                                                                        <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_2">
                                                                                            <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_2" src="` + Service_Call_During_IMG + `" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                                        </a>
                                                                                        <p style="font-size: 18px;">Repearing</p>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4 col-sm-12 col-xs-12">
                                                                                    <div class="main-img-preview" style="text-align: center;">
                                                                                        <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image`+ count_row + `_3">
                                                                                            <img class="d-block rounded img-thumbnail" id="image`+ count_row + `_3" src="` + Service_Call_After_IMG + `" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 350px" alt="IMAGE" />
                                                                                        </a>
                                                                                        <p style="font-size: 18px;">After</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div style="display: none">
                                                                            <input type="file" id="Input_image`+ count_row + `_1" class="Checkimage" data-id="` + ID + `" data-img-id="image` + count_row + `_1" data-Subject="subject_` + count_row + ` "data-UpdateLineNo="` + WorkOrderLineItemNumber + `" data-time="` + count_row + `" data-img-name="_Before">
                                                                            <input type="file" id="Input_Image`+ count_row + `_2" class="Checkimage" data-id="` + ID + `" data-img-id="image` + count_row + `_2" data-Subject="subject_` + count_row + ` "data-UpdateLineNo="` + WorkOrderLineItemNumber + `" data-time="` + count_row + `" data-img-name="_Repearing">
                                                                            <input type="file" id="Input_Image`+ count_row + `_3" class="Checkimage" data-id="` + ID + `" data-img-id="image` + count_row + `_3" data-Subject="subject_` + count_row + ` "data-UpdateLineNo="` + WorkOrderLineItemNumber + `" data-time="` + count_row + `" data-img-name="_After">
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
                                `
                    $("#divUpload_ServiceCall").append(fragment);
                }

                count_row++
            }
            function UpLoadFileDelete(path) {
                var formData = new FormData();
                formData.append('folderName', path);
                $.ajax({
                    type: 'post',
                    url: './UpLoadfileDelete.ashx',
                    //ต้องสร้างใหม่เป็นของ PATAG
                    data: formData,
                    async: false,
                    success: function (status) {
                        //alert("Upload Complete");
                    },
                    processData: false,
                    contentType: false,
                    error: function () {
                    }
                });
            }
            function img_Add_String(img) {
                let date = new Date().format("ddMMyyyyhhmmss");
                let text = img + '?randomnumber=' + date;
                //console.log(text);
                //this function for Reset Log
                return text;
            }
            function AvtiveTab(Tab) {
                if (Tab == "CheckList") {
                    $('#nav_ServiceCall').removeClass('active');
                    $('#nav_Checklist').addClass('active');
                    $('#TAB2').removeClass('active');
                    $('#TAB2').addClass('fade');
                    $('#TAB1').removeClass('fade');
                    $('#TAB1').addClass('active');
                } else if (Tab == "ServiceCall") {
                    $('#nav_Checklist').removeClass('active');
                    $('#nav_ServiceCall').addClass('active');
                    $('#TAB1').removeClass('active');
                    $('#TAB1').addClass('fade');
                    $('#TAB2').removeClass('fade');
                    $('#TAB2').addClass('active');
                }
            }
        });
    </script>
</asp:Content>
