<%@ Page Title="Summary" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="ServiceReport_Rewirte.Summary" %>

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

        @media (max-width: 768px) {
            #modalShowImageSize {
                width: 95% !important;
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
                    <a href="javascript:void(0)" id="btnHome" style="font-size: 34px !important;">Home  </a>
                    <span>> Report Summary</span>
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
        <div class="panel nav-tab panel-default" style="margin-top: 2em;">
            <ul class="nav nav-tabs">
                <li class="nav-item active">
                    <a href="#TAB1" class="nav-link" role="tab" data-toggle="tab">Summary</a>
                </li>
                <li class="nav-item">
                    <a href="#TAB2" class="nav-link" data-toggle="tab" role="tab">Checklist</a>
                </li>
            </ul>

            <div class="panel-body" style="margin-top: 1em;">
                <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="TAB1">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 style="margin-left: 5px;">1 Refrigeration Piping and Value Check Leak</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12">
                                                    <div class="row">
                                                        <div class="col-md-12 col-xs-12">
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Description. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textRefrigeration_Piping" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Check poin Result :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textRefrigeration_Piping_Result" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Solve. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textRefrigeration_Piping_Solve" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Remark/Suggestion :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <textarea id="textRefrigeration_Piping_Remark_Suggestion" class="form-control" style="min-width: 100%" rows="4" cols="50"></textarea>
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
                                <%--1 Refrigeration Piping and Value Check Leak--%>

                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 style="margin-left: 5px;">2 Electrical Current and Motor Magnetic Checking</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12">

                                                    <div class="row">
                                                        <div class="col-md-12 col-xs-12">
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Description. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textElectrical_Current_Description" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Model Result :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textElectrical_Current_Result" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Solve. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textElectrical_Current_Solve" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Remark/Suggestion :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <textarea id="textElectrical_Current_Remark" class="form-control" style="min-width: 100%" rows="4" cols="50"></textarea>
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
                                <%--2 Electrical Current and Motor Magnetic Checking--%>
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 style="margin-left: 5px;">3 Package Compressor Checking</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12">
                                                    <div class="row">
                                                        <div class="col-md-12 col-xs-12">
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Description. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_Compressor_Description" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Check Point Result :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_Compressor_Result" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Solve. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_Compressor_Solve" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Remark/Suggestion :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <textarea id="textPackage_Compressor_Remark" class="form-control" style="min-width: 100%" rows="4" cols="50"></textarea>
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
                                <%--3 Package Compressor Checking--%>
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 style="margin-left: 5px;">4 Package Freezer Checking</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12">
                                                    <div class="row">
                                                        <div class="col-md-12 col-xs-12">
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Description. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_Freezer_Description" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Check Point Result :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_Freezer_Result" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Solve. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_Freezer_Solve" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Remark/Suggestion :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <textarea id="textPackage_Freezer_Remark" class="form-control" style="min-width: 100%" rows="4" cols="50"></textarea>
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
                                <%--4 Package Freezer Checking--%>

                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 style="margin-left: 5px;">5 Package EVAP/Condenser Checking</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12">
                                                    <div class="row">
                                                        <div class="col-md-12 col-xs-12">
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Description. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_EVAP_Condenser_Description" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Check Point Result :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_EVAP_Condenser_Result" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Solve. :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" id="textPackage_EVAP_Condenser_Solve" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row" style="margin-bottom: 2rem;">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12">
                                                                        <label class="control-label">Remark/Suggestion :</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <textarea id="textPackage_EVAP_Condenser_Remark" class="form-control" style="min-width: 100%" rows="4" cols="50"></textarea>
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
                                <%--5 Package EVAP/Condenser Checking--%>
                            </div>
                            <%--End col-12--%>
                        </div>
                        <%--End col-12--%>
                    </div>
                    <!--================End Tab 1====================-->
                    <div class="tab-pane fade" role="tabpanel" id="TAB2">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 style="margin-left: 5px;">Checklist</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-bordered" id="tableChecklist">
                                                    <thead>
                                                        <tr>
                                                            <th>Main Point</th>
                                                            <th>Description</th>
                                                            <th>Checklist</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="ListChecklist">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--================End Tab 2====================-->
                </div>
            </div>
        </div>
    </div>


    
    

<div class="modal fade" id="modalShowImage" role="dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-xl" id="modalShowImageSize" style="width:60%">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                    <div class="col-md-9 col-lg-9 col-sm-12">
                        <h4 id="TitleShowImage" class="modal-title">Text</h4>
                    </div>
                    <div class="col-md-3 col-lg-3 col-sm-12" style="text-align: right;">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
            <div class="modal-body" style="overflow-y: auto;">

                <div class="row" style="margin-bottom: 2px; margin-top: 3px;">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="main-img-preview" style="text-align: center;">
                                <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_image1_1">
                                    <img class="d-block rounded img-thumbnail" id="image1_1" src="images/NonUpload.png" onerror="this.onerror=null; this.src='images/NonUpload.png'" style="height: 350px;" alt="IMAGE" />
                                </a>
                                <p style="font-size: 18px;">Before</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="main-img-preview" style="text-align: center;">
                                <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image1_2">
                                    <img class="d-block rounded img-thumbnail" id="image1_2" src="images/NonUpload.png" onerror="this.onerror=null; this.src='images/NonUpload.png'" style="height: 350px" alt="IMAGE" />
                                </a>
                                <p style="font-size: 18px;">Repearing</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="main-img-preview" style="text-align: center;">
                                <a href="javascript:void(0)" class="Click_Image" data-input-id="Input_Image1_3">
                                    <img class="d-block rounded img-thumbnail" id="image1_3" src="images/NonUpload.png" onerror="this.onerror=null; this.src='images/NonUpload.png'" style="height: 350px" alt="IMAGE" />
                                </a>
                                <p style="font-size: 18px;">After</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-bottom: 2px; margin-top: 3px;">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div style="text-align: center;margin-top:2em">
                                <a  id="btnLinkUploadImage" target="_blank" >
                                    <button type="button" class="btn btn-info form-control">Upload Image</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--Browse_modal--%>




    <script type="text/javascript">
        $(document).ready(function () {
            var WorkOrder = getAllUrlParams("WorkOrder");
            var encrypt = getAllUrlParams("username");
            var username = GetUsername();

            if (WorkOrder != "") {
                TB_FS_PM_Refrigeration(WorkOrder);//1
                TB_FS_PM_Electrical_Current(WorkOrder);//2
                TB_FS_PM_Package_Comp(WorkOrder);//3
                TB_FS_PM_Package_Freezer(WorkOrder);//4
                TB_FS_PM_Package_EV_Con(WorkOrder);//5
                TB_FS_PM_Checklist(WorkOrder)//Checklist
            }


            $(document).on("click", "#btnHome", function () {
                window.location.href = "./WorkOrderReporting.aspx?username" + encrypt + "&WorkOrder=" + WorkOrder;
            });

            //$(".Click_Image").on('click', function () {
            //    let image = $(this).attr("data-input-id");
            //    console.log(image);
            //    let x = "#" + image;
            //    console.log(x);
            //    $(x).click();
            //});

            $(".btnShowImage").on('click', function () {
                var Description = $(this).closest("tr").find("td:nth-child(1)").text();
                var Model = $(this).closest("tr").find("td:nth-child(2)").text();
                var WorkOrder = $(this).closest("tr").attr("data-WorkOrder");
                var WorkOrderLineItemNumber = $(this).closest("tr").attr("data-WorkOrderLineItemNumber");
                var CheckList_Before = $(this).closest("tr").attr("data-CheckList_Before")!=""?$(this).closest("tr").attr("data-CheckList_Before"):"images/NonUpload.png";
                var CheckList_During = $(this).closest("tr").attr("data-CheckList_During")!=""?$(this).closest("tr").attr("data-CheckList_During"):"images/NonUpload.png";
                var CheckList_After = $(this).closest("tr").attr("data-CheckList_After")!=""?$(this).closest("tr").attr("data-CheckList_After"):"images/NonUpload.png";
                let Title = Description + " | " + Model; 
                let link = "./Uploading_Picture_PM.aspx?username="+encrypt+"&WorkOrder="+WorkOrder+"&WorkOrderLineItemNumber="+WorkOrderLineItemNumber;
                $("#image1_1").attr("src", CheckList_Before)
                $("#image1_2").attr("src", CheckList_During)
                $("#image1_3").attr("src", CheckList_After)
                $("#btnLinkUploadImage").attr("href", link)

                $("#TitleShowImage").text(Title);
                $("#TitleShowImage").text(Title);
                $("#modalShowImage").modal("show");
            });
            

            $(".Click_Image").on('click', function () {
                var src = $(this).find('img').attr('src');
                //alert(src);
                window.open(src);
            });


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


            function TB_FS_PM_Refrigeration(WorkOrder) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_Refrigeration") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID], [WorkOrder], [Refrigeration_Piping], [Refrigeration_Piping_Remark_Suggestion]
                                //    , [Refrigeration_Piping_Result], [Refrigeration_Piping_Solve]
                                //    , [Refrigeration_Before_Img], [Refrigeration_During_Img], [Refrigeration_After_Img]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Refrigeration_Piping = val[2];
                                var Refrigeration_Piping_Remark_Suggestion = val[3];
                                var Refrigeration_Piping_Result = val[4];
                                var Refrigeration_Piping_Solve = val[5];
                                var Refrigeration_Before_Img = val[6];
                                var Refrigeration_During_Img = val[7];
                                var Refrigeration_After_Img = val[8];

                                $("#textRefrigeration_Piping").val(Refrigeration_Piping);
                                $("#textRefrigeration_Piping_Result").val(Refrigeration_Piping_Result);
                                $("#textRefrigeration_Piping_Solve").val(Refrigeration_Piping_Solve);
                                $("#textRefrigeration_Piping_Remark_Suggestion").val(Refrigeration_Piping_Remark_Suggestion);
                                $("#image1_1").attr('src', Refrigeration_Before_Img);
                                $("#image1_2").attr('src', Refrigeration_During_Img);
                                $("#image1_3").attr('src', Refrigeration_After_Img);
                            });
                        }
                    }
                });
            }
            //1


            function TB_FS_PM_Electrical_Current(WorkOrder) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_Electrical_Current") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID], [WorkOrder], [Electrical_Current_Description], [Electrical_Current_Remark]
                                // , [Electrical_Current_Result], [Electrical_Current_Solve]
                                // , [Electrical_Current_Before_IMG], [Electrical_Current_During_IMG], [Electrical_Current_After_IMG]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Electrical_Current_Description = val[2];
                                var Electrical_Current_Remark = val[3];
                                var Electrical_Current_Result = val[4];
                                var Electrical_Current_Solve = val[5];
                                var Electrical_Current_Before_IMG = val[6];
                                var Electrical_Current_During_IMG = val[7];
                                var Electrical_Current_After_IMG = val[8];

                                $("#textElectrical_Current_Description").val(Electrical_Current_Description);
                                $("#textElectrical_Current_Result").val(Electrical_Current_Result);
                                $("#textElectrical_Current_Solve").val(Electrical_Current_Solve);
                                $("#textElectrical_Current_Remark").val(Electrical_Current_Remark);
                                $("#image2_1").attr('src', Electrical_Current_Before_IMG);
                                $("#image2_2").attr('src', Electrical_Current_During_IMG);
                                $("#image2_3").attr('src', Electrical_Current_After_IMG);
                            });
                        }
                    }
                });
            }
            //2


            function TB_FS_PM_Package_Comp(WorkOrder) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_Package_Comp") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[WorkOrder],[Package_Compressor_Description],[Package_Compressor_Result]
                                //, [Package_Compressor_Remark], [Package_Compressor_Solve],
                                //[Package_Comp_Before_IMG], [Package_Comp_During_IMG], [Package_Comp_After_IMG]
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Package_Compressor_Description = val[2];
                                var Package_Compressor_Result = val[3];
                                var Package_Compressor_Remark = val[4];
                                var Package_Compressor_Solve = val[5];
                                var Package_Comp_Before_IMG = val[6];
                                var Package_Comp_During_IMG = val[7];
                                var Package_Comp_After_IMG = val[8];

                                $("#textPackage_Compressor_Description").val(Package_Compressor_Description);
                                $("#textPackage_Compressor_Result").val(Package_Compressor_Result);
                                $("#textPackage_Compressor_Solve").val(Package_Compressor_Solve);
                                $("#textPackage_Compressor_Remark").val(Package_Compressor_Remark);
                                $("#image3_1").attr('src', Package_Comp_Before_IMG);
                                $("#image3_2").attr('src', Package_Comp_During_IMG);
                                $("#image3_3").attr('src', Package_Comp_After_IMG);
                            });
                        }
                    }
                });
            }
            //3
            function TB_FS_PM_Package_Freezer(WorkOrder) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_Package_Freezer") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //$.each(response.d, function (index, val) {
                                //    [ID], [WorkOrder], [Package_Freezer_Description], [Package_Freezer_Result]
                                //        , [Package_Freezer_Remark], [Package_Freezer_Solve]
                                //        , [Package_Freezer_Before_IMG], [Package_Freezer_During_IMG], [Package_Freezer_After_IMG]

                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Package_Freezer_Description = val[2];
                                var Package_Freezer_Result = val[3];
                                var Package_Freezer_Remark = val[4];
                                var Package_Freezer_Solve = val[5];
                                var Package_Freezer_Before_IMG = val[6];
                                var Package_Freezer_During_IMG = val[7];
                                var Package_Freezer_After_IMG = val[8];

                                $("#textPackage_Freezer_Description").val(Package_Freezer_Description);
                                $("#textPackage_Freezer_Result").val(Package_Freezer_Result);
                                $("#textPackage_Freezer_Solve").val(Package_Freezer_Solve);
                                $("#textPackage_Freezer_Remark").val(Package_Freezer_Remark);
                                $("#image4_1").attr('src', Package_Freezer_Before_IMG);
                                $("#image4_2").attr('src', Package_Freezer_During_IMG);
                                $("#image4_3").attr('src', Package_Freezer_After_IMG);
                            });
                        }
                    }
                });
            }
            //4


            function TB_FS_PM_Package_EV_Con(WorkOrder) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_Package_EV_Con") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID], [WorkOrder], [Package_EVAP_Condenser_Description], [Package_EVAP_Condenser_Result]
                                //    , [Package_EVAP_Condenser_Remark], [Package_EVAP_Condenser_Solve]
                                //    , [Package_Evap_Before_IMG], [Package_Evap_During_IMG], [Package_Evap_After_IMG] 
                                var ID = val[0];
                                var WorkOrder = val[1];
                                var Package_EVAP_Condenser_Description = val[2];
                                var Package_EVAP_Condenser_Result = val[3];
                                var Package_EVAP_Condenser_Remark = val[4];
                                var Package_EVAP_Condenser_Solve = val[5];
                                var Package_Evap_Before_IMG = val[6];
                                var Package_Evap_During_IMG = val[7];
                                var Package_Evap_After_IMG = val[8];

                                $("#textPackage_EVAP_Condenser_Description").val(Package_EVAP_Condenser_Description);
                                $("#textPackage_EVAP_Condenser_Result").val(Package_EVAP_Condenser_Result);
                                $("#textPackage_EVAP_Condenser_Solve").val(Package_EVAP_Condenser_Solve);
                                $("#textPackage_EVAP_Condenser_Remark").val(Package_EVAP_Condenser_Remark);
                                $("#image5_1").attr('src', Package_Evap_Before_IMG);
                                $("#image5_2").attr('src', Package_Evap_During_IMG);
                                $("#image5_3").attr('src', Package_Evap_After_IMG);
                            });
                        }
                    }
                });
            }
            //5

            function TB_FS_PM_Checklist(WorkOrder) {
                var fragment = "";
                $("#ListChecklist").empty();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_FS_PM_Checklist") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ WorkOrder: WorkOrder }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[WorkOrder],[WorkType],[WorkOrderLineItemNumber],[Description],[Model],[Result],[Value]
                                //,[Solution],[Problem],[Fixed],[CheckList_Before],[CheckList_During],[CheckList_After]
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

                                fragment += '<tr data-WorkOrder="' + WorkOrder + '" data-WorkOrderLineItemNumber="' + WorkOrderLineItemNumber +
                                    '" data-CheckList_Before="' + CheckList_Before +'" data-CheckList_During="' + CheckList_During + '" data-CheckList_After="' + CheckList_After + '">';
                                fragment += '<td>' + Description + '</td>';//[Description] inpage is Mainpoint 
                                fragment += '<td>' + Model + '</td>';// [Model] inpage is Description 
                                fragment += '<td>' + Result + '</td>';// [Result] inpage is Checklist 
                                fragment += '<td width="10%"><button class="btn btn-info btnShowImage"  type="button" >Image</button></td>';
                                fragment += '</tr>';
                            });
                        }
                        $("#ListChecklist").append(fragment);
                    }
                });
            }
            //TB_FS_PM_Checklist
        });
    </script>
</asp:Content>
