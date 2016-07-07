<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmUpdateNews.aspx.cs" Inherits="AdmUpdateNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .auto-style65 {
            height: 34px;
        }
        .auto-style66 {
            height: 34px;
            width: 61px;
        }
        .auto-style67 {
            width: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div style="height:540px;overflow-x:hidden;overflow-y:auto"> 
    <table class="auto-style2">
        <tr>
            <td class="auto-style65"></td>
            <td class="auto-style65"></td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    
<asp:Label ID="Label3" runat="server" Text="Update News-" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660066"></asp:Label>
            </td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="4px" CellPadding="3" CellSpacing="1" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="Sno" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="Sno" HeaderText="Sno" />
            <asp:BoundField DataField="Description" HeaderText="News" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    
<asp:Label ID="Label4" runat="server" Text="Breaking News-" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660066"></asp:Label>
            </td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" CellSpacing="2" ForeColor="Black" DataKeyNames="Sno" OnRowDeleting="GridView2_RowDeleting">
        <Columns>
            <asp:BoundField DataField="Sno" HeaderText="Sno" />
            <asp:BoundField DataField="Description" HeaderText="News" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
    </table>
       </div>
</asp:Content>

