<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirCursos.aspx.cs" Inherits="Avaliacao.Admin.Cursos.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox runat="server" ID="txtCurso"></asp:TextBox>
    <asp:Button runat="server" ID="PesquisarCurso" Text="Pesquisar" OnClick="PesquisarCurso_Click"/>
    <asp:Button runat="server" ID="CadastrarCurso" Text="Cadastrar Curso" OnClick="CadastrarCurso_Click"/>

    <asp:GridView runat="server" ID="grdCursos" Width="80%" AutoGenerateColumns="false"
        CssClass="table table-sm table-bordered table-condensed table-responsive-sm table-hover table-dark" OnRowCommand="grdCursos_RowCommand"
        AllowPaging="true">

        <Columns>
            <asp:BoundField DataField="descricao" HeaderText="DESCRICAO pedro gay" />
            <asp:ButtonField ButtonType="Link" CommandName="excluir" ControlStyle-CssClass="btn btn-danger" Text="Excluir" HeaderText="Excluir" />
        </Columns></asp:GridView>
</asp:Content>
