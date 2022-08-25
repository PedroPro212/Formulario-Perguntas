<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroPerguntas.aspx.cs" Inherits="Avaliacao.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Cadastro de Perguntas</h1>

    Enunciado da pergunta:<asp:TextBox runat="server" ID="txtPergunta" TextMode="MultiLine" CssClass="form-control" ></asp:TextBox> <br />
    <asp:Button runat="server" ID="CadastrarPergunta" Text="Cadastrar" OnClick="CadastrarPergunta_Click"/>


</asp:Content>
