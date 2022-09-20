<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroCursos.aspx.cs" Inherits="Avaliacao.Admin.Cursos.CadastroCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    Curso:<asp:TextBox runat="server" ID="txtCurso"></asp:TextBox>
    <asp:Button runat="server" ID="CadastrarCurso" Text="Cadastrar" OnClick="CadastrarCurso_Click" />
</asp:Content>
