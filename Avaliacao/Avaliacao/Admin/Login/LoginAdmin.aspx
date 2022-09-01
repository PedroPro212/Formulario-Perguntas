<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Avaliacao._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="login.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    <div class="container">
        <div class="box">
            <div class="col-sm-2"></div>
            <h2 class="titulo text-center">Fazer login</h2>
            <br />
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-1">Login:</div>
                <div class="col-sm-3">
                    <asp:TextBox runat="server" ID="txtLogin" CssClass="form-control"></asp:TextBox><br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-1">Senha:</div>
                <div class="col-sm-3">
                    <asp:TextBox runat="server" ID="txtSenha" CssClass="form-control" TextMode="Password"></asp:TextBox><br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-3">
                    <asp:Button runat="server" ID="btnLogin" Text="Fazer login" CssClass="btn btn-success" OnClick="btnLogin_Click" />
                </div>

            </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-5"></div>
                    <img runat="server" class="imgLogin" width="140" src="/imgs/login.png"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
