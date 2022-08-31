<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirAlunos.aspx.cs" Inherits="Avaliacao.Admin.Aluno.ExibirAlunos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox runat="server" ID="txtNome" placeholder="Digite o aluno para pesquisar"></asp:TextBox>
    <asp:Button runat="server" ID="PesquisarAluno" Text="Pesquisar" OnClick="PesquisarAluno_Click"/> 
    <asp:Button runat="server" ID="CadastrarAluno" Text="Cadastrar Novo Aluno" OnClick="CadastrarAluno_Click"/>

    <asp:GridView runat="server" ID="grdAlunos" Width="100%" AutoGenerateColumns="false" OnRowCommand="grdAlunos_RowCommand">
        <Columns>
                <asp:BoundField DataField="nome" HeaderText="NOME" />
                <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="btn btn-warning" Text="Editar" />
                <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-danger" Text="Excluir" />
        </Columns>
    </asp:GridView>

</asp:Content>
