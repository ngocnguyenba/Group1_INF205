<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Nhóm 1 - Giới thiệu thành viên</h2>
    </hgroup>

    <article>
        <p>        
            1. Nguyễn Hồng Dương - Nhóm trưởng (Leader) - PH04219
        </p>

        <p>        
            2. Nguyễn Bá Ngọc - PH04194
        </p>

        <p>        
            3. Nguyễn Thành Lũy - PH04174
        </p>

        <p>4. Lê Quang Hưng - PH03298</p>
        <p>5. Nguyễn Hiếu Nghĩa - PH02933</p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About.aspx">About</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>