<%@ Page Title="WorkOrderReporting" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkOrderReporting.aspx.cs" Inherits="ServiceReport_Rewirte.WorkOrderReporting" %>

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

        .btn-PDF-dowlaod {
            background-color: #a30000;
            color: ghostwhite;
            border: none;
        }

            .btn-PDF-dowlaod:hover {
                background-color: #b71c1c;
                color: ghostwhite;
            }
    </style>



    <div style="overflow: hidden; width: 0; height: 0;">

        <asp:TextBox runat="server" ID="snssWorkOrder" />
        <asp:TextBox runat="server" ID="snssReport_ID" />
    </div>



    <div class="page-header">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-8 col-xs-8" style="text-align: left; font-size: 30px;">
                    <span>Work Order Information
                    <button id="btnSearchWorkOrder" class="btn btn-secondary" type="button" data-toggle="modal">
                        <i class="glyphicon glyphicon-search"></i>
                    </button>
                    </span>
                </div>
                <div class="col-md-4 col-xs-4" style="text-align: right">
                </div>
            </div>
        </div>
    </div>
    <!----End Header---->
    <div class="panel-group">
        <div class="panel">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <div class="row" style="margin-bottom: 2rem;">
                            <div class="col-md-12">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-warning" style="float: right;" id="btnExport">Export Excel</button>
                                    <asp:Button runat="server" class="btn btn-warning" ID="btnprint_WorkOrder" Style="float: right; display: none" Text="Report" OnClick="print_WorkOrder" UseSubmitBehavior="false" />
                                    <%--<button type="button" class="btn btn-warning" style="float: right; display: none;" id="btnModalReport">Export Excel</button>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-bottom: 2rem;">
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Work Order No. :</label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="textWorkOrder" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-bottom: 2rem;">
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Service Contract :</label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="textService_Contract" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-bottom: 2rem;">
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">SRO No. :</label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="textSRO" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-bottom: 2rem;">
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Customer Name :</label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="textCustomerName" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-bottom: 2rem;">
                            <div class="col-md-12">
                                <div class="col-md-2">
                                    <label class="control-label">Techician's Name :</label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="textTechnician" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 4rem;">
                            <div class="col-md-12">
                                <div class="col-md-6 col-xs-12" style="margin-top: 0.5em;">
                                    <button type="button" class="btn btn-block  btn-default" id="btnTitle"
                                        style="min-width: 100%; height: 80px; font-size: 24px; font-weight: bold;">
                                        Title
                                    </button>
                                </div>

                                <div class="col-md-6 col-xs-12" style="margin-top: 0.5em;">
                                    <button type="button" class="btn btn-block btn-default" id="btnSummary"
                                        style="min-width: 100%; height: 80px; font-size: 24px; font-weight: bold;">
                                        Summary
                                    </button>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="ModalSearchWorkOrder" role="dialog" data-backdrop="static" data-keyboard="false" style="align-content: center;">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                        <div class="col-md-9 col-lg-9 col-sm-12">
                            <h4 class="modal-title">Search Work Order</h4>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="form-group col-md-12 col-lg-12 col-sm-12">
                            <input type="text" id="textSearchWorkOrder" placeholder="Search Work Order, Service Contract, Customer Name..." title="Type in a name" class="form-control max-wide" autocomplete="off">
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <table id="TbWorkOrder" class="table table-striped table-bordered table-responsive">
                        <thead>
                            <tr class="header">
                                <th>Customer Name</th>
                                <th>Service Contract</th>
                                <th style="width: 30%">Work Order</th>
                            </tr>
                        </thead>
                        <tbody id='TBbodyUserAd'>
                            <tr>
                                <td>Mr.A</td>
                                <td>A</td>
                                <td>001</td>
                            </tr>
                            <tr>
                                <td>Mr.B</td>
                                <td>B</td>
                                <td>002</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <%--<div class="modal fade" id="ModalReport" role="dialog" data-backdrop="static" data-keyboard="false" style="align-content: center;">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                        <div class="col-md-9 col-lg-9 col-sm-12">
                            <h4 class="modal-title">Report PDF</h4>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">

                            <div class="row">

                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="control-label text-dowlaod">Create New Report :</label><br />
                                    <button type="button" class="btn btn-lg btn-warning form-control" style="float: right; padding-bottom: 2em;" id="btnCreateExport">Create</button>

                                    <asp:Button runat="server" class="btn btn-warning" ID="btnprint_WorkOrder" Style="float: right; display: none" Text="Report" OnClick="print_WorkOrder" UseSubmitBehavior="false" />

                                </div>

                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <label class="control-label text-dowlaod">List Report :</label><br />
                                    <button type="button" class="btn  btn-lg btn-warning form-control" style="float: right; padding-bottom: 2em;" id="btnListReport">show</button>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <div class="modal fade" id="ModalListReport" role="dialog" data-backdrop="static" data-keyboard="false" style="align-content: center;">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                        <div class="col-md-9 col-lg-9 col-sm-12">
                            <h4 class="modal-title">List Report</h4>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em;">
                    <table id="TbListReport" class="table table-striped table-bordered table-responsive">
                        <thead>
                            <tr class="header">
                                <th>Date</th>
                                <th>Crate By</th>
                                <th>Preview</th>
                                <th>Download</th>
                            </tr>
                        </thead>
                        <tbody id='TBbodyReport'>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>




    <script type="text/javascript">

        $(document).ready(function () {

            var WorkOrder = getAllUrlParams("WorkOrder");
            var encrypt = getAllUrlParams("username");
            var username = GetUsername();
            if (WorkOrder) {
                console.log('have')
                GetWorkOrder(WorkOrder);
                $("#btnExport").show();
                //$("#MainContent_btnprint_WorkOrder").show();
            } else {
                console.log('dont')
                Search_GetOrder("");
            }

            $(document).on("click", "#btnSearchWorkOrder", function () {
                Search_GetOrder('');
                $("#textSearchWorkOrder").val("");
                $("#ModalSearchWorkOrder").modal("show");
            });

            $(document).on("click", "#btnExport", function () {
                let WorkOrder = $("#textWorkOrder").val();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_FS_PM_ListReport") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder, username: username }),
                    success: function (response) {

                        if (response.d.length > 0) {
                            var Report_ID = response.d;
                            $("#MainContent_snssReport_ID").val(Report_ID);
                            $("#MainContent_btnprint_WorkOrder").click();
                            //setTimeout(function () {
                            //    swal('Complete', 'สร้างไฟล์ Report สำเร็จ', 'success');
                            //}, 3000);
                        }
                    }
                });
            });

            $(document).on("click", "#btnListReport", function () {
                var fragment = "";
                let WorkOrder = $("#textWorkOrder").val();
                $("#TBbodyReport").empty();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_ListReport") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[WorkOrder],[Path],[Create_By],[Create_Date]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Path = val[2];
                                var Create_By = val[3];
                                var Create_Date = val[4];

                                fragment += '<tr >';
                                fragment += '<td>' + Create_Date + '</td>';
                                fragment += '<td>' + Create_By + '</td>';
                                fragment += '<td width="10%"><a href=' + Path + ' target="_blank"><button class="btn btn-info"  type="button" >Preview </button></a></td>';
                                fragment += '<td width="10%"><a href=' + Path + ' download="'+Path+'"><button class="btn btn-PDF-dowlaod"  type="button" >Download</button></a></td>';
                                fragment += '</tr>';
                            });
                        }
                        $("#TBbodyReport").append(fragment);
                        $("#ModalListReport").modal("show");
                    }
                });
            });

            $(document).on("click", ".selectOrder", function () {
                var Customer = $(this).closest("tr").find("td:nth-child(1)").text();
                var Service_Contract = $(this).closest("tr").find("td:nth-child(2)").text();
                var WorkOrder = $(this).closest("tr").find("td:nth-child(3)").text();
                var SRO = $(this).closest("tr").attr("data-SRO");
                var Technician = $(this).closest("tr").attr("data-Technician");
                $("#textCustomerName").val(Customer);
                $("#textService_Contract").val(Service_Contract);
                $("#textWorkOrder").val(WorkOrder);
                $("#textSRO").val(SRO);
                $("#textTechnician").val(Technician);
                $("#MainContent_snssWorkOrder").val(WorkOrder);
                $("#btnExport").show();
                //$("#MainContent_btnprint_WorkOrder").show();
                $("#ModalSearchWorkOrder").modal("hide");
            });

            $(document).on("click", "#btnTitle", function () {
                let workOrder = $("#textWorkOrder").val();
                if (workOrder != "") {
                    window.location.href = "./Information.aspx" + "?username=" + encrypt + "&WorkOrder=" + workOrder;
                } else {
                    swal('กรุณาเลือกเลข WorkOrder', '', 'error');
                }
            });

            $(document).on("click", "#btnSummary", function () {
                let workOrder = $("#textWorkOrder").val();
                if (workOrder != "") {
                    window.location.href = "./Summary.aspx" + "?username=" + encrypt + "&WorkOrder=" + workOrder;
                } else {
                    swal('กรุณาเลือกเลข WorkOrder', '', 'error');
                }
            });


            $(document).on("change", "#textSearchWorkOrder", function () {
                var search = $(this).val();
                Search_GetOrder(search);
            });

        });
        function Search_GetOrder(search) {
            $("#TBbodyUserAd").empty();
            var fragment = "";
            $.ajax({
                type: "post",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_WorkOrder") %>",
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
                            var WorkOrder_Record_Type = val[13];

                            fragment += '<tr data-SRO="' + SRO + '" data-Technician="' + Technician + '" >';
                            fragment += '<td><a href="javascript:void(0)" class="selectOrder">' + Customer + '</a></td>';
                            fragment += '<td><a href="javascript:void(0)" class="selectOrder">' + Service_Contract + '</a></td>';
                            fragment += '<td><a href="javascript:void(0)" class="selectOrder">' + WorkOrder + '</a></td>';
                            fragment += '</tr>';
                        });
                    }
                    $("#TBbodyUserAd").append(fragment);
                    $("#ModalSearchWorkOrder").modal("show");
                }
            });
        }

        function GetWorkOrder(search) {
            $.ajax({
                type: "post",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_WorkOrder") %>",
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
                            var WorkOrder_Record_Type = val[13];

                            $("#textCustomerName").val(Customer);
                            $("#textService_Contract").val(Service_Contract);
                            $("#textWorkOrder").val(WorkOrder);
                            $("#textSRO").val(SRO);
                            $("#textTechnician").val(Technician);
                        });
                    }
                }
            });
        }



    </script>

</asp:Content>
