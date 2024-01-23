using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class tax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            foreach (Control control in form1.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = "";
                }
                if(control is DropDownList)
                {
                    ((DropDownList)control).SelectedIndex = -1;
                }
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double s = double.Parse(txtSalary.Text); // s = monthly salary, a = annual income, ai= annual income
            double a = s * 12;
            double tax=0, at=0;
            if (ddlMaritalStatus.SelectedValue == "Married")
            {
                if (a <= 450000)
                {
                    tax = (a * 0.01);
                }
                else if (a > 450000 && a <= 550000)
                {
                    tax = (450000 * 0.01) + ((a - 450000) * 0.1);
                }
                else if (a > 550000 && a <= 750000)
                {
                    tax = (450000 * 0.01) + (100000*0.1) + ((a - 550000) * 0.2);
                }
                else if (a > 750000 && a <= 1300000)
                {
                    tax = (450000 * 0.01) + (100000 * 0.1) + (200000*0.2) + ((a - 750000) * 0.30);
                }
                else if (a > 1300000)
                {
                    tax = (450000 * 0.01) + (100000 * 0.1) + (200000 * 0.2) + (550000*0.30) + ((a - 1300000) * 0.35);
                }
            }
            else
            {
                if (a <= 400000)
                {
                    tax = (a * 0.01);
                }
                else if (a > 400000 && a <= 500000)
                {
                    tax = (400000 * 0.01) + ((a - 400000) * 0.1);
                }
                else if (a > 500000 && a <= 750000)
                {
                    tax = (400000 * 0.01) + (100000 * 0.1) + ((a - 500000) * 0.2);
                }
                else if (a > 750000 && a <= 1300000)
                {
                    tax = (400000 * 0.01) + (100000 * 0.1) + (250000 * 0.2) + ((a - 750000) * 0.30);
                }
                else if (a > 1300000)
                {
                    tax = (400000 * 0.01) + (100000 * 0.1) + (250000 * 0.2) + (550000 * 0.30) + ((a - 1300000) * 0.35);
                }
            }
           
            if (ddlGender.SelectedValue == "Female")
            {
                tax = tax * 0.9;
                at = a - tax;
            }
            else
            {
                at = a - tax;
            }
            txtAnnual.Text = at.ToString();
        }
    }
}