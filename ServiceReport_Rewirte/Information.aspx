<%@ Page Title="Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="ServiceReport_Rewirte.Information" %>

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
                    <a href="javascript:void(0)" id="btnHome"   style=" font-size: 34px !important;">Home  </a>
                    <span>> Report Title</span>
                   <%-- <span>Report Title
                    <button id="btnHome" class="btn btn-default" type="button" data-toggle="modal">
                        <i class="glyphicon glyphicon-home"></i>
                    </button></span>--%>
                </div>
                <div class="col-md-4 col-xs-4" style="text-align: right">
                      <%--<button id="" class="btn btn-info" type="button" style="margin-top: 0.5em;">Save</button>--%>
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

                        <div class="col-md-6 col-xs-12">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <%--   <div class="panel-heading">
                                        <h3 style="margin-left: 5px;">ข้อมูลรถยนต์</h3>
                                    </div>--%>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12 col-xs-12">
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">CustomerName. :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textCustomerName" class="form-control" style="min-width: 100%" autocomplete="off" disabled/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Address :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textAddress" class="form-control" style="min-width: 100%" autocomplete="off" disabled/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Machine Detail. :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <textarea   id="textMachine_Detail" class="form-control" style="min-width: 100%" rows="4" cols="50" disabled></textarea>
                                                            <%--<input type="text" id="textMachine_Detail" class="form-control" style="min-width: 100%" autocomplete="off" disabled/>--%>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Techincian's Name :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textTechnician" class="form-control" style="min-width: 100%" autocomplete="off" disabled/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Report by :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textReport_By" class="form-control" style="min-width: 100%" autocomplete="off" disabled/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Checked by :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textChecked_By" class="form-control" style="min-width: 100%" autocomplete="off" disabled/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Date :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textDate" class="form-control" style="min-width: 100%" autocomplete="off" disabled/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--Customer--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-6 col-xs-12 ">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="row CssSetHightCompressor">
                                            <div class="col-md-12 col-xs-12">
                                                <div class="row" style="margin-bottom: 2rem; display:none">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">ID_information :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textID_information" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Compressor operating hour :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textCompressor_Operating_Hour" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Discharge Pressure :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textDischarge_Pressure" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Suction Pressure :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textSunction_Pressure" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Oil Pressure :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textOil_Pressure" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Freezing Time per Cycle (include defrost) :</label>

                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textFreezing_Time_Per_Cycle" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-12">
                                                            <label class="control-label">Ice Capacity :</label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" id="textIce_Capacity" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--Compressor--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--End col-6 / col-6--%>

                        <div class="col-md-12 col-xs-12">
                            <div class="col-md-12 col-xs-12">
                                <div class="row">
                                    <div class="panel-group">
                                        <div class="panel panel-default">
                                            <%--     <div class="panel-heading">
                                            <h3 style="margin-left: 5px;">ข้อมูลรถยนต์</h3>
                                        </div>--%>
                                            <div class="panel-body">
                                                <div class="row">

                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="col-md-4 col-xs-4" style="text-align: left;">
                                                        <label class="control-label">Spare part Recommend :</label>
                                                        </div>

                                                        <div class="col-md-8 col-xs-8" style="text-align: right">
                                                            <%--<button id="" class="btn btn-success" type="button">+</button>--%>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-xs-12" style="margin-top:5px">
                                                        <table id="TableSparePart_Recommend" class="table table-hover table-bordered" style="width: 100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>Item</th>
                                                                    <th>Description/Model</th>
                                                                    <th>Size</th>
                                                                    <th>Qty</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="TBbodySparePart_Recommend"></tbody>
                                                      <%--      <tr>
                                                                <td>A001</td>
                                                                <td>Machine Model AXZ1022</td>
                                                                <td>15"</td>
                                                                <td>3</td>
                                                            </tr>
                                                            <tr>
                                                                <td>A002</td>
                                                                <td>ท่อAVC</td>
                                                                <td>3เมตร</td>
                                                                <td>10</td>
                                                            </tr>--%>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--End col-12--%>

                        <div class="col-md-12 col-xs-12">
                            <div class="col-md-12 col-xs-12">
                                <div class="row">
                                    <div class="panel-group">
                                        <div class="panel panel-default">
                                            <%--     <div class="panel-heading">
                                            <h3 style="margin-left: 5px;">ข้อมูลรถยนต์</h3>
                                        </div>--%>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                            <label class="control-label">Suggestion & Summary :</label>
                                                            <textarea   id="" class="form-control" style="min-width: 100%" rows="4" cols="50" ></textarea>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--End col-12--%>
                </div>

            </div>
            <%--End col-12--%>
        </div>
    </div>
    </div>
      <script type="text/javascript">

        $(document).ready(function () {
            var WorkOrder = getAllUrlParams("WorkOrder");
            var encrypt = getAllUrlParams("username");
            var username = GetUsername();

            //alert(WorkOrder);
            VW_FS_PM_WorkOrder_Report_Title(WorkOrder)
            TB_FS_PM_Sparepart(WorkOrder)

            

            $(document).on("click", "#btnHome", function () {
                window.location.href = "./WorkOrderReporting.aspx?username" + encrypt + "&WorkOrder=" + WorkOrder;
            });

          });

          
        function VW_FS_PM_WorkOrder_Report_Title(WorkOrder) {
            $.ajax({
                type: "post",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/VW_FS_PM_WorkOrder_Report_Title") %>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ WorkOrder: WorkOrder }),
                success: function (response) {
                    if (response.d.length > 0) {
                        $.each(response.d, function (index, val) {
                            //[WorkOrder], [Subject], [Start_Date], [End_Date], [Customer]
                            //    , [Address], [Machine_Data], [Technician], [Report_By]
                            //    , [Checked_By], [SRO], [Service_Contract]
                            //    , [ID_information], [Compressor_Operating_Hour]
                            //    , [Oil_Pressure], [Discharge_Pressure], [Freezing_Time_Per_Cycle]
                            //    , [Sunction_Pressure], [Ice_Capacity], [Suggestion_Summary]
                            var WorkOrder = val[0];
                            var Subject = val[1];
                            var Start_Date = val[2];
                            var End_Date = val[3];
                            var Customer = val[4];
                            var Address = val[5];
                            var Machine_Data = val[6];
                            var Technician = val[7];
                            var Report_By = val[8];
                            var Checked_By = val[9];
                            var SRO = val[10];
                            var Service_Contract = val[11];
                            var ID_information = val[12];
                            var Compressor_Operating_Hour = val[13];
                            var Oil_Pressure = val[14];
                            var Discharge_Pressure = val[15];
                            var Freezing_Time_Per_Cycle = val[16];
                            var Sunction_Pressure = val[17];
                            var Ice_Capacity = val[18];
                            var Suggestion_Summary = val[19];

                            $("#textCustomerName").val(Customer)
                            $("#textAddress").val(Address)
                            $("#textMachine_Detail").val(Machine_Data)
                            $("#textMachine_Detail").val(Machine_Data)
                            $("#textTechnician").val(Technician)
                            $("#textChecked_By").val(Checked_By)
                            $("#textDate").val(Start_Date)
                            $("#textID_information").val(ID_information)
                            $("#textCompressor_Operating_Hour").val(Compressor_Operating_Hour)
                            $("#textDischarge_Pressure").val(Discharge_Pressure)
                            $("#textSunction_Pressure").val(Sunction_Pressure)
                            $("#textOil_Pressure").val(Oil_Pressure)
                            $("#textFreezing_Time_Per_Cycle").val(Freezing_Time_Per_Cycle)
                            $("#textIce_Capacity").val(Ice_Capacity)
                        });
                    }
                }
            });
        }

          
        function TB_FS_PM_Sparepart(WorkOrder) {
            $("#TBbodySparePart_Recommend").empty();
            var fragment = "";
            $.ajax({
                type: "post",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_Sparepart") %>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ WorkOrder: WorkOrder }),
                success: function (response) {
                    if (response.d.length > 0) {
                        $.each(response.d, function (index, val) {
                            //[ID],[WorkOrder],[Item],[Item_Desc],[Qty],[Item_Size]
                            var ID = val[0];
                            var WorkOrder = val[1];
                            var Item = val[2];
                            var Item_Desc = val[3];
                            var Qty = val[4];
                            var Item_Size = val[5];
                            
                            fragment += '<tr>';
                            fragment += '<td>' + Item + '</td>';
                            fragment += '<td>' + Item_Desc + '</td>';
                            fragment += '<td>' + Item_Size + '</td>';
                            fragment += '<td>' + Qty + '</td>';
                            fragment += '</tr>';
                        });
                    }
                    $("#TBbodySparePart_Recommend").append(fragment);
                    $("#ModalSearchWorkOrder").modal("show");
                }
            });
        }
      </script>
</asp:Content>
