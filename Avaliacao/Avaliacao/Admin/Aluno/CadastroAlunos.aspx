<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroAlunos.aspx.cs" Inherits="Avaliacao.Admin.CadastroAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Cadastro de Alunos</h1>

    Nome:<asp:TextBox runat="server" ID="txtNome"></asp:TextBox>

    <asp:Button runat="server" ID="CadastrarAluno" Text="Cadastrar" OnClick="CadastrarAluno_Click" />

</asp:Content>
