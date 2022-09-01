<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirPerguntas.aspx.cs" Inherits="Avaliacao.Admin.Perguntas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox runat="server" ID="txtPergunta" placeholder="Digite a pergunta para pesquisar"></asp:TextBox>
    <asp:Button runat="server" ID="PesquisarPergunta" Text="Pesquisar" OnClick="PesquisarPergunta_Click"/> 
    <asp:Button runat="server" ID="CadastrarPergunta" Text="Cadastrar Nova Pergunta" OnClick="CadastrarPergunta_Click"/> 

    <asp:GridView runat="server" ID="grdPerguntas" Width="100%" AutoGenerateColumns="false" OnRowCommand="grdPerguntas_RowCommand">
        <Columns>
                <asp:BoundField DataField="descricao" HeaderText="DESCRIÇÃO" />
                <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="btn btn-warning" Text="Editar" />
                <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-danger" Text="Excluir" />
        </Columns>
    </asp:GridView>

</asp:Content>
