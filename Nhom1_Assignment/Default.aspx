<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Khách hàng</h1>
                </hgroup>
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <hgroup>
            </hgroup>
            
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
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="GiaTien" HeaderText="GiaTien" SortExpression="GiaTien" />
                    <asp:BoundField DataField="LoaiSP_MaLSP" HeaderText="LoaiSP_MaLSP" SortExpression="LoaiSP_MaLSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
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
            
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        </li>
        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>
</asp:Content>
