<%@ Page Title="" Language="C#" MasterPageFile="~/cwc.master" AutoEventWireup="true" CodeFile="FileComplaint.aspx.cs" Inherits="FileComplaint" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 276px;
            height: 23px;
        }
        .auto-style8 {
        height: 23px;
        width: 342px;
    }
    .auto-style9 {
        width: 93px;
        height: 23px;
    }
    .auto-style13 {
            width: 64px;
        }
    .auto-style14 {
        }
    .auto-style17 {
        }
        .auto-style26 {
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
        }
        .auto-style28 {
            width: 229px;
            height: 26px;
        }
        .auto-style29 {
            width: 342px;
            height: 26px;
        }
        .auto-style31 {
            height: 26px;
            width: 64px;
        }
        .auto-style32 {
            height: 16px;
        }
        .auto-style65 {
            width: 64px;
            height: 27px;
            margin-bottom: 0px;
        }
        .auto-style66 {
            width: 229px;
            height: 27px;
        }
        .auto-style67 {
            height: 27px;
            width: 93px;
        }
        .auto-style68 {
            height: 27px;
        }
        .auto-style69 {
            width: 229px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:40px">   &nbsp;</div>
    
    <div>  
        <table class="auto-style1" style="width:100%">
            <tr>
                
                <td class="auto-style32" colspan="5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Font-Size="XX-Large" Text="USER DETAILS" ForeColor="#660066" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style27" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style28">
                    <asp:Label ID="Label1" runat="server" Text="Name -" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style29" colspan="2">
                    <asp:TextBox ID="TextBox18" runat="server" Width="200px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style31">
                    </td>
                <td class="auto-style28">
                    <asp:Label ID="Label7" runat="server" Text="Age-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style29" colspan="2">
                    <asp:TextBox ID="TextBox17" runat="server" Width="200px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style65">
                    </td>
                <td class="auto-style66">
                    <asp:Label ID="Label3" runat="server" Text="Address-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style67" colspan="2">
                    <asp:TextBox ID="TextBox16" runat="server" Width="200px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style68"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style69">
                    <asp:Label ID="Label4" runat="server" Text="Contact No-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style14" colspan="2">
                    <asp:TextBox ID="TextBox15" runat="server" Width="200px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style69">
                    <asp:Label ID="Label5" runat="server" Text="Select Police Station-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style14" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFF99">
                        <asp:ListItem Value="101">SURAJPUR</asp:ListItem>
                        <asp:ListItem Value="102">RABUPURA</asp:ListItem>
                        <asp:ListItem Value="103">NOIDA Sector-58</asp:ListItem>
                        <asp:ListItem Value="104">NOIDA Sector-49</asp:ListItem>
                        <asp:ListItem Value="105">NOIDA Sector-39</asp:ListItem>
                        <asp:ListItem Value="106">NOIDA Sector-24</asp:ListItem>
                        <asp:ListItem Value="107">NOIDA Sector-20</asp:ListItem>
                        <asp:ListItem Value="108">NOIDA Phase-II</asp:ListItem>
                        <asp:ListItem Value="109">KASNA</asp:ListItem>
                        <asp:ListItem Value="110">KAKOR</asp:ListItem>
                        <asp:ListItem Value="111">JEWAR</asp:ListItem>
                        <asp:ListItem Value="112">JARCHA</asp:ListItem>
                        <asp:ListItem Value="113">JAHANGIRPURI</asp:ListItem>
                        <asp:ListItem Value="114">GREATER NOIDA</asp:ListItem>
                        <asp:ListItem Value="115">DANKAUR</asp:ListItem>
                        <asp:ListItem Value="116">DADRI</asp:ListItem>
                        <asp:ListItem Value="117">BISRAKH</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style69">
                    <asp:Label ID="Label6" runat="server" Text="Type Of Crime-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style14" colspan="2">
                  
                    <asp:TextBox ID="TextBox14" runat="server" Width="200px" BackColor="#FFFF99"></asp:TextBox>
                  
                </td>
                <td>&nbsp;</td>
            </tr>
              
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style69">
                        <asp:Label ID="Label16" runat="server" Text="Complaint Details-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style14" colspan="2">
                        <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Width="300px" BackColor="#FFFF99"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style69">
                        <asp:Label ID="Label18" runat="server" Text="Complaint Id-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                    </td>
                <td class="auto-style14" colspan="2">
                  
                    <asp:TextBox ID="TextBox19" runat="server" Width="200px" BackColor="#FFFF99"></asp:TextBox>
                  
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style69">
                    <asp:Label ID="Label20" runat="server" Text="Current Status-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                    </td>
                <td class="auto-style14" colspan="2">
                  
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px" BackColor="#FFFF99">Pending..</asp:TextBox>
                  
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style69">
                    <asp:Label ID="Label21" runat="server" Text="Date Of Crime-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                    </td>
                <td>
                    
                    
                  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                    <asp:TextBox ID="TextBox21" runat="server" Width="129px" BackColor="#FFFF99"  ReadOnly="true" Height="21px"></asp:TextBox>
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/img/calender.png" Width="30px"  />
                    <asp:CalendarExtender runat="server" PopupButtonID="ImageButton1" TargetControlID="TextBox21" ID="CalendarExtender1" Format="dd/MM/yyyy"></asp:CalendarExtender>
                  
               </td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style69">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style69">&nbsp;</td>
                <td class="auto-style14" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Submit_Click" Text="Submit.." />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17" colspan="3">
                    <asp:Label ID="Label19" runat="server" Font-Names="Calibri Light" Font-Size="Large" ForeColor="#660066" Text="."></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
             </div>
    <div style="height:50px"></div>
</asp:Content>

