<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirProfessores.aspx.cs" Inherits="Avaliacao.Admin.Professor.ExibirProfessores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


   
    <style>
        body{background-color:azure;}
        h2 {font-size:50PX;
            color:white
        }

    </style>




    <div class="jumbotron" style="background-color:#65A1A6">

         <h2 class="titulo text-center" style="font-family:Impact, fantasy"  >Exibir Professores</h2>
        <br>
         <hr>
        <br>
       
<asp:TextBox runat="server" ID="txtNome" placeholder="Digite o professor para pesquisar" CssClass="form-control" Width="247px"></asp:TextBox>

     <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_show_property_32.png" />
    <asp:Button runat="server" ID="PesquisarProf" Text="Pesquisar" OnClick="PesquisarProf_Click"/> 
       
    <asp:Button   runat="server" ID="CadastrarProf" Text="Cadastrar Novo Professor" OnClick="CadastrarProf_Click"/> 
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
