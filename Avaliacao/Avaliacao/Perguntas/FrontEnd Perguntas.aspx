﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrontEnd Perguntas.aspx.cs" Inherits="Avaliacao.Perguntas.FrontEnd_Perguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="font-size:50px;">Perguntas Titulo</h1><br>
    
        <p>1)Perguntas enunciado</p>
        
        
       
        <asp:RadioButton id="Alternativa_1" Text="  ☜(ﾟヮﾟ☜) " Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_2" Text="  (¬_¬ )  " Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_3" Text="  (T_T)   " Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_4" Text="  (╯°□°）╯︵ ┻━┻    " Checked="True" GroupName="RadioGroup1" runat="server" />
        <asp:RadioButton id="Alternativa_5" Text="  ಥ_ಥ " Checked="True" GroupName="RadioGroup1" runat="server" /><br>

        <asp:Label ID="PedroGay" runat="server" Text="uiui"/><br>

        <asp:Button  ID="BUTAO" Text="submit" runat="server" OnClick="BUTAO_Click"/>
       
         <div/>


</asp:Content>
