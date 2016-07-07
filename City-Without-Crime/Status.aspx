<%@ Page Title="" Language="C#" MasterPageFile="~/cwc.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style84 {
            width: 203px;
        }
        .auto-style85 {
            width: 17px;
        }
        .auto-style86 {
            width: 328px;
        }
        .auto-style87 {
            height: 41px;
        }
        .auto-style88 {
            height: 39px;
        }
        .auto-style89 {
            height: 38px;
        }
        .auto-style90 {
            width: 100%;
            height: 100%;
            border: 1px solid #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:540px;width:100%;overflow-x:hidden;overflow-y:auto">
    <table class="auto-style2">
        <tr>
            <td class="auto-style87"></td>
            <td class="auto-style87"></td>
            <td class="auto-style87">
           
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Calibri" Font-Size="Medium" ForeColor="#990033" OnClick="LinkButton1_Click">Logout..</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style88"></td>
            <td class="auto-style88">
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Larger" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style88"></td>
        </tr>
        <tr>
            <td class="auto-style88"></td>
            <td class="auto-style88">
                <asp:Label ID="Label2" runat="server" Text="Complaint Status-" Font-Bold="False" Font-Names="AR BERKLEY" Font-Size="XX-Large" Font-Underline="True" ForeColor="#000066"></asp:Label>
            </td>
            <td class="auto-style88"></td>
        </tr>
        <tr>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" Height="330px" RepeatDirection="Horizontal" Width="600px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" GridLines="Both" HorizontalAlign="Left" RepeatLayout="Flow" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate >
                <div style="width:100%;height:101%">
               <table class="auto-style1" cellspacing="0" style="width:100%;height:100%" border="1">
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label21" runat="server" Text="Complaint Id" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("Id") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Age"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("age") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Contact No"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("cno") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Police Station Id"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("PoliceStationID") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Date Of Crime"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("Date") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Description"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Type Of Crime"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label18" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("type_crime") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Address"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("address") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style84">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Medium" ForeColor="#003300" Text="Complaint Status"></asp:Label>
                        </td>
                        <td class="auto-style86">
                            <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("Status") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                    </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    
    </div>
</asp:Content>

