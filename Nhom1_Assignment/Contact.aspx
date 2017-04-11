<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span> +84 168.420.2337
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">duongnhph04219@fpt.edu.vn</a></span></p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@example.com">ngocnbph04194@</a>fpt.edu.vn</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
            <p><b>FPT Polytechnic - Khu Mỹ Đình 1, đường Hàm Nghi, Nam Từ Liêm, Hà Nội</b></p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14896.46032530678!2d105.76723032590651!3d21.02808083160745!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1svi!2s!4v1491889703815" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
</asp:Content>