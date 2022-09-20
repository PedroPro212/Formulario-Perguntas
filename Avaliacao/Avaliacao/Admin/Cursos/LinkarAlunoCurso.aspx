<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LinkarAlunoCurso.aspx.cs" Inherits="Avaliacao.Admin.Cursos.LinkarAlunoCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DropDownList runat="server" ID="ddlAluno"></asp:DropDownList>
    <asp:DropDownList runat="server" ID="ddlCurso"></asp:DropDownList>
    <asp:Button runat="server" Text="Atribuir" ID="AtribuirAlunoCurso" OnClick="AtribuirAlunoCurso_Click" />

</asp:Content>
