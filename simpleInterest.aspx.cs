using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class simpleInterest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            float p = float.Parse(txtPrincipal.Text);
            float r = float.Parse(txtRate.Text);
            float t = float.Parse(txtYear.Text);
            float SI = (p * t * r) / 100;
            float a = p + SI;
            si.InnerText = SI.ToString();
            amt.InnerText = a.ToString();
        }
    }
}