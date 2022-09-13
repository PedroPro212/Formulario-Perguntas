<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Avaliacao._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Yanone+Kaffeesatz&display=swap');
    </style>


    <div class="container">
        <div class="box">
            <div class="col-sm-8" style="background-image:linear-gradient(to top, #1D3F40, #009ddd); margin-top:50px;">
                <img runat="server" id="imgLogin" src="../../imgs/user.png" width="360" style="margin-left:150px;" />
            </div>

            <div class="col-sm-4 bg-info" style="border-radius:0px 5px 5px 0px; margin-top:50px;">
                <div style="margin-left:45px;">
                    <h2 class="titulo" style="padding-top:50px; margin-left:70px;font-family: 'Bebas Neue', cursive;">Fazer login</h2>
                    <div><p style="font-family: 'Yanone Kaffeesatz', sans-serif; font-size:20px; margin-bottom:0px;">Login:</p></div>
                        <asp:TextBox runat="server" ID="txtLogin" CssClass="form-control" onMouseOver="mDown(this)" onMouseOut="mUp(this)"></asp:TextBox><br />
                        <div><p style="font-family: 'Yanone Kaffeesatz', sans-serif; font-size:20px; margin-bottom:0px;">Senha:</p></div>
                        <asp:TextBox runat="server" ID="txtSenha" CssClass="form-control" TextMode="Password" onMouseOver="mDown(this)" onMouseOut="mUp(this)"></asp:TextBox><br />
                        <div style="margin-bottom:15px;"></div>
                        <asp:Button runat="server" ID="btnLogin" Text="Fazer login" CssClass="btn btn-primary col-sm-12" OnClick="btnLogin_Click"/>
                    <div style="margin-bottom:80px;"></div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function mDown(obj) {
            obj.style.backgroundColor = "#fef7d5";
            obj.style.width = "1000px";
        }

        function mUp(obj) {
            obj.style.backgroundColor = "white";
        }
    </script>
</asp:Content>
