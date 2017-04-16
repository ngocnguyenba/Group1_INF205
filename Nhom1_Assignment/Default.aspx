<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <ol class="round">
        <li class="one">
            <h5>Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="260px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
                    <asp:BoundField DataField="GiaTien" HeaderText="Giá Tiền" SortExpression="GiaTien" />
                    <asp:BoundField DataField="LoaiSP_MaLSP" HeaderText="Mã Loại Sản Phẩm" SortExpression="LoaiSP_MaLSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" DeleteText="Xóa" EditText="Sửa" NewText="Thêm" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [GiaTien], [LoaiSP_MaLSP]) VALUES (@MaSP, @TenSP, @GiaTien, @LoaiSP_MaLSP)" SelectCommand="SELECT [MaSP], [TenSP], [GiaTien], [LoaiSP_MaLSP] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [GiaTien] = @GiaTien, [LoaiSP_MaLSP] = @LoaiSP_MaLSP WHERE [MaSP] = @MaSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="GiaTien" Type="String" />
                    <asp:Parameter Name="LoaiSP_MaLSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="GiaTien" Type="String" />
                    <asp:Parameter Name="LoaiSP_MaLSP" Type="String" />
                    <asp:Parameter Name="MaSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="245px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="SoHD" HeaderText="Số Hóa Đơn" SortExpression="SoHD" />
                    <asp:BoundField DataField="KhachHang_MaKH" HeaderText="Mã Khách Hàng" SortExpression="KhachHang_MaKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" DeleteText="Xóa" EditText="Sửa" NewText="Thêm" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [SoHD], [KhachHang_MaKH]) VALUES (@MaHD, @SoHD, @KhachHang_MaKH)" SelectCommand="SELECT [MaHD], [SoHD], [KhachHang_MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [SoHD] = @SoHD, [KhachHang_MaKH] = @KhachHang_MaKH WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="SoHD" Type="String" />
                    <asp:Parameter Name="KhachHang_MaKH" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoHD" Type="String" />
                    <asp:Parameter Name="KhachHang_MaKH" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Chi Tiết Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="284px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaCTHD" HeaderText="Mã Chi Tiết Hóa Đơn" ReadOnly="True" SortExpression="MaCTHD" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
                    <asp:BoundField DataField="SanPham_MaSP" HeaderText="Mã Sản Phẩm" SortExpression="SanPham_MaSP" />
                    <asp:BoundField DataField="HoaDon_MaHD" HeaderText="Mã Hóa Đơn" SortExpression="HoaDon_MaHD" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" DeleteText="Xóa" EditText="Sửa" NewText="Thêm" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
          
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CTHoaDon] WHERE [MaCTHD] = @MaCTHD" InsertCommand="INSERT INTO [CTHoaDon] ([MaCTHD], [SoLuong], [SanPham_MaSP], [HoaDon_MaHD]) VALUES (@MaCTHD, @SoLuong, @SanPham_MaSP, @HoaDon_MaHD)" SelectCommand="SELECT [MaCTHD], [SoLuong], [SanPham_MaSP], [HoaDon_MaHD] FROM [CTHoaDon]" UpdateCommand="UPDATE [CTHoaDon] SET [SoLuong] = @SoLuong, [SanPham_MaSP] = @SanPham_MaSP, [HoaDon_MaHD] = @HoaDon_MaHD WHERE [MaCTHD] = @MaCTHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaCTHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaCTHD" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="SanPham_MaSP" Type="String" />
                    <asp:Parameter Name="HoaDon_MaHD" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="SanPham_MaSP" Type="String" />
                    <asp:Parameter Name="HoaDon_MaHD" Type="String" />
                    <asp:Parameter Name="MaCTHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
          
        </li>

        <li class="four">
            <h4>Khách hàng</h4>
           <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Height="50px" Width="323px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                    <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
                    <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" SortExpression="SDT" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" DeleteText="Xóa" EditText="Sửa" NewText="Thêm" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
          
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [DiaChi], [HoTen], [SDT]) VALUES (@MaKH, @DiaChi, @HoTen, @SDT)" SelectCommand="SELECT [MaKH], [DiaChi], [HoTen], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [DiaChi] = @DiaChi, [HoTen] = @HoTen, [SDT] = @SDT WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>         
        </li>

        <li class="five">
            <h4>Loại Sản Phẩm</h4>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="265px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="SqlDataSource5">
                <AlternatingRowStyle BackColor="#99FF66" />
                <CommandRowStyle BackColor="#009900" Font-Bold="True" />
                <EditRowStyle BackColor="#66FFCC" />
                <FieldHeaderStyle BackColor="#33CC33" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaLSP" HeaderText="Mã Loại Sản Phẩm" ReadOnly="True" SortExpression="MaLSP" />
                    <asp:BoundField DataField="TenLSP" HeaderText="Tên Loại Sản Phẩm" SortExpression="TenLSP" />
                    <asp:BoundField DataField="ThuocTinh" HeaderText="Thuộc tính" SortExpression="ThuocTinh" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" EditText="Sửa" DeleteText="Xóa" NewText="Thêm" />
                </Fields>
                <FooterStyle BackColor="#33CC33" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#99FF99" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#009900" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#CCFF99" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSP] ([MaLSP], [TenLSP], [ThuocTinh]) VALUES (@MaLSP, @TenLSP, @ThuocTinh)" SelectCommand="SELECT [MaLSP], [TenLSP], [ThuocTinh] FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [TenLSP] = @TenLSP, [ThuocTinh] = @ThuocTinh WHERE [MaLSP] = @MaLSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                    <asp:Parameter Name="TenLSP" Type="String" />
                    <asp:Parameter Name="ThuocTinh" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLSP" Type="String" />
                    <asp:Parameter Name="ThuocTinh" Type="String" />
                    <asp:Parameter Name="MaLSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
