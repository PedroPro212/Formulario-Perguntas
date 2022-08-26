<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelecionarPagina.aspx.cs" Inherits="Avaliacao.Admin.Login.SelecionarPagina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="selecionartela.css" />

    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4 text-center">
                <h1 class="tit" style="margin-right:10px;">Gestão</h1>
            </div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-success" id="CadAluno" Text="Cadastrar Alunos" OnClick="CadAluno_Click" />             
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-success" id="CadProf" Text="Cadastrar Professor" OnClick="CadProf_Click"/>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-success" id="CadPergunta" Text="Cadastrar Perguntas" OnClick="CadPergunta_Click" />
            </div>
        </div>

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-secondary" id="ExibAluno" Text="Exibir Alunos" OnClick="ExibAluno_Click" />
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-secondary" id="ExibProf" Text="Exibir Professores" OnClick="ExibProf_Click"/>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-secondary" id="ExibPergunta" Text="Exibir Perguntas" OnClick="ExibPergunta_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
                <div>
                    <img runat="server" class="imgProf" src="/imgs/prof.png" width="140" style="margin-right:12px; margin-top:30px;" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
