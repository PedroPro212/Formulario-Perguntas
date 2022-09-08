﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Perguntas
{
    public partial class FrontEnd_Perguntas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        /// <summary>
        /// Pega as informações armazenadas nos "Radio button(Atividades_ de 1 a 5)" e compara qual delas 
        /// está selecionada para escrever na label "PedroGay"
        /// </summary>
        /// <param BUTAO_Click="sender"></param>
        /// <param BUTAO_Click="e"></param>
        
        // encontrar maneira de adaptar pro banco de dados
        protected void BUTAO_Click(object sender, EventArgs e)
        {
            SiteMaster.AlertPersonalizado(this, "Enviado com sucesso!");

            if (Alternativa_1.Checked == true)
            {
                lblResultado.Text = "Selecionou " + Alternativa_1.Text;
            }
            else if (Alternativa_2.Checked)
            {
                lblResultado.Text = "escolheu " + Alternativa_2.Text;
            }
            else if (Alternativa_3.Checked)
            {
                lblResultado.Text = "clicou em " + Alternativa_3.Text;
            }
            else if (Alternativa_4.Checked)
            {
                lblResultado.Text = "Apertou " + Alternativa_4.Text;
            }
            else if (Alternativa_5.Checked)
            {
                lblResultado.Text = "bateu em " + Alternativa_5.Text;
            }
        }
    }
}