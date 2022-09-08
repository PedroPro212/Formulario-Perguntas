<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroAlunos.aspx.cs" Inherits="Avaliacao.Admin.CadastroAluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Estilos/CadastarAluno.css" />

     <style>
        body {
            background-color: azure;
        }

        h2 {
            font-size: 50PX;
            color: white
        }
        .branco{color: white}

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
            min-width: 450px;
            }

        .textinho 
        {
        padding: 15px 32px;
        }

    </style>

    <div class="jumbotron" style="background-color: #65A1A6">
<div> <h2 class="titulo text-center" style="font-family: Impact, fantasy">Cadastrar alunos
         <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_Student_Male_48.png" /></h2></div>
   
        <br>
        <br>
        <hr>
        <br>

  
    <div class="container">
   

        <div class="row">
            <div class="col-sm-10">
              
            </div>
        </div>
            
         <label  style="font-size:25px"> Nome:</label> <asp:TextBox runat="server" CssClass="fodase" ID="txtNome"></asp:TextBox>

        <asp:Button runat="server" ID="CadastrarAluno" CssClass="button" Text="Cadastrar" OnClick="CadastrarAluno_Click" />
    <br>
        <br>
        </div>
        <hr>
        </div>
</asp:Content>
