<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormMenu.aspx.cs" Inherits="MutiView_FormMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            text-align: center;
            background-color: #CCFFFF;
        }
        .auto-style2 {
            text-align: center;
            background-color: #CCFFFF;
        }
        .auto-style3 {
            text-align: left;
            width: 203px;
            background-color: #FF0066;
        }
        .auto-style4 {
            height: 23px;
            text-align: center;
            width: 203px;
            background-color: #FF0066;
        }
        .auto-style5 {
            width: 203px;
            background-color: #FF0066;
        }
        .auto-style6 {
            height: 23px;
            text-align: center;
            width: 530px;
            background-color: #66FFFF;
        }
        .auto-style8 {
            text-align: center;
            width: 530px;
            background-color: #66FFFF;
        }
        .auto-style10 {
            text-align: center;
            width: 503px;
            background-color: #FF99CC;
        }
        .auto-style11 {
            height: 23px;
            text-align: center;
            width: 503px;
            background-color: #FF99CC;
        }
        .auto-style12 {
            margin-left: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="กรุณาเลือกอาหารหรือเครื่องดื่ม:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>กรุณาเลือก</asp:ListItem>
                <asp:ListItem>อาหารคาว</asp:ListItem>
                <asp:ListItem>เครื่องดื่ม</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="Meat" runat="server">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style6">รายการอาหาร</td>
                            <td class="auto-style11">ราคา</td>
                            <td class="auto-style4">จำนวน</td>
                            <td class="auto-style1"><strong>ราคารวม</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:CheckBox ID="ckOne" runat="server" AutoPostBack="True" OnCheckedChanged="ckOne_CheckedChanged" Text="ข้าวขาหมู" />
                            </td>
                            <td class="auto-style10">
                                <asp:Label ID="lblPrice1" runat="server" Text="50"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtQN1" runat="server" AutoPostBack="True" OnTextChanged="txtQN1_TextChanged" Visible="False" Width="202px"></asp:TextBox>
                            </td>
                            <td class="auto-style2"><strong>
                                <asp:TextBox ID="txtTotal1" runat="server" BackColor="#999999" ReadOnly="True" Visible="False" Width="190px"></asp:TextBox>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:CheckBox ID="ckTwo" runat="server" AutoPostBack="True" OnCheckedChanged="ckTwo_CheckedChanged" Text="ข้าวผัดปู" />
                            </td>
                            <td class="auto-style10">
                                <asp:Label ID="lblPrice2" runat="server" Text="60"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtQN2" runat="server" AutoPostBack="True" OnTextChanged="txtQN2_TextChanged" Visible="False" Width="202px"></asp:TextBox>
                            </td>
                            <td class="auto-style2"><strong>
                                <asp:TextBox ID="txtTotal2" runat="server" BackColor="#999999" ReadOnly="True" Visible="False" Width="190px"></asp:TextBox>
                                </strong></td>
                        </tr>
                    </table>
                </asp:View>
                
                <asp:View ID="Drink" runat="server">
                </asp:View>
            </asp:MultiView>

        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style12">
            <asp:Button ID="btnClick" runat="server" OnClick="btnClick_Click" Text="รวมรายการ" Visible="False" />
        </p>
    </form>
</body>
</html>
