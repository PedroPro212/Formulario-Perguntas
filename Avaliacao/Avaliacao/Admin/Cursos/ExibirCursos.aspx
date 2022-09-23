<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirCursos.aspx.cs" Inherits="Avaliacao.Admin.Cursos.WebForm1" %>

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
            min-width: 850px;
        }

        .textinho {
            padding: 15px 32px;
        }

        .excluir {
            background-color: #FFC219;
            width: 100px;
            color: black;
            font-size: 14px;
            box-shadow: black 1px 1px;
        }

            .excluir:hover {
                background-color:#ffb238;  
            }
    </style>

    <div class="container">
        <div class="jumbotron" style="background-color: #65A1A6">
            <div>
                <h2 class="titulo text-center" style="font-family: Impact, fantasy">Exibir Cursos
             <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_Course_Assign_48.png" /></h2>
            </div>


            <label style="font-size: 25px">Selecionar Professor</label>

            <asp:TextBox CssClass="foda" runat="server" ID="txtCurso"></asp:TextBox>
            <asp:Button CssClass="button" runat="server" ID="PesquisarCurso" Text="Pesquisar" OnClick="PesquisarCurso_Click" />
            <asp:Button CssClass="button" runat="server" ID="CadastrarCurso" Text="Cadastrar Curso" OnClick="CadastrarCurso_Click" />
        </div>
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <asp:GridView runat="server" ID="grdCursos" Width="80%" AutoGenerateColumns="false"
                CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-dark table-dark" OnRowCommand="grdCursos_RowCommand"
                AllowPaging="false">

                <Columns>
                    <asp:BoundField DataField="descricao" HeaderText="DESCRIÇÃO" />
                    <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="excluir btn btn-danger" Text="Excluir" HeaderText="" ItemStyle-HorizontalAlign="Center" ControlStyle-BorderStyle="None" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
