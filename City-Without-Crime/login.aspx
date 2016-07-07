<%@ Page Title="" Language="C#" MasterPageFile="~/cwc.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 184px;
        }
        .auto-style4 {
            width: 182px;
        }
        .auto-style6 {
            height: 139px;
        }
        .auto-style7 {
            width: 182px;
            height: 53px;
        }
        .auto-style8 {
            width: 157px;
        }
        .auto-style9 {
            width: 184px;
            height: 8px;
        }
        .auto-style10 {
            width: 157px;
            height: 8px;
        }
        .auto-style11 {
            width: 159px;
            height: 8px;
        }
        .auto-style12 {
            width: 182px;
            height: 8px;
        }
        .auto-style31 {
            width: 176px;
            height: 139px;
        }
        .auto-style33 {
            width: 176px;
            height: 23px;
            margin-bottom: 0px;
        }
        .auto-style36 {
            width: 176px;
            height: 24px;
        }
        .auto-style37 {
            width: 182px;
            height: 24px;
        }
        .auto-style38 {
            width: 159px;
            height: 24px;
        }
        .auto-style39 {
            width: 176px;
            height: 36px;
        }
        .auto-style40 {
            width: 182px;
            height: 36px;
        }
        .auto-style41 {
            width: 159px;
            height: 36px;
        }
        .auto-style42 {
            width: 176px;
            height: 25px;
        }
        .auto-style43 {
            width: 182px;
            height: 25px;
        }
        .auto-style44 {
            width: 159px;
            height: 25px;
        }
        .auto-style45 {
            width: 182px;
            height: 19px;
        }
        .auto-style46 {
            width: 159px;
            height: 19px;
        }
        .auto-style47 {
            width: 176px;
            height: 19px;
        }
        .auto-style48 {
            width: 176px;
            height: 38px;
        }
        .auto-style49 {
            width: 182px;
            height: 38px;
        }
        .auto-style50 {
            width: 159px;
            height: 38px;
        }
        .auto-style51 {
            width: 83px;
            height: 23px;
        }
        .auto-style52 {
            width: 86px;
            height: 23px;
        }
        .auto-style53 {
            width: 182px;
            height: 23px;
        }
        .auto-style54 {
            width: 176px;
        }
        .auto-style65 {
            width: 182px;
            height: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1" style="width:100%">
        <tr>
            <td class="auto-style31"></td>
            <td colspan="2" class="auto-style6">
                </td>
            <td class="auto-style65">
                </td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="LOGIN-" Font-Bold="True" Font-Underline="True" ForeColor="#660066"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48"></td>
            <td class="auto-style49">
                <asp:Label ID="Label2" runat="server" Text="Login Type" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large"></asp:Label>
                -</td>
            <td class="auto-style50">
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFF99" Height="26px" Width="115px">
                    <asp:ListItem Value="0">Police Station</asp:ListItem>
                    <asp:ListItem Value="1">Admin</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style49">
                </td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style53">
                </td>
            <td class="auto-style51">
            </td>
            <td class="auto-style52">
                </td>
        </tr>
        <tr>
            <td class="auto-style48"></td>
            <td class="auto-style49">
                <asp:Label ID="Label3" runat="server" Text="Login Id-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style50">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF99" Height="25px" Width="147px"></asp:TextBox>
            </td>
            <td class="auto-style49">
                </td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style37">
                </td>
            <td class="auto-style38">
                </td>
            <td class="auto-style37">
                </td>
        </tr>
        <tr>
            <td class="auto-style39"></td>
            <td class="auto-style40">
                <asp:Label ID="Label4" runat="server" Text="Password-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" Height="25px" Width="147px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style40">
                </td>
        </tr>
        <tr>
            <td class="auto-style42"></td>
            <td class="auto-style43">
                </td>
            <td class="auto-style44">
                </td>
            <td class="auto-style43">
                </td>
        </tr>
        <tr>
            <td class="auto-style47"></td>
            <td class="auto-style45"></td>
            <td class="auto-style46">
                <asp:Button ID="Button1" runat="server" Text="GO...!!" OnClick="Button1_Click" />
            </td>
            <td class="auto-style45">
                </td>
        </tr>
    </table>
</asp:Content>

