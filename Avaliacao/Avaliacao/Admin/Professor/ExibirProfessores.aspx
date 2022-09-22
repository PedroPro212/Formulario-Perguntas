<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirProfessores.aspx.cs" Inherits="Avaliacao.Admin.Professor.ExibirProfessores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <style>
        body {
            background-color: azure;
        }

        h2 {
            font-size: 50PX;
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

            .btn{
                background-color:#FFC219;
                width:100px;
                color:black;
                font-size:14px;
                box-shadow:black 1px 1px;
            }
                .btn:hover{
                    width:110px;
                    height:40px;
                    padding-top:10px;
                }

        .fundo{
            background-color: #65A1A6;
        }

        .fodase {
            padding: 15px 32px;
            min-width: 600px;
        }

    </style>




    <div class="fundo">

        <h2 class="titulo text-center" style="font-family: Impact, fantasy">Exibir Professores  
            <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_show_property_48.png" /></h2>

        <br>
        <hr>
        <br>

        <div style="padding-left: 100px">
            <asp:TextBox runat="server" ID="txtNome" CssClass="fodase" placeholder="Digite o professor para pesquisar" Width="690px"></asp:TextBox>

            <asp:Button runat="server" ID="PesquisarProf" Text="Pesquisar" CssClass="button" OnClick="PesquisarProf_Click" />

            <br />
            <br />

            <asp:Button runat="server" ID="CadastrarProf" CssClass="button" Text="Cadastrar Novo Professor" OnClick="CadastrarProf_Click" />
        </div>

        <br>
        <br>
        <hr>
        <div class="col-sm-3"></div>
        <div class="col-sm-6 table-responsive">

            <asp:GridView runat="server" CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-dark table-dark" ID="grdProf" Width="100%" AutoGenerateColumns="false" OnRowCommand="grdProf_RowCommand">
                <Columns>
                    <asp:BoundField ControlStyle-CssClass="tit" DataField="nome" HeaderText="NOME" />
                    <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn" Text="Excluir" ItemStyle-HorizontalAlign="Center" />
                </Columns>

            </asp:GridView>
        </div>
        <div class="col-sm-3"></div>
    </div>

</asp:Content>
