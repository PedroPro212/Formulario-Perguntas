<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroAlunos.aspx.cs" Inherits="Avaliacao.Admin.CadastroAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Estilos/CadastarAluno.css" />


    <div class="jumbotron" style="background-color:#65A1A6">
    <div class="container">
   

        <div class="row">
            <div class="col-sm-10">
                <h1 class="text-left" style="font-size:40px; color:white;">Cadastro de Alunos</h1>
            </div>
        </div>
        <p style="margin-top:10px; margin-bottom:0px;">Nome:</p>
        <asp:TextBox runat="server" ID="txtNome" CssClass=""></asp:TextBox>

        <asp:Button runat="server" ID="CadastrarAluno" CssClass="btn btn-success" Text="Cadastrar" OnClick="CadastrarAluno_Click" />
    </div>
        </div>
</asp:Content>
