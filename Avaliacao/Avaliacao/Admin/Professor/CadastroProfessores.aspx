<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroProfessores.aspx.cs" Inherits="Avaliacao.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Cadastro de Professores</h1>

    Nome:<asp:TextBox runat="server" ID="txtNome"></asp:TextBox>

    Escolha uma turma: <asp:DropDownList runat="server" ID="ddlTurma"></asp:DropDownList>

    <asp:Button runat="server" ID="CadastrarProfessor" Text="Cadastrar" OnClick="CadastrarProfessor_Click" />


</asp:Content>
