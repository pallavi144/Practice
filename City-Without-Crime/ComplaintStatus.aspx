<%@ Page Title="" Language="C#" MasterPageFile="~/cwc.master" AutoEventWireup="true" CodeFile="ComplaintStatus.aspx.cs" Inherits="ComplaintStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style65 {
        height: 25px;
    }
    .auto-style66 {
            width: 77px;
        }
    .auto-style67 {
        height: 25px;
        width: 77px;
    }
        .auto-style68 {
            width: 77px;
            height: 133px;
        }
        .auto-style69 {
            height: 133px;
        }
        .auto-style70 {
            width: 26px;
            height: 133px;
        }
        .auto-style71 {
            width: 26px;
        }
        .auto-style72 {
            height: 25px;
            width: 26px;
        }
        .auto-style73 {
            width: 26px;
            height: 59px;
        }
        .auto-style74 {
            width: 77px;
            height: 59px;
        }
        .auto-style75 {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style2">
    <tr>
        <td class="auto-style70"></td>
        <td class="auto-style68"></td>
        <td class="auto-style69"></td>
        <td class="auto-style69"></td>
        <td class="auto-style69"></td>
    </tr>
    <tr>
        <td class="auto-style71">
            &nbsp;</td>
        <td colspan="3">
            <asp:Label ID="Label12" runat="server" Font-Names="AR BERKLEY" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660066" Text="Login To View Status Of  Complaint-"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style73"></td>
        <td class="auto-style74"></td>
        <td class="auto-style75"></td>
        <td class="auto-style75"></td>
        <td class="auto-style75"></td>
    </tr>
    <tr>
        <td class="auto-style71">&nbsp;</td>
        <td class="auto-style66">&nbsp;</td>
        <td>
            <asp:Label ID="Label13" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="#000066" Text="Complaint Id-"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC" Height="23px" Width="162px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style67"></td>
        <td class="auto-style65">&nbsp;</td>
        <td class="auto-style65"></td>
        <td class="auto-style65"></td>
    </tr>
    <tr>
        <td class="auto-style71">&nbsp;</td>
        <td class="auto-style66">&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go..!!" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style71">&nbsp;</td>
        <td class="auto-style66">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

