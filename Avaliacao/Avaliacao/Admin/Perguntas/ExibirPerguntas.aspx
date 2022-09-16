<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirPerguntas.aspx.cs" Inherits="Avaliacao.Admin.Perguntas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body { background-color: azure; }
           
        h2 {font-size: 50PX;
            color: white}
       
        .fundobranco{background-color: white}

        .esticaaaa {min-width: 100px;}

        .button { background-color: white;
            color: #6392D6;
            border: medium;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;  }
           
        .fodase {padding: 15px 32px;
            min-width: 450px;}

    </style>



    <div class="jumbotron" style="background-color: #65A1A6"><br />

        <h2 style="font-size: 45px; font-family: 'Bebas Neue', cursive;" class="text-center">Pesquisa de Perguntas <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_Search_48.png" /> </h2>
        
         <br /><br /><hr><br />
       
    <asp:TextBox runat="server" ID="txtPergunta" CssClass="fodase" placeholder="Digite a pergunta para pesquisar"></asp:TextBox>
    <asp:Button runat="server" ID="PesquisarPergunta" CssClass="button" Text="Pesquisar" OnClick="PesquisarPergunta_Click"/> 
    <asp:Button runat="server" ID="CadastrarPergunta" CssClass="button" Text="Cadastrar Nova Pergunta" OnClick="CadastrarPergunta_Click"/> 
        <br /><br /><br />
       

    <asp:GridView   runat="server" ID="grdPerguntas" Width="100%" AutoGenerateColumns="false" CssClass="fundobranco" OnRowCommand="grdPerguntas_RowCommand">
        
            <Columns >
                <asp:BoundField DataField="descricao" HeaderText="DESCRIÇÃO" />
                <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="  btn btn-light" Text="Editar" />
                <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass=" btn btn-light" Text="Excluir" />
        </Columns>
    </asp:GridView>
            
    </div>
      
</asp:Content>
