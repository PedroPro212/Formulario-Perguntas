<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtualizarAlunos.aspx.cs" Inherits="Avaliacao.Admin.Aluno.AtualizarAlunos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Atualização de Alunos</h1>

    Nome:<asp:TextBox runat="server" ID="txtNome"></asp:TextBox>

    <asp:Button runat="server" ID="AtualizarAluno" Text="Atualizar" OnClick="AtualizarAluno_Click"/>

</asp:Content>
