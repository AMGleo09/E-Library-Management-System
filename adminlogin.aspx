<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Elibrary_Management_Project.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <%--<link href="css/footerdown.css" rel="stylesheet" />--%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">

            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="150" src="img/admin.jfif" />
                            </center>
                        </div>
                    </div>

                     <div class="row">
                        <div class="col">
                              <center>
                                 <h3>Admin Login</h3>
                             </center>
                        </div>
                     </div>
                    
                    <div class="row">
                        <div class="col">
                             <hr />
                        </div>
                     </div>
                    

                    <div class="row">
                        <div class="col">     

                            <asp:Label ID="Label1" runat="server" Text="Admin ID"></asp:Label>
                            <div class="mb-3">                                    
                                <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1" placeholder="Admin ID"></asp:TextBox>
                                </div>

                          
                                
                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>   
                            <div class="mb-3"> 
                                <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" placeholder="Password" TextMode="Password"></asp:TextBox>

                            </div> 
                            

                             <div class="mb-3"> 
                                 <asp:Button ID="Button1" CssClass="btn btn-success buttonbloo btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />

                            </div> 
                           
                            
                            



                        </div>
                     </div>



                </div>
            </div>



            <a href="homepage.aspx"><< Back to home page</a>
        </div>
    </div>
</div>

</asp:Content>
