<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="RemovePoliceStation.aspx.cs" Inherits="RemovePoliceStation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style65 {
            width: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="height:540px;overflow:auto">
       <table class="auto-style2">
            <tr>
               <td class="auto-style65">&nbsp;</td>
               <td>&nbsp;</td>
               <td class="auto-style65">&nbsp;</td>
           </tr>
            <tr>
               <td class="auto-style65">&nbsp;</td>
               <td>
                   <asp:Label ID="Label7" runat="server" Font-Names="AR BERKLEY" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660066" Text="Police Station Details-"></asp:Label>
                </td>
               <td class="auto-style65">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style65">&nbsp;</td>
               <td>&nbsp;</td>
               <td class="auto-style65">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style65">&nbsp;</td>
               <td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="3px" CellPadding="4" Font-Bold="False" Font-Italic="True" Font-Names="Calibri" ForeColor="#333399" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowHeaderWhenEmpty="True" Width="100%" DataKeyNames="PoliceStationID">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="PoliceStationID" HeaderText="Police Station Id" />
                        <asp:BoundField DataField="PoliceStationName" HeaderText="Police Station Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="PStationHead" HeaderText="Police Station Head" />
                        <asp:BoundField DataField="Password" HeaderText="Password" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView></td>
               <td class="auto-style65">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style65">&nbsp;</td>
               <td>&nbsp;</td>
               <td class="auto-style65">&nbsp;</td>
           </tr>
       </table>
  </div>
       
</asp:Content>

