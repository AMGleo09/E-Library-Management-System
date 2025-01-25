<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="Elibrary_Management_Project.terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Container and section styling for the terms page */
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
        p, li {
            color: #555;
            line-height: 1.6;
        }
        ol {
            padding-left: 20px;
        }
        .terms-section {
            margin-top: 20px;
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
            <h1>Terms and Conditions</h1>
            <p>Please review our terms and conditions before using our services.</p>
        </div>

        <!-- Terms and Conditions Section -->
        <section class="terms-section">
            <h2>Acceptance of Terms</h2>
            <p>By accessing or using our e-library platform, you agree to be bound by these terms and all applicable laws and regulations.</p>
            
            <h2>Use of Library Resources</h2>
            <ol>
                <li><strong>Non-commercial Use:</strong> All resources, including e-books, journals, and multimedia, are provided for personal and educational use only.</li>
                <li><strong>Copyright Compliance:</strong> Users must respect all copyright and intellectual property rights of the authors and publishers.</li>
                <li><strong>Resource Availability:</strong> We strive to maintain accurate availability information, but resources are subject to change or removal without notice.</li>
            </ol>

            <h2>User Account and Responsibility</h2>
            <ol>
                <li><strong>Account Creation:</strong> Users must create an account to access restricted resources. Ensure your account details are accurate and up-to-date.</li>
                <li><strong>Account Security:</strong> Users are responsible for safeguarding their login credentials and for any activity that occurs under their account.</li>
            </ol>

            <h2>Borrowing and Returning Resources</h2>
            <ol>
                <li><strong>Loan Period:</strong> Borrowed resources must be returned or renewed before the due date to avoid penalties.</li>
                <li><strong>Overdue Fees:</strong> Late returns may incur fees, which will be charged to the user’s account.</li>
            </ol>

            <h2>Prohibited Activities</h2>
            <p>The following activities are prohibited on our platform:</p>
            <ul>
                <li>Reproduction, distribution, or resale of any content without permission.</li>
                <li>Attempting to breach security or unauthorized access to resources.</li>
                <li>Engaging in activities that disrupt the service for other users.</li>
            </ul>

            <h2>Changes to Terms</h2>
            <p>We reserve the right to modify these terms at any time. Continued use of the platform following any changes indicates acceptance of the updated terms.</p>

            <h2>Contact Information</h2>
            <p>If you have any questions or concerns regarding these terms, please contact our support team.</p>
        </section>
    </div>
</asp:Content>
