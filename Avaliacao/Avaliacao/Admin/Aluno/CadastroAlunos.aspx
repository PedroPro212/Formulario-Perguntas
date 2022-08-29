<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroAlunos.aspx.cs" Inherits="Avaliacao.Admin.CadastroAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Estilos/CadastarAluno.css" />

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="text-center">Cadastrar de Alunos</h1>
            </div>
        </div>
        <p>Nome:</p>
        <asp:TextBox runat="server" ID="txtNome"></asp:TextBox>

        <asp:Button runat="server" ID="CadastrarAluno" CssClass="btn-success" Text="Cadastrar" OnClick="CadastrarAluno_Click" />
    </div>
</asp:Content>
