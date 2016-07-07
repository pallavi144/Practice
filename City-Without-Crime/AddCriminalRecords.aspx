<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation.master" AutoEventWireup="true" CodeFile="AddCriminalRecords.aspx.cs" Inherits="AddCriminalRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style7 {
        }
        .auto-style8 {
            width: 186px;
        }
        .auto-style9 {
        }
        .auto-style10 {
            width: 243px;
        }
        .auto-style67 {
            height: 19px;
        }
        .auto-style68 {
            height: 37px;
        }
        .auto-style69 {
            width: 267px;
            height: 99px;
        }
        .auto-style70 {
            width: 267px;
            height: 19px;
        }
        .auto-style72 {
            width: 267px;
            height: 41px;
        }
        .auto-style74 {
            height: 41px;
        }
        .auto-style75 {
            width: 204px;
            height: 41px;
            margin-bottom: 0px;
        }
        .auto-style76 {
            width: 267px;
            height: 40px;
        }
        .auto-style77 {
            width: 204px;
            height: 40px;
            margin-bottom: 0px;
        }
        .auto-style78 {
            height: 40px;
        }
        .auto-style80 {
            width: 204px;
            height: 38px;
            margin-bottom: 0px;
        }
        .auto-style81 {
            width: 267px;
            height: 38px;
        }
        .auto-style82 {
            height: 38px;
        }
        .auto-style83 {
            width: 267px;
            height: 26px;
        }
        .auto-style84 {
            width: 204px;
            height: 26px;
            margin-bottom: 0px;
        }
        .auto-style85 {
            height: 26px;
        }
        .auto-style87 {
            width: 204px;
            height: 39px;
            margin-bottom: 0px;
        }
        .auto-style88 {
            width: 267px;
            height: 39px;
        }
        .auto-style89 {
            height: 39px;
        }
        .auto-style90 {
            width: 204px;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:540px;overflow-x:hidden;overflow-y:auto">
    <table class="auto-style2">
        <tr>
            <td class="auto-style70"></td>
            <td class="auto-style90"></td>
            <td class="auto-style67"></td>
            <td class="auto-style67"></td>
        </tr>
        <tr>
            <td class="auto-style68" colspan="4">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="XX-Large" Font-Underline="True" ForeColor="#000066" Text="Criminal Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style72"></td>
            <td class="auto-style75">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Criminal Id-"></asp:Label>
            </td>
            <td class="auto-style74">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style74"></td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Name-"></asp:Label>
            </td>
            <td class="auto-style78">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" Height="28px" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style78"></td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Gender-"></asp:Label>
            </td>
            <td class="auto-style78">
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFF99" Height="27px" Width="210px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style78"></td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Height-"></asp:Label>
            </td>
            <td class="auto-style78">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style78"></td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Weight-"></asp:Label>
            </td>
            <td class="auto-style78">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style78"></td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Police Station Id-"></asp:Label>
            </td>
            <td class="auto-style78">
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style78"></td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Crime Level-"></asp:Label>
            </td>
            <td class="auto-style78">
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style78"></td>
        </tr>
        <tr>
            <td class="auto-style81"></td>
            <td class="auto-style80">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Status-"></asp:Label>
            </td>
            <td class="auto-style82">
                <asp:TextBox ID="TextBox8" runat="server" BackColor="#FFFF99" Height="28px" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style82"></td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#660066" Text="Criminal Picture-"></asp:Label>
            </td>
            <td class="auto-style78">&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFFF99" Height="28px" Width="291px" />
            </td>
            <td class="auto-style78"></td>
        </tr>
        <tr>
            <td class="auto-style83"></td>
            <td class="auto-style84"></td>
            <td class="auto-style85"></td>
            <td class="auto-style85"></td>
        </tr>
        <tr>
            <td class="auto-style83">&nbsp;</td>
            <td class="auto-style84">&nbsp;</td>
            <td class="auto-style85">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit.." />
            </td>
            <td class="auto-style85">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style9" colspan="2">
                <asp:Label ID="Label12" runat="server" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="#000099" Text="."></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

