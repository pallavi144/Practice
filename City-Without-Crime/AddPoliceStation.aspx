<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddPoliceStation.aspx.cs" Inherits="AddPoliceStation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 203px;
        }
        .auto-style5 {
            width: 203px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 203px;
            height: 30px;
        }
        .auto-style8 {
            height: 46px;
        }
        .auto-style65 {
            height: 30px;
            width: 93px;
        }
        .auto-style66 {
            width: 203px;
            height: 22px;
        }
        .auto-style67 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="height:540px;overflow-x:hidden;overflow-y:auto">
    <table class="auto-style2">
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style65" colspan="2"></td>
            <td class="auto-style65"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="Label20" runat="server" Font-Names="Arial Black" Font-Size="XX-Large" Font-Underline="True" ForeColor="#000066" Text="Police Station Details"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Police Station Id-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Police Station Name-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Address-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Phone No-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Mobile No-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Police Station Head-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Set Password To Login-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit.." />
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style66"></td>
            <td class="auto-style67" colspan="2">
                <asp:Label ID="Label21" runat="server" ForeColor="#000099" Text="."></asp:Label>
            </td>
            <td class="auto-style67"></td>
        </tr>
    </table>
         </div>
</asp:Content>

