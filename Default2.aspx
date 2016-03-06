<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Ma_HoaDon" DataSourceID="SqlDataHoaDon" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Ma_HoaDon" HeaderText="Ma_HoaDon" ReadOnly="True" 
                    SortExpression="Ma_HoaDon" />
                <asp:BoundField DataField="Ten_HoaDon" HeaderText="Ten_HoaDon" 
                    SortExpression="Ten_HoaDon" />
                <asp:BoundField DataField="Ten_KH" HeaderText="Ten_KH" 
                    SortExpression="Ten_KH" />
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" SortExpression="Ma_KH" />
                <asp:CommandField ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" 
                    EditText="Sửa" InsertText="Them" NewText="Moi" SelectText="Chon" 
                    ShowDeleteButton="True" ShowEditButton="True" UpdateText="Sửa" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataHoaDon" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [HoaDon] WHERE [Ma_HoaDon] = @Ma_HoaDon" 
            InsertCommand="INSERT INTO [HoaDon] ([Ma_HoaDon], [Ten_HoaDon], [Ten_KH], [Ma_KH]) VALUES (@Ma_HoaDon, @Ten_HoaDon, @Ten_KH, @Ma_KH)" 
            SelectCommand="SELECT * FROM [HoaDon]" 
            UpdateCommand="UPDATE [HoaDon] SET [Ten_HoaDon] = @Ten_HoaDon, [Ten_KH] = @Ten_KH, [Ma_KH] = @Ma_KH WHERE [Ma_HoaDon] = @Ma_HoaDon">
            <DeleteParameters>
                <asp:Parameter Name="Ma_HoaDon" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_HoaDon" Type="String" />
                <asp:Parameter Name="Ten_HoaDon" Type="String" />
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_HoaDon" Type="String" />
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ma_HoaDon" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_HoaDon" 
            DataSourceID="SqlDataHoaDon" DefaultMode="Insert">
            <EditItemTemplate>
                Ma_HoaDon:
                <asp:Label ID="Ma_HoaDonLabel1" runat="server" 
                    Text='<%# Eval("Ma_HoaDon") %>' />
                <br />
                Ten_HoaDon:
                <asp:TextBox ID="Ten_HoaDonTextBox" runat="server" 
                    Text='<%# Bind("Ten_HoaDon") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_HoaDon:
                <asp:TextBox ID="Ma_HoaDonTextBox" runat="server" 
                    Text='<%# Bind("Ma_HoaDon") %>' />
                <br />
                Ten_HoaDon:
                <asp:TextBox ID="Ten_HoaDonTextBox" runat="server" 
                    Text='<%# Bind("Ten_HoaDon") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_HoaDon:
                <asp:Label ID="Ma_HoaDonLabel" runat="server" Text='<%# Eval("Ma_HoaDon") %>' />
                <br />
                Ten_HoaDon:
                <asp:Label ID="Ten_HoaDonLabel" runat="server" 
                    Text='<%# Bind("Ten_HoaDon") %>' />
                <br />
                Ten_KH:
                <asp:Label ID="Ten_KHLabel" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
