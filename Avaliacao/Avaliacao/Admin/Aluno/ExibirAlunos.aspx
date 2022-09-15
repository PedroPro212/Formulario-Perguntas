<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirAlunos.aspx.cs" Inherits="Avaliacao.Admin.Aluno.ExibirAlunos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Estilos/exibir.css" />

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
            min-width: 450px;
        }

        .textinho {
            padding: 15px 32px;
        }
    </style>


    <div class="jumbotron" style="background-color: #65A1A6">
        <div>
            <h2 class="titulo text-center" style="font-family: Impact, fantasy">Exibir Alunos
         <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_identification_documents_48.png" /></h2>
        </div>

        <br>
        <br>
        <hr>
        <br>
        <div class="text-center">
            <asp:TextBox runat="server" CssClass="fodase" ID="txtNome" placeholder="Digite o aluno para pesquisar"></asp:TextBox>
            <asp:Button runat="server" CssClass="button" ID="PesquisarAluno" Text="Pesquisar" OnClick="PesquisarAluno_Click" />
            <asp:Button runat="server" CssClass="button" ID="CadastrarAluno" Text="Cadastrar Aluno" OnClick="CadastrarAluno_Click" />
        </div>

        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-8">

                <asp:GridView runat="server" ID="grdAlunos" Width="80%" AutoGenerateColumns="false"
                    CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-hover table-dark" OnRowCommand="grdAlunos_RowCommand"
                    AllowPaging="true">
                    
                    <Columns>
                        <asp:BoundField DataField="nome" HeaderText="NOME" />
                        <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-danger" Text="Excluir" HeaderText="Excluir" />
                    </Columns>


                </asp:GridView>
            </div>
            <div class="col-sm-1"></div>
        </div>

    <div class="col-sm-3"></div>
    <br>
    <hr>
    </div>

</asp:Content>
