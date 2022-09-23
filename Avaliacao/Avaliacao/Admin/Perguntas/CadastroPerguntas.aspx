<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroPerguntas.aspx.cs" Inherits="Avaliacao.Admin.WebForm2" %>

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
            color: white
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
            min-width: 850px;
        }

        .textinho {
            padding: 15px 32px;
        }
    </style>


    <div class="jumbotron" style="background-color: #65A1A6">
        <div>
            <h2 class="titulo text-center" style="font-family: Impact, fantasy">Cadastro de Perguntas
         <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_customer_insight_48.png" /></h2>
        </div>

        <br>
        <br>
        <hr>
        <br>
        <%--jooj--%>

        <label style="font-size: 25px">Enunciado da pergunta:</label>
        <asp:TextBox runat="server" ID="txtPergunta" TextMode="MultiLine" CssClass="fodase"></asp:TextBox>
        <br />
        <asp:Button CssClass="button" runat="server" ID="CadastrarPergunta" Text="Cadastrar" OnClick="CadastrarPergunta_Click" />

    </div>
</asp:Content>
