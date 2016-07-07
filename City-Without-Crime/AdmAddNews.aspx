<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmAddNews.aspx.cs" Inherits="AdmAddNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style66 {
        width: 284px;
    }
    .auto-style67 {
        width: 228px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;height:540px">

        <table class="auto-style2">
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">
                    <asp:Label ID="Label7" runat="server" Font-Names="AR BERKLEY" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660066" Text="Add News Field- "></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="#000066" Text="Sno-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF99" ForeColor="#660066" Height="26px" Width="193px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="#000066" Text="Description-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" ForeColor="#660066" Height="26px" Width="193px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit-" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style68">&nbsp;</td>
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#990099" Text="."></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
     
           <table class="auto-style2">
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style69">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style67" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Names="AR BERKLEY" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660066" Text="Add Emergency News Field- "></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style69">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style69">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="#000066" Text="Sno-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFF99" ForeColor="#660066" Height="26px" Width="193px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style69">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" ForeColor="#000066" Text="Description-"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFF99" ForeColor="#660066" Height="26px" Width="193px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style69">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style69">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit-" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style69">&nbsp;</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#990099" Text="."></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>

