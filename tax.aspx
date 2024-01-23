<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tax.aspx.cs" Inherits="Calculator.tax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tax Calculator</title>
    <link href="stylesheet/tax.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="head">
            <h1>Nepalese Income Tax Calculator</h1>
        </div>
        <div id="selector">
            <asp:Label Text="Assessment Infos" runat="server" ID="lblAssessment" />
            <asp:DropDownList runat="server" ID="ddlGender">
                <asp:ListItem Text="Male" Value="Male" Selected="True" />
                <asp:ListItem Text="Female" Value="Female" />
            </asp:DropDownList>
            <asp:DropDownList runat="server" ID="ddlMaritalStatus">
                <asp:ListItem Text="Married" Value="Married" Selected="False"/>
                <asp:ListItem Text="Unmarried" Value="Unmarried" />
            </asp:DropDownList>
        </div>
        <div id="amt">
            <asp:Label Text="Monthly Salary" runat="server" ID="lblSalary" />
            <asp:TextBox runat="server" ID="txtSalary" />
            <h2>Annual Income</h2>
            <asp:Label Text="Annual Gross Salary" runat="server" ID="lblAnnual" />
            <asp:TextBox runat="server" ID="txtAnnual" Enabled="false" />
        </div>
        <asp:Button Text="Clear Inputs" runat="server" ID="btnClear" OnClick="btnClear_Click" />
        <asp:Button Text="Calculate Tax" runat="server" ID="btnCalculate" OnClick="btnCalculate_Click" />
    </form>
</body>
</html>
