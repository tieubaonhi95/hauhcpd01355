<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Ma_KH" DataSourceID="SqlDataKhachHang" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" ReadOnly="True" 
                    SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ten_KH" HeaderText="Ten_KH" 
                    SortExpression="Ten_KH" />
                <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" 
                    SortExpression="GioiTinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" 
                    SortExpression="DiaChi" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" 
                    EditText="Sửa" InsertText="Them" NewText="Moi" SelectText="Chon" 
                    ShowDeleteButton="True" ShowEditButton="True" UpdateText="Sửa" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    
        
        <asp:SqlDataSource ID="SqlDataKhachHang" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Khachhang] WHERE [Ma_KH] = @original_Ma_KH AND [Ten_KH] = @original_Ten_KH AND [GioiTinh] = @original_GioiTinh AND [DiaChi] = @original_DiaChi AND [SDT] = @original_SDT AND [Email] = @original_Email" 
            InsertCommand="INSERT INTO [Khachhang] ([Ma_KH], [Ten_KH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (@Ma_KH, @Ten_KH, @GioiTinh, @DiaChi, @SDT, @Email)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Khachhang]" 
            UpdateCommand="UPDATE [Khachhang] SET [Ten_KH] = @Ten_KH, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [SDT] = @SDT, [Email] = @Email WHERE [Ma_KH] = @original_Ma_KH AND [Ten_KH] = @original_Ten_KH AND [GioiTinh] = @original_GioiTinh AND [DiaChi] = @original_DiaChi AND [SDT] = @original_SDT AND [Email] = @original_Email">
            <DeleteParameters>
                <asp:Parameter Name="original_Ma_KH" Type="String" />
                <asp:Parameter Name="original_Ten_KH" Type="String" />
                <asp:Parameter Name="original_GioiTinh" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="original_Ma_KH" Type="String" />
                <asp:Parameter Name="original_Ten_KH" Type="String" />
                <asp:Parameter Name="original_GioiTinh" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_KH" 
            DataSourceID="SqlDataKhachHang" DefaultMode="Insert">
            <EditItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel1" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                GioiTinh:
                <asp:TextBox ID="GioiTinhTextBox" runat="server" 
                    Text='<%# Bind("GioiTinh") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                GioiTinh:
                <asp:TextBox ID="GioiTinhTextBox" runat="server" 
                    Text='<%# Bind("GioiTinh") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ten_KH:
                <asp:Label ID="Ten_KHLabel" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                GioiTinh:
                <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
                <br />
                DiaChi:
                <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                SDT:
                <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
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
