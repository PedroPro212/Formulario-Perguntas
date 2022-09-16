<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grafico.aspx.cs" Inherits="Avaliacao.Grafico.Grafico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div class="text-center" style="padding-top:15px; font-family: 'Bebas Neue', cursive; filter:drop-shadow(black 1px 1px 1px);"><h1>Gráfico</h1></div>
        <div style="visibility: hidden">
            <asp:TextBox runat="server" ID="resposta1" Text="5"></asp:TextBox>
            <asp:TextBox runat="server" ID="resposta2" Text="3"></asp:TextBox>
            <asp:TextBox runat="server" ID="resposta3" Text="6"></asp:TextBox>
            <asp:TextBox runat="server" ID="resposta4" Text="8"></asp:TextBox>
            <asp:TextBox runat="server" ID="resposta5" Text="9"></asp:TextBox>
        </div>

        <asp:DropDownList ID="ddlPerguntas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPerguntas_SelectedIndexChanged" CssClass="btn-sm"></asp:DropDownList>

        <canvas id="myChart"></canvas>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


        <script>
            var alt1 = parseInt(document.getElementById('<%=resposta1.ClientID %>').value);
            var alt2 = parseInt(document.getElementById('<%=resposta2.ClientID %>').value);
            var alt3 = parseInt(document.getElementById('<%=resposta3.ClientID %>').value);
            var alt4 = parseInt(document.getElementById('<%=resposta4.ClientID %>').value);
            var alt5 = parseInt(document.getElementById('<%=resposta5.ClientID %>').value);
        </script>

        <script>
            const labels = [
                'Alternativa 1',
                'Alternativa 2',
                'Alternativa 3',
                'Alternativa 4',
                'Alternativa 5',
            ];
            const data = {
                labels: labels,
                datasets: [{
                    label: 'Alternativas',
                    backgroundColor: 'rgb(0, 99, 132)',
                    borderColor: 'rgb(0, 99, 139)',
                    data: [alt1, alt2, alt3, alt4, alt5,],
                }]
            };
            const config = {
                type: 'bar',
                data: data,
                options: {}
            };
        </script>

        <script>
            const myChart = new Chart(
                document.getElementById('myChart'),
                config
            );
        </script>
    </div>
</asp:Content>
