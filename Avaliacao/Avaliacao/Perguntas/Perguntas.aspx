<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perguntas f.aspx.cs" Inherits="Avaliacao.Perguntas.FrontEnd_Perguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="login.css" />
    <div class="container">
        <h2 style="font-size:45px; font-family: 'Bebas Neue', cursive;" class="text-center">Pesquisa de Satisfação</h2><br>

        <div class="col-sm-5"></div>
        <div class="col-sm-3">
            <asp:DropDownList runat="server" ID="ddlAluno" CssClass="dropdown dropend btn-sm"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="ddlCurso" CssClass="dropdown dropstart btn-sm"></asp:DropDownList> <br /><br />
    
            <asp:Label runat="server" ID="lblPergunta1"></asp:Label>
            <asp:RadioButtonList runat="server" ID="rdnPergunta1" RepeatDirection="Horizontal">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label runat="server" ID="lblPergunta2"></asp:Label>
            <asp:RadioButtonList runat="server" ID="rdnPergunta2" RepeatDirection="Horizontal">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label runat="server" ID="lblPergunta3"></asp:Label>
            <asp:RadioButtonList runat="server" ID="rdnPergunta3" RepeatDirection="Horizontal">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label runat="server" ID="lblPergunta4"></asp:Label>
            <asp:RadioButtonList runat="server" ID="rdnPergunta4" RepeatDirection="Horizontal">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label runat="server" ID="lblPergunta5"></asp:Label>
            <asp:RadioButtonList runat="server" ID="rdnPergunta5" RepeatDirection="Horizontal">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Button  ID="BtnSubmit" Text="Enviar" runat="server" OnClick="BtnSubmit_Click" CssClass="btn-success form-control" Width="150px"/>
       </div>
        <div class="col-sm-4"></div>
    </div>


</asp:Content>
