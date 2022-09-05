<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirAlunos.aspx.cs" Inherits="Avaliacao.Admin.Aluno.ExibirAlunos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Estilos/exibir.css" />

    <asp:TextBox runat="server" ID="txtNome" placeholder="Digite o aluno para pesquisar"></asp:TextBox>
    <asp:Button runat="server" ID="PesquisarAluno" Text="Pesquisar" OnClick="PesquisarAluno_Click"/> 
    <asp:Button runat="server" ID="CadastrarAluno" Text="Cadastrar Novo Aluno" OnClick="CadastrarAluno_Click"/>

    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <asp:GridView runat="server" ID="grdAlunos" Width="80%" AutoGenerateColumns="false"
                CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" OnRowCommand="grdAlunos_RowCommand" 
                AllowPaging="true">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="NOME" />
                    <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-danger" Text="Excluir" HeaderText="Excluir" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-sm-3"></div>
    </div>

</asp:Content>
