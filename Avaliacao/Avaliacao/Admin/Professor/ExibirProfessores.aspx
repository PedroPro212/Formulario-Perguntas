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

        .fodase {
            padding: 15px 32px;
            min-width: 600px;
            }
    </style>




    <div class="jumbotron" style="background-color: #65A1A6">

        <h2 class="titulo text-center" style="font-family: Impact, fantasy">Exibir Professores  
            <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_show_property_48.png" /></h2>

        <br>
        <hr>
        <br>
        
        <div style="padding-left: 100px">
            <asp:TextBox runat="server" ID="txtNome" CssClass="fodase" placeholder="Digite o professor para pesquisar" Width="690px" ></asp:TextBox>

        <asp:Button runat="server" ID="PesquisarProf" Text="Pesquisar" CssClass="button" OnClick="PesquisarProf_Click" />
            
        <br />
        <br />  

        <asp:Button runat="server" ID="CadastrarProf" CssClass="button" Text="Cadastrar Novo Professor" OnClick="CadastrarProf_Click" />
        </div>

       
        <br>
        <br>
        <hr>

        <asp:GridView runat="server" ID="grdProf" Width="100%" AutoGenerateColumns="false" OnRowCommand="grdProf_RowCommand">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="NOME" />
                <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="btn btn-warning" Text="Editar" />
                <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-danger" Text="Excluir" />
            </Columns>

        </asp:GridView>





    </div>



</asp:Content>
