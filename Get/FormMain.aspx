<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormMain.aspx.cs" Inherits="Get_FormMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            &nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Department: "></asp:Label>
            <asp:TextBox ID="txtDepart" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click1" Text="OK" />

        </div>
    </form>
</body>
</html>
