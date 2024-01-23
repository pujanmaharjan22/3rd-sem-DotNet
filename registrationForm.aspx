<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationForm.aspx.cs" Inherits="Calculator.registrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="stylesheet/registrationForm.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div id="contain">
                <h1>Student Registration Form</h1>
            </div>
            <div>
                <i id="errName" runat="server"></i>
                <asp:Label runat="server" Text="Name:" ID="lblName" />
                <asp:TextBox runat="server" ID="txtName" placeholder="Enter full name" />
                <br />

                <i id="errFname" runat="server"></i>
                <asp:Label runat="server" Text="Father's Name:" ID="lblFather" />
                <asp:TextBox runat="server" ID="txtFather" />
                <br />

                <i id="errMname" runat="server"></i>
                <asp:Label runat="server" Text="Mother's Name:" ID="lblMother" />
                <asp:TextBox runat="server" ID="txtMother" />
                <br />

                <i id="errPhone" runat="server"></i>
                <asp:Label runat="server" Text="Phone:" ID="lblPhone"/>
                <asp:TextBox runat="server" ID="txtPhone" TextMode="Number" placeholder="017xxxxxxxx"/>
                <br />

                <i id="errEmail" runat="server"></i>
                <asp:Label runat="server" Text="Email:" ID="lblEmail"/>
                <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" placeholder="sample@example.com"/>
                <br />

                <i id="errGender" runat="server"></i>
                <asp:Label Text="Gender:" runat="server" ID="lblGender"/>
                <asp:RadioButtonList runat="server" ID="rblGender" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Text="Male" Value="Male" ID="rbMale" runat="server" />
                    <asp:ListItem Text="Female" Value="Female" ID="rbFemale" />
                    <asp:ListItem Text="Others" Value="Others" ID="rbOthers" />
                </asp:RadioButtonList>
                <br />

                <i id="errDOB" runat="server"></i>
                <asp:Label Text="Date of Birth:" runat="server" />
                <asp:TextBox runat="server" ID="txtDay" TextMode="Number"/>
                <asp:TextBox runat="server" ID="txtMonth" TextMode="Number" />
                <asp:TextBox runat="server" ID="txtYear" TextMode="Number" />
                <i>(dd-mm-yyyy)</i>
                <br />

                <i id="errAddress" runat="server"></i>
                <asp:Label Text="Address:" runat="server" />
                <asp:TextBox runat="server" ID="txtAddress" placeholder="Street:-     House:-     Road:-" />
                <br />

                <i id="errBlood" runat="server"></i>
                <asp:Label Text="Blood Group:" runat="server" />
                <asp:DropDownList runat="server" ID="ddlBlood">
                    <asp:ListItem Text="Select" />
                    <asp:ListItem Text="A +ve" Value="A +ve"/>
                    <asp:ListItem Text="A -ve" Value="A -ve"/>
                    <asp:ListItem Text="AB +ve" Value="AB +ve"/>
                    <asp:ListItem Text="AB -ve" Value="AB -ve"/>
                    <asp:ListItem Text="B +ve" Value="B +ve"/>
                    <asp:ListItem Text="B -ve" Value="B _ve"/>
                    <asp:ListItem Text="O +ve" Value="O +ve"/>
                    <asp:ListItem Text="O -ve" Value="O _ve"/>
                </asp:DropDownList>
                <br />

                <i id="errDepartment" runat="server"></i>
                <asp:Label Text="Department:" runat="server" ID="lblDepartment"/>
                <asp:RadioButtonList runat="server" ID="rblDepartment" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Text="CSE" Value="CSE" ID="rbCSE"  />
                    <asp:ListItem Text="EEE" Value="EEE" ID="rbEEE" />
                    <asp:ListItem Text="BBA" Value="BBA" ID="rbBBA" />
                </asp:RadioButtonList>
                <br />

                <i id="errCourse" runat="server"></i>
                <asp:Label Text="Course:" runat="server" ID="lblCourse"/>
                <asp:CheckBoxList runat="server" ID="cblCourse" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Text="C" Value="C" ID="liC" />
                    <asp:ListItem Text="C++" Value="C++" />
                    <asp:ListItem Text="Java" Value="Java" />
                    <asp:ListItem Text="AI" Value="AI" />
                    <asp:ListItem Text="Machine Learning" Value="Machine Learning" />
                    <asp:ListItem Text="Robotics" Value="Robotics" />
                </asp:CheckBoxList>
                <br />

                <i id="errImage" runat="server"></i>
                <asp:Label Text="Image" ID="lblImage" runat="server" />
                <asp:FileUpload ID="fuImage" runat="server" />
                <br />

                <br /> <br />
                <asp:Button Text="Submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click"  />
                <asp:Button Text="Reset" ID="btnReset" runat="server" OnClick="btnReset_Click" />
                <i id="msg" runat="server"></i>
            </div>
        </div>
        
    </form>
</body>
</html>
