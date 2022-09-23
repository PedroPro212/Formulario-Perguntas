<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtualizarPerguntas.aspx.cs" Inherits="Avaliacao.Admin.Perguntas.AtualizarPerguntas" %>
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

        <h2 style="font-size: 45px; font-family: 'Bebas Neue', cursive;" class="text-center">Atualização de Perguntas <asp:Image runat="server" ID="Image1" src="/../../imgs/icons8_update_48.png" /> </h2>
        
         <br /><br /><hr><br />
  
        
   <label  style="font-size:25px"> Enunciado da pergunta:</label><br>
        <asp:TextBox runat="server" ID="txtPergunta" TextMode="MultiLine" CssClass="fodase" ></asp:TextBox> <br>
    <asp:Button runat="server" ID="AtualizarPergunta" Text="Atualizar" CssClass="button" OnClick="AtualizarPergunta_Click"/>


        </div>
    
</asp:Content>
