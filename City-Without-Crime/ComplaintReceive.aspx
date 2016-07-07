<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceStation.master" AutoEventWireup="true" CodeFile="ComplaintReceive.aspx.cs" Inherits="ComplaintReceive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
        .auto-style2 {
            width: 251px;
        }
    .auto-style3 {
         }
    .auto-style5 {
        width: 105px;
        height: 27px;
    }
    .auto-style7 {
             width: 251px;
             height: 27px;
         }
    .auto-style8 {
        height: 56px;
    }
    .auto-style9 {
        width: 252px;
        height: 56px;
    }
    .auto-style10 {
         }
    .auto-style11 {
        width: 84px;
    }
    .auto-style12 {
        width: 617px;
    }
         .auto-style65 {
             width: 19px;
             height: 85px;
         }
         .auto-style66 {
             width: 20px;
         }
         .auto-style67 {
             width: 19px;
             height: 26px;
         }
         .auto-style68 {
             width: 86px;
             height: 26px;
         }
         .auto-style69 {
             width: 20px;
             height: 26px;
         }
         .auto-style70 {
             width: 110px;
             height: 27px;
             margin-bottom: 0px;
         }
         .auto-style71 {
             height: 27px;
             width: 93px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:540px;overflow:auto">
     <table style="width:100%">
     <tr>
         <td class="auto-style5"></td>
         <td class="auto-style70"></td>
         <td class="auto-style7"></td>
         <td class="auto-style71"></td>
     </tr>
     <tr>
         <td class="auto-style3" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Complaints Recieved Are As Follows-" Font-Bold="True" Font-Names="Calibri Light" Font-Size="XX-Large" ForeColor="#660066" Font-Underline="True"></asp:Label></td>
         <td>
             <br />
         </td>
     </tr>
     <tr>
         <td class="auto-style3" colspan="3">&nbsp;</td>
         <td>
             &nbsp;</td>
     </tr>
 </table>
    
       <table style="width:100%">
           <tr>
               <td class="auto-style65">&nbsp;</td>
               <td class="auto-style12"> 
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="Solid" BorderWidth="4px" CellPadding="3" Height="154px"  CellSpacing="3" Font-Bold="True" Font-Names="Calibri Light" Font-Size="Large" style="margin-left: 2px ; width:100%" HorizontalAlign="Center" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"  >
           <Columns>
               <asp:BoundField DataField="Id" HeaderText="Complaint Id" />
               <asp:BoundField DataField="Description" HeaderText="Description" />
               <asp:BoundField DataField="PoliceStationID" HeaderText="Police Station Id" />
               <asp:BoundField DataField="name" HeaderText="Name" />
               <asp:BoundField DataField="age" HeaderText="Age" />
               <asp:BoundField DataField="cno" HeaderText="Contact No" />
               <asp:BoundField DataField="Date" HeaderText="Date Of Crime" />
               <asp:BoundField DataField="type_crime" HeaderText="Crime Type" />
               <asp:BoundField DataField="address" HeaderText="Address" />
               <asp:BoundField DataField="Status" HeaderText="Complaint Status" />
               <asp:CommandField ShowEditButton="True" />
           </Columns>
                   <EditRowStyle BorderStyle="Solid" BorderWidth="3px" Font-Names="Calibri Light" />
           <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
           <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
           <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
           <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#FFF1D4" />
           <SortedAscendingHeaderStyle BackColor="#B95C30" />
           <SortedDescendingCellStyle BackColor="#F1E5CE" />
           <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView> </td>
               <td class="auto-style66"></td>
           </tr>
           <tr>
               <td class="auto-style67"></td>
               <td class="auto-style68"> </td>
               <td class="auto-style69"></td>
           </tr>
       </table>
    </div>
       

</asp:Content>

