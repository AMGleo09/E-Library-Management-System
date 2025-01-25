<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="Elibrary_Management_Project.adminmembermanagement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/footerdown.css" rel="stylesheet" />


     <script src="elibrary%20links/2%20all%20js/1%20jquery/jquery-3.7.1.min.js"></script>    
    <script src="Datatables/js/jquery.dataTables.min.js"></script>    
    <link href="Datatables/css/jquery.dataTables.min.css" rel="stylesheet" />


    <script type="text/javascript">
        

        $(document).ready(function () {
            // Initialize DataTable after the page fully loads
            $('#<%= GridView1.ClientID%>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
    });
    </script>


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">

                <div class="card">
                    <div class="card-body">




                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>


                                </center>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="img/user.jfif" />
                                </center>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>




                        <div class="row">


                            <div class="col-md-3">
                                <asp:Label ID="Label1" runat="server" Text="Member ID"></asp:Label>
                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1" placeholder=" Member ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server" Text="Fullname"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" placeholder="Fullname " ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>


                            <div class="col-md-5">
                                <asp:Label ID="Label7" runat="server" Text="Account Status"></asp:Label>

                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBox7" placeholder="Account Status " ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success me-1 ms-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning me-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fa-solid fa-circle-xmark"></i></asp:LinkButton>

                                    </div>
                                </div>
                            </div>




                        </div>


                        <div class="row">



                            <div class="col-md-3">
                                <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3" placeholder="Date of birth " ReadOnly="True" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>


                            <div class="col-md-4">
                                <asp:Label ID="Label8" runat="server" Text="Contact Number"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox8" placeholder="Contact No. " ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>




                            <div class="col-md-5">
                                <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox4" placeholder="Email ID" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>





                        </div>





                        <div class="row">



                            <div class="col-md-4">
                                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox9" placeholder="State" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>


                            <div class="col-md-4">
                                <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox10" placeholder="City" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>




                            <div class="col-md-4">
                                <asp:Label ID="Label11" runat="server" Text="Pin Code"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox11" placeholder="Pin Code " ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>





                        </div>






                        <div class="row">




                            <div class="col">
                                <asp:Label ID="Label6" runat="server" Text="Full Postal Address"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox6" Placeholder="My Home" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>





                        </div>





                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button ID="Button2" CssClass="btn btn-danger buttonbloo btn-lg" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
                            </div>













                        </div>
                    </div>

                </div>

                <a href="homepage.aspx"><< Back to home page</a>
            </div>




            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List </h4>


                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="member_id">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>



                    </div>
                </div>
            </div>


        </div>
    </div>


</asp:Content>
