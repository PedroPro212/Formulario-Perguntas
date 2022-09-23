<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelecionarPagina.aspx.cs" Inherits="Avaliacao.Admin.Login.SelecionarPagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="selecionartela.css" />

    <style>
        .tit {
            font-family: 'Bebas Neue', cursive;
        }

        .btns {
            margin-top: 15px;
            width: 150px;
            border-radius: 3px;
            border-style: solid;
            border-color: black;
            border-width: 1px;
            font-family: 'Yanone Kaffeesatz', sans-serif;
            font-size: 17px;
            box-shadow: black 1px 1px 1px;
            background-color: #FFC219;
        }

            .btns:hover {
                width: 160px;
            }

        #btnLinkar{
            
        }

        .quadro:hover {
            margin-top: 15px;
            transition: margin-top 0.2s;
        }

        .imgProf {
            margin-top: 20px;
        }
    </style>

    <div class="container" style="background-image: linear-gradient(to right, #1D3F40, #009ddd); margin-top: 50px; border-radius: 1px; box-shadow: black 2px 2px 2px;">
        <div class="row">
            <div class="espaco " style="margin-top: 15px;"></div>

            <div class="col-sm-12 text-center">
                <h1 class="tit" style="margin-right: 10px; margin-bottom: 30px; filter: drop-shadow(black 2px 2px 2px); color: white;">LOCAL DO ADMINISTRADOR</h1>
            </div>

        </div>

        <div class="row">

            <div class="quadro col-sm-2 text-center" style="border-width: 3px; border-color: black; border-style: solid; border-radius: 3px; margin-left: 80px; padding-bottom: 100px;">
                <h5 style="filter: drop-shadow(black 1px 1px 1px); color: white;">Alunos</h5>
                <img runat="server" class="center-block" src="../../imgs/student.png" width="40" />
                <asp:Button runat="server" CssClass="btns" ID="CadAluno" Text="Cadastrar Alunos" OnClick="CadAluno_Click" BorderStyle="none" />
                <asp:Button runat="server" CssClass="btns" ID="ExibAluno" Text="Exibir Alunos" OnClick="ExibAluno_Click" BorderStyle="none" />
            </div>

            <div class=" quadro col-sm-2 text-center" style="border-width: 3px; border-color: black; border-style: solid; border-radius: 3px; margin-left: 80px; padding-bottom: 100px;">
                <h5 style="filter: drop-shadow(black 1px 1px 1px); color: white;">Professor</h5>
                <img runat="server" class="center-block" src="../../imgs/professor.png" width="40" />
                <asp:Button runat="server" CssClass="btns" ID="CadProf" Text="Cadastrar Professor" OnClick="CadProf_Click" BorderStyle="none" />
                <asp:Button runat="server" CssClass="btns" ID="ExibProf" Text="Exibir Professores" OnClick="ExibProf_Click" BorderStyle="none" />
            </div>

            <div class="quadro col-sm-2 text-center" style="border-width: 3px; border-color: black; border-style: solid; border-radius: 3px; margin-left: 80px; padding-bottom: 100px;">
                <h5 style="filter: drop-shadow(black 1px 1px 1px); color: white;">Perguntas</h5>
                <img runat="server" class="center-block" src="../../imgs/perguntas.png" width="40" />
                <asp:Button runat="server" CssClass="btns" ID="CadPergunta" Text="Cadastrar Perguntas" OnClick="CadPergunta_Click" BorderStyle="none" />
                <asp:Button runat="server" CssClass="btns" ID="ExibPergunta" Text="Exibir Perguntas" OnClick="ExibPergunta_Click" BorderStyle="none" />
            </div>

            <div class="quadro col-sm-2 text-center" style="border-width: 3px; border-color: black; border-style: solid; border-radius: 3px; margin-left: 80px; padding-bottom: 22px;">
                <h5 style="filter: drop-shadow(black 1px 1px 1px); color: white;">Cursos</h5>
                <img runat="server" class="center-block" src="../../imgs/livro.png" width="40" />
                <asp:Button runat="server" CssClass="btns" ID="CadCurso" Text="Cadastrar Cursos" BorderStyle="None" OnClick="CadCurso_Click" />
                <asp:Button runat="server" CssClass="btns" ID="ExibirCursos" Text="Exibir Cursos" OnClick="ExibirCursos_Click" BorderStyle="None" />
                <asp:Button runat="server" CssClass="btns" ID="btnLinkar" Text="Atribuir professor a curso" OnClick="btnLinkar_Click" BorderStyle="None" />
                <asp:Button runat="server" CssClass="btns" ID="btnLinkarAluno" Text="Atribuir aluno a curso" OnClick="btnLinkarAluno_Click" BorderStyle="None" />
            </div>

        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
                <div>
                    <img runat="server" class="imgProf" src="/imgs/juan.png" width="140" style="margin-right: 12px; margin-top: 30px; margin-bottom: 15px; filter: drop-shadow(black 1px 1px 1px);" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
