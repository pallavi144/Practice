<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation.master" AutoEventWireup="true" CodeFile="ModifyCriminalRecord.aspx.cs" Inherits="ModifyCriminalRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            height: 48px;
        }
    .auto-style65 {
        height: 32px;
        width: 15px;
    }
    .auto-style66 {
        height: 48px;
        width: 15px;
    }
    .auto-style67 {
        height: 24px;
        width: 15px;
    }
    .auto-style68 {
        width: 15px;
    }
    .auto-style69 {
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:540px;overflow:auto">
    <table class="auto-style2">
        <tr>
            <td class="auto-style65"></td>
            <td class="auto-style69"></td>
            <td class="auto-style65"></td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="XX-Large" Font-Underline="True" ForeColor="#000066" Text="Criminal Details"></asp:Label>
            </td>
            <td class="auto-style66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style67">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style67">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style68">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="3px" CellPadding="4" Font-Bold="False" Font-Italic="True" Font-Names="Calibri" ForeColor="#333399"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowHeaderWhenEmpty="True" Width="100%" DataKeyNames="CriminalID">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CriminalID" HeaderText="Criminal Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Height" HeaderText="Height" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" />
                        <asp:BoundField DataField="PoliceStationID" HeaderText="Police Station Id" />
                        <asp:BoundField DataField="CrimeLevel" HeaderText="Crime Level" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:ImageField DataImageUrlField="Criminal_Picture" HeaderText="Criminal Picture">
                        </asp:ImageField>
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
                </asp:GridView>
            </td>
            <td class="auto-style68">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style68">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style68">&nbsp;</td>
        </tr>
    </table>

    </div>
</asp:Content>

