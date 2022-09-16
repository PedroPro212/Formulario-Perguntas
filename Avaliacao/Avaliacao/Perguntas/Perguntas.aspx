<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Perguntas f.aspx.cs" Inherits="Avaliacao.Perguntas.FrontEnd_Perguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="login.css" />

    <style>
        .teste{
            width:180px;
        }

        

    </style>

    <div class="container">
        <h2 style="font-size: 45px; font-family: 'Bebas Neue', cursive;" class="text-center">Pesquisa de Satisfação</h2>
        <br>

        <div class="col-sm-5"></div>
        <div class="col-sm-3">
            <asp:DropDownList runat="server" ID="ddlAluno" CssClass="dropdown dropend btn-sm"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="ddlCurso" CssClass="dropdown dropstart btn-sm"></asp:DropDownList>
            <br />
            <br />
            <asp:Panel runat="server" ID="lblTeste"></asp:Panel>
            <asp:Button ID="BtnSubmit" Text="Enviar" runat="server" OnClick="BtnSubmit_Click" CssClass="btn-success form-control" Width="150px" />
        </div>

    </div>
    <div class="col-sm-4"></div>
</asp:Content>
