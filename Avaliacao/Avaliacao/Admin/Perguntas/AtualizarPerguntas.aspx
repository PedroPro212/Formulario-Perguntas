<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtualizarPerguntas.aspx.cs" Inherits="Avaliacao.Admin.Perguntas.AtualizarPerguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Atualização de Perguntas</h1>

    Enunciado da pergunta:<asp:TextBox runat="server" ID="txtPergunta" TextMode="MultiLine" CssClass="form-control" ></asp:TextBox> <br />
    <asp:Button runat="server" ID="AtualizarPergunta" Text="Atualizar" OnClick="AtualizarPergunta_Click"/>

</asp:Content>
