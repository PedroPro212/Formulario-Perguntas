<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirPerguntas.aspx.cs" Inherits="Avaliacao.Admin.Perguntas.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: azure;
        }

        h2 {
            font-size: 50PX;
            color: white
        }

        .fundobranco {
            background-color: white
        }

        .esticaaaa {
            min-width: 100px;
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

        .fodase {
            padding: 15px 32px;
            min-width: 450px;
        }

        .btn {
            background-color: #FFC219;
            width: 100px;
            color: black;
            font-size: 14px;
            box-shadow: black 1px 1px;
        }

            .btn:hover {
                width: 110px;
                height: 40px;
                padding-top: 10px;
            }
    </style>


    <div>
        <div class="jumbotron col-sm-12" style="background-color: #65A1A6">
            <br />

            <h2 style="font-size: 45px; font-family: 'Bebas Neue', cursive;" class="text-center">Pesquisa de Perguntas
            <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_Search_48.png" />
            </h2>

            <br />
            <br />
            <hr>
            <br />

            <asp:TextBox runat="server" ID="txtPergunta" CssClass="fodase" placeholder="Digite a pergunta para pesquisar"></asp:TextBox>
            <asp:Button runat="server" ID="PesquisarPergunta" CssClass="button" Text="Pesquisar" OnClick="PesquisarPergunta_Click" />
            <asp:Button runat="server" ID="CadastrarPergunta" CssClass="button" Text="Cadastrar Nova Pergunta" OnClick="CadastrarPergunta_Click" />
            <br />
            <br />
            <br />

        </div>

        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <asp:GridView runat="server" ID="grdPerguntas" Width="100%" AutoGenerateColumns="false" CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-dark table-dark" OnRowCommand="grdPerguntas_RowCommand">

                <Columns>
                    <asp:BoundField DataField="descricao" HeaderText="DESCRIÇÃO" />
                    <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-light" Text="Excluir" ItemStyle-HorizontalAlign="Center" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-sm-3"></div>
    </div>


</asp:Content>
