<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LinkarProfCurso.aspx.cs" Inherits="Avaliacao.Admin.Cursos.LinkarProfCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DropDownList runat="server" ID="ddlProf"></asp:DropDownList>
    <asp:DropDownList runat="server" ID="ddlCurso"></asp:DropDownList>
    <asp:Button runat="server" Text="Atribuir" ID="AtribuirProfCurso" OnClick="AtribuirProfCurso_Click" />
 
</asp:Content>
