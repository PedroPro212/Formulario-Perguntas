<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelecionarPagina.aspx.cs" Inherits="Avaliacao.Admin.Login.SelecionarPagina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="selecionartela.css" />

    <div class="container" style="background-image:linear-gradient(to right, #386dbd, #009ddd); margin-top:50px; border-radius:1px; box-shadow: black 2px 2px 2px;">
        <div class="row">
            <div class="espaco " style="margin-top:15px;"></div>
            <div class="col-sm-4"></div>
            <div class="col-sm-4 text-center">
                <h1 class="tit" style="margin-right:10px; filter: drop-shadow(black 2px 2px 2px); color:white;">Home Page</h1>
            </div>
            <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <h5 style="padding-left:50px; filter: drop-shadow(black 1px 1px 1px); color:white;">Alunos</h5>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <h5 style="padding-left:45px; filter: drop-shadow(black 1px 1px 1px); color:white;">Professor</h5>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <h5 style="padding-left:40px; filter: drop-shadow(black 1px 1px 1px); color:white;">Perguntas</h5>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-warning" id="CadAluno" Text="Cadastrar Alunos" OnClick="CadAluno_Click" BorderStyle="none" />             
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-warning" id="CadProf" Text="Cadastrar Professor" OnClick="CadProf_Click" BorderStyle="none"/>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-warning" id="CadPergunta" Text="Cadastrar Perguntas" OnClick="CadPergunta_Click" BorderStyle="none" />
            </div>
        </div>

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-danger" id="ExibAluno" Text="Exibir Alunos" OnClick="ExibAluno_Click" BorderStyle="none" />
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-danger" id="ExibProf" Text="Exibir Professores" OnClick="ExibProf_Click" BorderStyle="none"/>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3">
                <asp:Button runat="server" CssClass="btns btn-danger" id="ExibPergunta" Text="Exibir Perguntas" OnClick="ExibPergunta_Click" BorderStyle="none" />
            </div>
        </div>  
        <div class="row">
            <div class="col-sm-12 text-center">
                <div>
                    <img runat="server" class="imgProf" src="/imgs/prof.png" width="140" style="margin-right:12px; margin-top:30px; margin-bottom:15px; filter: drop-shadow(black 1px 1px 1px);" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
