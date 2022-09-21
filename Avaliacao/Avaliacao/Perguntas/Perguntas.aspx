<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Perguntas f.aspx.cs" Inherits="Avaliacao.Perguntas.FrontEnd_Perguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="login.css" />

    <style>
        .teste{
            width:180px;
        }

        .teste1{
            background:#1D3F40;
            color:white;
            padding:10px;
            margin-bottom:10px;
            border-radius:5px;
            box-shadow:black 2px 2px 2px;
        }

        .pb-3{
            margin-bottom: 15px;
            font-size:18px;
        }
         
        body {
            background-color: azure;
        }

        h2 {
            font-size: 50PX;
            color: black
        }

        .branco {
            background-color: white
        }

        .button {
            background-color: white;
            color: #6392D6;
           
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

            .button:hover {
                background-color: White;
                color: #336699
            }

        .foda {
            padding: 15px 32px;
        }

        .fodase {
            padding: 15px 18px;
            min-width: 2px;
        }

        .textinho {
            padding: 15px 32px;
        }
    


    </style>

    <div class="container">
        <h2 style="font-size: 45px; font-family: 'Bebas Neue', cursive;" class="text-center">Pesquisa de Satisfação</h2>
        <br>

        <div class="col-sm-4" style="font-family: 'Bebas Neue', cursive; font-size:20px; margin-top:15px;">
            <img runat="server" src="../imgs/ibge.png" style="filter:drop-shadow(black 2px 2px 2px);"/>
        </div>
        <div class="col-sm-4">
            <asp:DropDownList runat="server"  ID="ddlCurso" CssClass="dropdown dropstart btn-sm fodase" AutoPostBack="false" ></asp:DropDownList>
            <asp:DropDownList runat="server"  ID="ddlAluno" CssClass="dropdown dropend btn-sm fodase"></asp:DropDownList>
            <br />
            <br />
            <div class="teste1"><b><asp:Panel runat="server" ID="lblTeste" CssClass="pb-3"></asp:Panel></b></div>
            <asp:Button ID="BtnSubmit" Text="Enviar" runat="server" OnClick="BtnSubmit_Click" CssClass="button" Width="150px" />
            
        
        </div>
        <div class="col-sm-4"></div>

    </div>
    <div class="col-sm-4"></div>
</asp:Content>
