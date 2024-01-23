<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="simpleInterest.aspx.cs" Inherits="Calculator.simpleInterest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Interest</title>
    <link href="stylesheet/simpleInterest.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Simple Interest</h2>
            <asp:Label Text="Principal" runat="server" ID="lblPrincipal"/><br />
            <asp:TextBox runat="server" ID="txtPrincipal" /><br />
            <asp:Label Text="Rate Of Interest" runat="server" ID="lblRate"/><br />
            <asp:TextBox runat="server" ID="txtRate" /><br />
            <asp:Label Text="Year" runat="server" ID="lblYear"/><br />
            <asp:TextBox runat="server" ID="txtYear" /><br />
            <p>Interest: <span id="si" runat="server"></span></p>
            <p>Total Plus Interest: <span id="amt" runat="server"></span></p>
            <asp:Button Text="Calculate" runat="server" ID="btnCalculate" OnClick="btnCalculate_Click" />
        </div>
    </form>
</body>
</html>
