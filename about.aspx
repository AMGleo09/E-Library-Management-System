<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Elibrary_Management_Project.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General styling for container and sections */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            font-family: Arial, sans-serif;
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
        }
        h1, h2 {
            color: #333;
        }
        p {
            line-height: 1.6;
            color: #555;
        }
        .about-image {
            display: block;
            margin: 20px auto;
            width: 100%;
            max-width: 600px;
        }
        .terms-section {
            margin-top: 40px;
            background-color: #f7f7f7;
            padding: 20px;
            border-radius: 8px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>About E-Library</h1>
            <p>Welcome to the digital world of books. Explore, read, and enjoy unlimited access to knowledge!</p>
        </div>

        <!-- About Section -->
        <section class="about-section">
            <h2>Our Mission</h2>
            <p>Our mission is to provide a comprehensive digital library that gives users access to a vast collection of e-books, journals, and multimedia resources. We believe in making knowledge and literature accessible to everyone, anywhere.</p>
            
            <h2>What We Offer</h2>
            <p>Our e-library offers a diverse selection of books across genres and disciplines. Users can search, borrow, and enjoy resources from a single platform. Whether you’re looking for educational material, fiction, non-fiction, or research papers, we have something for everyone.</p>
            
            <!-- Image representing the library -->
            <img src="img/aboutlib.jfif" alt="About E-Library" class="about-image" />
        </section>

        <!-- Terms of Use Section -->
        <section class="terms-section">
            <h2>Terms of Use</h2>
            <p>By using our e-library, you agree to the following terms and conditions:</p>
            
            <ol>
                <li><strong>Access to Content:</strong> Users must have an active account to access certain resources in the library.</li>
                <li><strong>Personal Use Only:</strong> All e-books, articles, and resources provided are for personal and non-commercial use only.</li>
                <li><strong>Prohibited Activities:</strong> Unauthorized distribution, copying, or selling of library resources is strictly prohibited.</li>
                <li><strong>Account Responsibility:</strong> Users are responsible for the security and confidentiality of their accounts.</li>
                <li><strong>Late Returns and Penalties:</strong> Borrowed items should be returned on time. Late returns may incur penalties.</li>
            </ol>

            <p>If you have any questions regarding our terms, please contact our support team.</p>
        </section>
    </div>
</asp:Content>
