<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Avaliacao._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Yanone+Kaffeesatz&display=swap');

        body{
            background-color:azure;
        }
    </style>

    <div class="container-fluid" style="background-image:linear-gradient(to top, #386dbd, #009ddd); margin-top:55px; border-radius:5px;">
        <div class="row">
            <div class="col-sm-8">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-2"></div>
                        <div>
                            <img runat="server" src="../../imgs/sig.png" style="width:200px; margin-top:70px;" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 bg-info" style="border-radius:0px 5px 5px 0px;">
                <div style="margin-left:45px;">
                    <h2 class="titulo" style="padding-top:50px; margin-left:90px;font-family: 'Bebas Neue', cursive;">Fazer login</h2>
                    <div><p style="font-family: 'Yanone Kaffeesatz', sans-serif; font-size:20px; margin-bottom:0px;">Login:</p></div>
                        <asp:TextBox runat="server" ID="txtLogin" CssClass="form-control" ></asp:TextBox><br />
                        <div><p style="font-family: 'Yanone Kaffeesatz', sans-serif; font-size:20px; margin-bottom:0px;">Senha:</p></div>
                        <asp:TextBox runat="server" ID="txtSenha" CssClass="form-control" TextMode="Password"></asp:TextBox><br />
                        <div style="margin-bottom:15px;"></div>
                        <asp:Button runat="server" ID="btnLogin" Text="Fazer login" CssClass="btn btn-primary col-sm-12" OnClick="btnLogin_Click"/>
                    <div style="margin-bottom:80px;"></div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
