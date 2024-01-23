<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dmas.aspx.cs" Inherits="Calculator.dmas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DMAS</title>
    <link href="stylesheet/dmas.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtNum1" /><br />
            <asp:TextBox runat="server" ID="txtNum2" /><br />
            <br />
            <span id="msg" runat="server"></span>
            <br />
            <asp:Button Text="Add" runat="server" ID="btnAdd" OnClick="btnAdd_Click" />
            <asp:Button Text="Subtract" runat="server" ID="btnSub" OnClick="btnSub_Click" /><br />
            <asp:Button Text="Multiplication" runat="server" ID="btnMultiply" OnClick="btnMultiply_Click" />
            <asp:Button Text="Division" runat="server" ID="btnDivide" OnClick="btnDivide_Click" />
        </div>
    </form>
</body>
</html>
