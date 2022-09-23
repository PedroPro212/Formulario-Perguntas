<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LinkarAlunoCurso.aspx.cs" Inherits="Avaliacao.Admin.Cursos.LinkarAlunoCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
         color: white
        }

        .button {
            background-color: white;
            color: #6392D6;
           border:medium;
            padding: 15px 12px;
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
            min-width: 10px;
        }

        .textinho {
            padding: 15px 32px;
        }
    


    </style>

      <div class="jumbotron" style="background-color: #65A1A6">
        <div>
            <h2 class="titulo text-center"  style="font-family: Impact, fantasy; color:white;">Cursos dos Alunos   
         <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_link_48.png" /></h2>
        </div>

        <br>
        <br>
        <hr>
        <br>

    <asp:DropDownList runat="server" CssClass="fodase" ID="ddlAluno"></asp:DropDownList>
    <asp:DropDownList runat="server" CssClass="fodase" ID="ddlCurso"></asp:DropDownList>
    <asp:Button runat="server" Text="Atribuir" ID="AtribuirAlunoCurso" CssClass="button" OnClick="AtribuirAlunoCurso_Click" />

          
        <br>
        <br>
        <hr>
        <br>
            </div>  

</asp:Content>