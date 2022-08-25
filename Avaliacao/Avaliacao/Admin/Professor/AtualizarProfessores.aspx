<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtualizarProfessores.aspx.cs" Inherits="Avaliacao.Admin.Perguntas.AtualizarProfessores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Atualização de Professores</h1>

    Nome:<asp:TextBox runat="server" ID="txtNome"></asp:TextBox>

    Escolha uma turma: <asp:DropDownList runat="server" ID="ddlTurma"></asp:DropDownList>

    <asp:Button runat="server" ID="AtualizarProfessor" Text="Atualizar" OnClick="AtualizarProfessor_Click" />

</asp:Content>
