<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelecionarPagina.aspx.cs" Inherits="Avaliacao.Admin.Login.SelecionarPagina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button runat="server" id="CadAluno" Text="Cadastrar Alunos" OnClick="CadAluno_Click" />
    <asp:Button runat="server" id="ExibAluno" Text="Exibir Alunos" OnClick="ExibAluno_Click" />
    <asp:Button runat="server" id="CadProf" Text="Cadastrar Professores" OnClick="CadProf_Click"/>
    <asp:Button runat="server" id="ExibProf" Text="Exibir Professores" OnClick="ExibProf_Click"/>
    <asp:Button runat="server" id="CadPergunta" Text="Cadastrar Perguntas" OnClick="CadPergunta_Click" />
    <asp:Button runat="server" id="ExibPergunta" Text="Exibir Perguntas" OnClick="ExibPergunta_Click" />

</asp:Content>
