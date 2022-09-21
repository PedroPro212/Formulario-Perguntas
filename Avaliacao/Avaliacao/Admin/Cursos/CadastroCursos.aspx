﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroCursos.aspx.cs" Inherits="Avaliacao.Admin.Cursos.CadastroCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
        body {
            background-color: azure;
        }

        h2 {
            font-size: 50PX;
            color: white
        }

        .branco {
            background-color: white
        }

        .button {
            background-color: white;
            color: #6392D6;
            border: medium;
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
            padding: 15px 32px;
            min-width: 650px;
        }

        .textinho {
            padding: 15px 32px;
        }
    </style>

    
    <div class="jumbotron" style="background-color: #65A1A6">
        <div>
            <h2 class="titulo text-center" style="font-family: Impact, fantasy">Cadastrar Cursos
         <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_create_48.png" /></h2>
        </div>

        <br>
        <br>
        <hr>
        <br>
        <%--jooj--%>

        <label style="font-size: 25px">Cadastrar</label>

    <asp:TextBox CssClass="fodase" runat="server" ID="txtCurso"></asp:TextBox>
    <asp:Button CssClass="button" runat="server" ID="CadastrarCurso" Text="Cadastrar" OnClick="CadastrarCurso_Click" />

        <br>
        <br>
        <hr>
        <br>

        </div>
</asp:Content>
