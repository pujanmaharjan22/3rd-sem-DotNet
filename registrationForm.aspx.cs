using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class registrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            foreach (Control control in form1.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = "";
                }
                else if (control is DropDownList)
                {
                    ((DropDownList)control).SelectedIndex = -1;
                }
                else if (control is CheckBox)
                {
                    ((CheckBox)control).Checked = false;
                }
                else if (control is RadioButtonList)
                {
                    ((RadioButtonList)control).SelectedIndex = -1;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int error = 0;
            if (String.IsNullOrEmpty(txtName.Text)){
                error++;
                errName.InnerText = "Enter Name";
            } else
            {
                errName.InnerText = "";
            }
            if (String.IsNullOrEmpty(txtFather.Text)){
                error++;
                errFname.InnerText = "Enter Father's Name";
            }
            else
            {
                errFname.InnerText = "";
            }
            if (String.IsNullOrEmpty(txtMother.Text)) {
                error++;
                errMname.InnerText = "Enter Mother's Name";
            }
            else
            {
                errMname.InnerText = "";
            }
            if (String.IsNullOrEmpty(txtPhone.Text)) {
                error++;
                errPhone.InnerText = "Enter Phone";
            }
            else
            {
                errPhone.InnerText = "";
            }
            if (String.IsNullOrEmpty(txtEmail.Text)){
                error++;
                errEmail.InnerText = "Enter Email";
            }
            else
            {
                errEmail.InnerText = "";
            }
            if (String.IsNullOrEmpty(rblGender.Text))
            {
                error++;
                errGender.InnerText = "Select Gender";
            }
            else
            {
                errGender.InnerText = "";
            }
            
            if (String.IsNullOrEmpty(txtDay.Text) && String.IsNullOrEmpty(txtMonth.Text) && String.IsNullOrEmpty(txtYear.Text))
            {
                error++;
                errDOB.InnerText = "Enter Date";
            }
            else
            {
                errDOB.InnerText = "";
            }
            if (String.IsNullOrEmpty(txtAddress.Text))
            {error++;
                errAddress.InnerText = "Enter Address";
            }
            else
            {
                errAddress.InnerText = "";
            }
            if (String.IsNullOrEmpty(ddlBlood.Text))
            {
                error++;
                errBlood.InnerText = "Select Blood Type";
            }
            else
            {
                errBlood.InnerText = "";
            }
            if (String.IsNullOrEmpty(rblDepartment.Text))
            {
                error++;
                errDepartment.InnerText = "Select Department";
            }
            else
            {
                errDepartment.InnerText = "";
            }
            if (String.IsNullOrEmpty(cblCourse.Text))
            {
                error++;
                errCourse.InnerText = "Select Course";
            }
            else
            {
                errCourse.InnerText = "";
            }
            if (error == 0)
            {
                msg.InnerText = "Registered Successfully!!!";
            }
        }
    }
}