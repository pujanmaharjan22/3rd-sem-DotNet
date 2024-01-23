using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class dmas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            float num1 = float.Parse(txtNum1.Text);
            float num2 = float.Parse(txtNum2.Text);
            float add = num1 + num2;
            msg.InnerText = "Addition: " + add;
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            float num1 = float.Parse(txtNum1.Text);
            float num2 = float.Parse(txtNum2.Text);
            float sub = num1 - num2;
            msg.InnerText = "Subtraction: " + sub;
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            float num1 = float.Parse(txtNum1.Text);
            float num2 = float.Parse(txtNum2.Text);
            float multiply = num1 * num2;
            msg.InnerText = "Multiplication: " + multiply;
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            float num1 = float.Parse(txtNum1.Text);
            float num2 = float.Parse(txtNum2.Text);
            if(num2 != 0)
            {
                float divide = num1 / num2;
                msg.InnerText = "Division: " + divide;
            }
            else
            {
                msg.InnerText = "Divider can't be 0.";
            }

        }
    }
}