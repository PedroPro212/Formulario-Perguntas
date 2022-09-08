<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perguntas.aspx.cs" Inherits="Avaliacao.Perguntas.FrontEnd_Perguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="login.css" />
    <div class="jumbotron">

        <h1 style="font-size:50px;">Perguntas Titulo</h1><br>
    
        <p>1)Perguntas enunciado(isso é só um exemplo e deve ser alterado dps)</p>
        
        <asp:RadioButton id="Alternativa_1" Text="1" Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_2" Text="2" Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_3" Text="3" Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_4" Text="4" Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_5" Text="5" Checked="True" GroupName="RadioGroup1" runat="server" /><br>

        <asp:Label ID="lblResultado" runat="server" Text=""/><br>

        <asp:Button  ID="BUTAO" Text="Enviar" runat="server" OnClick="BUTAO_Click"/>
       
    </div>


</asp:Content>
