<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Avaliacao._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    Login:<asp:TextBox runat="server" ID="txtLogin"></asp:TextBox><br />
    Senha:<asp:TextBox runat="server" ID="txtSenha"></asp:TextBox><br />
    <asp:Button runat="server" ID="btnLogin" Text="butao" OnClick="btnLogin_Click" />


</asp:Content>
