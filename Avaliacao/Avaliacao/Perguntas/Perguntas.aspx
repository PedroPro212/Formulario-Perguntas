<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Perguntas.aspx.cs" Inherits="Avaliacao.Perguntas.FrontEnd_Perguntas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="login.css" />

    <style>
        .teste {
            width: 180px;
        }

        .teste1 {
            background: #1D3F40;
            color: white;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            box-shadow: black 2px 2px 2px;
        }

        .pb-3 {
            margin-bottom: 15px;
            font-size: 18px;
            text-align: left;
        }

        body {
            background-color: azure;
        }

        h2 {
            font-size: 50PX;
            color: black
        }

        .branco {
            background-color: white
        }

        .button {
            background-color: white;
            color: #6392D6;
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

        .foda {
            padding: 15px 32px;
        }

        .fodase {
            padding: 15px 18px;
            min-width: 2px;
        }

        .textinho {
            padding: 15px 32px;
        }

        /* HIDE RADIO */
        .type_radio {
            display: flex;
            align-items: center;
        }



        /* IMAGE STYLES */
        .type radio + img {
            cursor: pointer;
        }

        /* CHECKED STYLES */
        .type radio:checked + img {
            outline: 2px solid #f00;
        }

        .FormatRadioButtonList label {
            padding-left: 60px;
        }

        /*.por {
            margin-left: 10px;
        }*/
    </style>

    <div class="container">
        <div class="row">
            <div class="col-sm-2" style="background-color:red;"></div>
            <h2 style="font-size: 45px; font-family: 'Bebas Neue', cursive;" class="text-center">Pesquisa de Satisfação</h2>
            <br>

            <div class="col-sm-4" style="font-family: 'Bebas Neue', cursive; font-size: 20px; margin-top: 15px;">
                <%-- <img runat="server" src="../imgs/ibge.png" style="filter:drop-shadow(black 2px 2px 2px);"/>--%>
            </div>

            <div class="jumbotron">
                <asp:DropDownList runat="server" ID="ddlCurso" CssClass="dropdown dropstart btn-sm fodase" AutoPostBack="true" OnSelectedIndexChanged="ddlCurso_SelectedIndexChanged"></asp:DropDownList>
                <asp:DropDownList runat="server" ID="ddlAluno" CssClass="dropdown dropend btn-sm" Visible="false"></asp:DropDownList><br>
            </div>

            <div class="col-sm-4"></div>

            <%--Jumbotron--%>
            <div class="container jumbotron">
                <div class="row"></div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10" style="text-align:left;">
                        <b>
                            <label class="por">

                                <asp:Panel runat="server" ID="lblTeste" CssClass="pb-3 "></asp:Panel>

                            </label>
                        </b>
                    </div>
                <div class="col-sm-1"></div>
                </div>
            </div>
            <%--Jumbotron--%>


            <asp:Label runat="server">Insira um comentário sobre o curso: (não obrigatório)</asp:Label>
            <asp:TextBox runat="server" ID="txtComentario" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="BtnSubmit" Text="Enviar" runat="server" OnClick="BtnSubmit_Click" CssClass="button" Width="150px" />


            <div class="col-sm-4"></div>
            <div class="col-sm-2"></div>
        </div>
    </div>
</asp:Content>
