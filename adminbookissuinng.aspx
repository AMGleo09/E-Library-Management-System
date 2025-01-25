<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="adminbookissuinng.aspx.cs" Inherits="Elibrary_Management_Project.adminbookissuinng" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/footerdown.css" rel="stylesheet" />



    <script src="elibrary%20links/2%20all%20js/1%20jquery/jquery-3.7.1.min.js"></script>
    <script src="Datatables/js/jquery.dataTables.min.js"></script>
    <link href="Datatables/css/jquery.dataTables.min.css" rel="stylesheet" />


    


    <script type="text/javascript">

        $(document).ready(function () {
            // Initialize DataTable after the page fully loads
            $('#<%= GridView1.ClientID%>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                rowCallback: function (row, data, index) {
                    // Check if the 'Due Date' column (5th column) is overdue
                    const dueDateText = data[5]; // Adjust index based on column layout
                    const today = new Date();
                    const dueDate = new Date(dueDateText); // Parses yyyy-MM-dd format

                    if (dueDate < today) {
                        $(row).addClass('overdue-row'); // Apply CSS class
                    }
                }
            });




        });



        <%--$(document).ready(function () {
            $('#<%= GridView1.ClientID %>').DataTable({
                rowCallback: function (row, data, index) {
                    // Check if the 'Due Date' column (5th column) is overdue
                    const dueDateText = data[5]; // Adjust index based on column layout
                    const today = new Date();
                    const dueDate = new Date(dueDateText); // Parses yyyy-MM-dd format

                    if (dueDate < today) {
                        $(row).addClass('overdue-row'); // Apply CSS class
                    }
                }
            });
        });--%>




    </script>



    <style>
        .overdue-row {
            background-color: PaleVioletRed !important;
        }
    </style>


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
                                    <h4>Book Issuing</h4>


                                </center>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="img/books.jfif" />
                                </center>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>




                        <div class="row">



                            <div class="col-md-6">
                                <asp:Label ID="Label2" runat="server" Text="Member ID"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1" placeholder="Member ID "></asp:TextBox>

                                </div>
                            </div>


                            <div class="col-md-6">
                                <asp:Label ID="Label1" runat="server" Text="Book ID"></asp:Label>
                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" placeholder=" Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>


                        </div>


                        <div class="row">



                            <div class="col-md-6">
                                <asp:Label ID="Label3" runat="server" Text="Member Name"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3" placeholder="Member Name " ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <asp:Label ID="Label4" runat="server" Text="Book Name"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox4" placeholder="Book Name " ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>





                        </div>



                        <div class="row">



                            <div class="col-md-6">
                                <asp:Label ID="Label5" runat="server" Text="Issue Date"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox5" placeholder="Start Date" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <asp:Label ID="Label6" runat="server" Text="Due Date"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox6" placeholder="End Date " TextMode="Date"></asp:TextBox>

                                </div>
                            </div>





                        </div>





                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="Button2" CssClass="btn btn-primary buttonbloo btn-lg" runat="server" Text="Issue" OnClick="Button2_Click" />
                            </div>



                            <div class="col-6">
                                <asp:Button ID="Button4" CssClass="btn btn-success buttonbloo btn-lg" runat="server" Text="Return" OnClick="Button4_Click" />
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
                                    <h4>Issued Book List </h4>


                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class=" table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableViewState="true" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
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
