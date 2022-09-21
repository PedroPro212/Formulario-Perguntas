<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Avaliacao._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Yanone+Kaffeesatz&display=swap');

        .titulo{
             margin-left: 70px; 
        }

        .botao {
            box-shadow: black 1px 1px 1px;
            margin-top: 15px;
            margin-bottom: 67px;
            border-radius: 5px;
            height: 35px;
            background-color: #FFC219;
            border: none;
        }

            .botao:hover {
                font-size: 20px;
                box-shadow: black 1px 1px 1px;
                border-radius: 5px;
                transition: font-size 0.1s;
                transition: border-radius 0.1s;
            }

        .campo {
            width: 280px;
            height: 30px;
            border-radius: 2px;
            border-width: 1px;
            padding-left: 10px;
        }

            .campo:hover {
                background-color: #f3ecbe;
                width: 300px;
                height: 40px;
                border-width: 1px;
                transition: width 0.1s;
                transition: height 0.1s;
            }

            .campo:focus {
                background-color: #f3ecbe;
                color: black;
                width: 300px;
                height: 40px;
                border-width: 1px;
                font-family: 'Yanone Kaffeesatz', sans-serif;
                padding-left: 10px;
                font-size: 15px;
            }

            @media (min-width:400px) and (max-width:1230px){
                .container{
                    background-color:green;
                }

                .box{
                    width:80%;
                    margin-left:100px;
                }

                .titulo{
                    margin-left:40px;
                }

                .campo{
                    width:200px;
                }

                .botao{
                    width:200px;
                }
            }

            @media(min-width:483x50) and (max-width:1170x54){
                .container{
                    background-color:red;
                }

                .box{
                    width:80%;
                    margin-left:20px;
                }
            }
    </style>


    <div class="container">
        <div class="box row">
            <div class="imagemPerfil col-sm-8" style="background-image: linear-gradient(to top, #1D3F40, #009ddd); margin-top: 50px;">
                <img runat="server" id="imgLogin" src="../../imgs/user.png" width="360" style="margin-left: 150px;" />
            </div>

            <div class="col-sm-4 bg-info" style="border-radius: 0px 5px 5px 0px; margin-top: 50px;">
                <div style="margin-left: 45px;">
                    <h2 class="titulo" style="padding-top: 50px;font-family: 'Bebas Neue', cursive;">Fazer login</h2>
                    <p style="font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px; margin-bottom: 0px;">Login:</p>
                    <asp:TextBox runat="server" ID="txtLogin" CssClass="campo" onMouseOver="mDown(this)" onMouseOut="mUp(this)"></asp:TextBox><br />
                    <div>
                        <p style="font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px; margin-bottom: 0px;">Senha:</p>
                    </div>
                    <asp:TextBox runat="server" ID="txtSenha" CssClass="campo" TextMode="Password" onMouseOver="mDown(this)" onMouseOut="mUp(this)"></asp:TextBox><br />
                    <div style="margin-bottom: 15px;"></div>
                    <asp:Button runat="server" ID="btnLogin" Text="Fazer login" CssClass="botao col-sm-12" OnClick="btnLogin_Click" />

                </div>
            </div>
        </div>
        <div class="col-sm-12 text-right">
            <h5>É necessário fazer login para ter acesso a prataforma de administração</h5>
        </div>
    </div>

    <%--    <script>
        function mDown(obj) {
            obj.style.backgroundColor = "#fef7d5";
            obj.style.width = "1000px";
        }

        function mUp(obj) {
            obj.style.backgroundColor = "white";
        }
    </script>--%>
</asp:Content>
