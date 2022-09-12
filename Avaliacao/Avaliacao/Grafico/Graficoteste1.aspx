<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grafico.aspx.cs" Inherits="Avaliacao.Grafico.Grafico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div>
  <canvas id="myChart"></canvas>
</div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
  const labels = [
    'Alternativa1',
    'Alternativa2',
    'Alternativa3',
    'Alternativa4',
    'Alternativa5',
    
  ];
  const data = {
    labels: labels,
    datasets: [{
      label: 'My First dataset',
      backgroundColor: 'rgb(0, 99, 132)',
      borderColor: 'rgb(0, 99, 139)',
      data: [7, 10, 5, 2, 9,],
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


</asp:Content>
