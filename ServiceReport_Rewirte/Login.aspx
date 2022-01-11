<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ServiceReport_Rewirte.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        .section {
            margin-top: 50px;
        }

        .border {
            border: 2px solid #2e6da4;
            padding: 10px;
            border-radius: 10px;
        }

        .center {
            text-align: center;
        }

        .max-wide {
            max-width: 100%;
        }

        .col-centered {
            float: none;
            margin: 0 auto;
        }

        .no-padding {
            padding: 0 !important;
            margin: 0 !important;
        }

        .row-no-padding > [class*="col-"] {
            padding-left: 1.8px !important;
            padding-right: 1.8px !important;
        }

        @media(max-width:767px) {
            body {
                padding-top: 0px;
            }
        }
    </style>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Sign in</title>
    </head>
    <body>
        <form class="form1">
            <div class=" center">
                <h1>Service Report</h1>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 center">
                        <img src="./Images/icon.png" alt="logo" style="width: 100%; height: 180px; max-width: 180px; padding: 20px; margin-top: -17px">
                    </div>
                </div>
                <div class="row" style="margin-top: 40px;">
                    <div class="col-md-12 col-sm-12 col-xs-12 ">
                        <div class="col-md-3 col-sm-0 col-xs-0">
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="col-md-3 col-sm-12 col-xs-12">
                                <label>Emp Num/รหัสพนักงาน </label>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12">
                                <input type="text"  id="textUsername" class="form-control "  style="max-width: 100%;" />
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-0 col-xs-0">
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 20px;">
                    <div class="col-md-12 col-sm-12 col-xs-12 ">
                        <div class="col-md-3 col-sm-0 col-xs-0">
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="col-md-3 col-sm-12 col-xs-12">
                                <label>Pass/รหัสผ่าน </label>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 row-no-padding ">
                                <div class="col-md-12 col-sm-12 col-xs-12 ">
                                    <div class="input-group">
                                        <input type="password" id="textPassword" class="form-control max-wide" autocomplete="off" />
                                        <div class="input-group-btn">
                                            <button class="btn btn-default" id="btnshowpass"  type="button">
                                                <i class="glyphicon glyphicon-eye-open" id="Icon_showpass"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="col-md-3 col-sm-0 col-xs-0">
                        </div>
                    </div>
                </div>
                <div class="center" style="margin-top: 40px;">
                    <button type="button" class="btn btn-info btn-block" id="signin" style="max-width: 220px; margin: auto">Login / เข้าสู่ระบบ</button>
                    <div style="text-align: center; padding-top: 1rem;">
                     <%--   <a href="./Resetpassword.aspx">
                            <p>Reset Password / เปลี่ยนรหัสผ่าน</p>
                        </a>--%>
                    </div>
                </div>
            </div>
        </form>

    </body>

    </html>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#Mynavbar").hide();

            $("#btnshowpass").on("click", function () {
                var Pass = $("#textPassword").attr("type");
                if (Pass == "password") {
                    $("#textPassword").attr("type","text");
                    $("#Icon_showpass").attr("class","glyphicon glyphicon-eye-close");
                } else {
                    $("#textPassword").attr("type","password");
                    $("#Icon_showpass").attr("class","glyphicon glyphicon-eye-open");
                }
            });

            $("#signin").on("click", function () {
                var username = $("#textUsername").val();
                var password = $("#textPassword").val();
                let key = "Patkol";
                if (username != "" && password != "") {
                    var encrypt = CryptoJS.AES.encrypt(username, key).toString();
                    //console.log(data);
                    //var decrypted = CryptoJS.AES.decrypt(data, key).toString(CryptoJS.enc.Utf8);
                    //console.log(decrypted);
                    username = username.trim()
                    password = password.trim()
                    $.ajax({
                        type: "post",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/Signin") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({
                            username: username,
                            password: password
                        }),
                        success: function (response) {
                            if (response.d.length > 0) {
                                sessionStorage.setItem("username", username);
                                window.location.href = "./WorkOrderReporting.aspx?username=" + encrypt;
                            } else {
                                swal("Incorrect username/password!", "Please check your input", "error");
                            }
                        }
                    });
                } else {
                  swal("Incorrect username/password!", "Please check your input", "error");
                }
                   
            });

        });
    </script>
</asp:Content>
