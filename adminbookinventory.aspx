<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="Elibrary_Management_Project.adminbookinventory" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .img-thumbnail {
            max-width: 150px;
            max-height: 150px;
            object-fit: cover; /* Ensures the image doesn't distort */
        }
    </style>


    <script src="elibrary%20links/2%20all%20js/1%20jquery/jquery-3.7.1.min.js"></script>    
    <script src="Datatables/js/jquery.dataTables.min.js"></script>    
    <link href="Datatables/css/jquery.dataTables.min.css" rel="stylesheet" />


    <script type="text/javascript">

        $(document).ready(function () {
            // Initialize DataTable after the page fully loads
            $('#<%= GridView1.ClientID%>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });


        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                }; reader.readAsDataURL(input.files[0]);
            }
        }

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
                                    <h4>Book Details</h4>


                                </center>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" height="150" id="imgview" src="img/book online.png" />
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
                                <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>





                        <div class="row">


                            <div class="col-md-3">
                                <asp:Label ID="Label1" runat="server" Text="Book ID"></asp:Label>
                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1" placeholder=" Book ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-9">
                                <asp:Label ID="Label2" runat="server" Text="Book Name"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" placeholder="Book Name "></asp:TextBox>

                                </div>
                            </div>




                        </div>





                        <div class="row">



                            <div class="col-md-4">
                                <asp:Label ID="Label3" runat="server" Text="Language"></asp:Label>
                                <div class="mb-3">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">

                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="German"></asp:ListItem>
                                        <asp:ListItem Text="Urdu" Value="Urdu"></asp:ListItem>

                                    </asp:DropDownList>

                                </div>


                                <asp:Label ID="Label5" runat="server" Text="Publisher Name"></asp:Label>
                                <div class="mb-3">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">

                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>


                                    </asp:DropDownList>

                                </div>


                            </div>


                            <div class="col-md-4">
                                <asp:Label ID="Label7" runat="server" Text="Author Name"></asp:Label>
                                <div class="mb-3">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">

                                        <asp:ListItem Text="A1" Value="A1"></asp:ListItem>
                                        <asp:ListItem Text="A2" Value="A2"></asp:ListItem>


                                    </asp:DropDownList>

                                </div>


                                <asp:Label ID="Label8" runat="server" Text="Publisher Date"></asp:Label>
                                <div class="mb-3">

                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>


                            </div>




                            <div class="col-md-4">
                                <asp:Label ID="Label4" runat="server" Text="Genre"></asp:Label>
                                <div class="mb-3">
                                    <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" SelectionMode="Multiple" Rows="5">

                                        <asp:ListItem Text="Select Genre" Value="Select Genre" />
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Art & Photography" Value="Art & Photography" />
                                        <asp:ListItem Text="Biographies" Value="Biographies" />
                                        <asp:ListItem Text="Classics" Value="Classics" />
                                        <asp:ListItem Text="Comics" Value="Comics" />
                                        <asp:ListItem Text="Cookbooks" Value="Cookbooks" />
                                        <asp:ListItem Text="Detective" Value="Detective" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Health" Value="Health" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Historical Fiction" Value="Historical Fiction" />
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Literary Fiction" Value="Literary Fiction" />
                                        <asp:ListItem Text="Memoir" Value="Memoir" />
                                        <asp:ListItem Text="Music" Value="Music" />
                                        <asp:ListItem Text="Mystery" Value="Mystery" />
                                        <asp:ListItem Text="Non-Fiction" Value="Non-Fiction" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                        <asp:ListItem Text="Philosophy" Value="Philosophy" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Psychology" Value="Psychology" />
                                        <asp:ListItem Text="Religion" Value="Religion" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                        <asp:ListItem Text="Self-Help" Value="Self-Help" />
                                        <asp:ListItem Text="Short Stories" Value="Short Stories" />
                                        <asp:ListItem Text="Spirituality" Value="Spirituality" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Travel" Value="Travel" />
                                        <asp:ListItem Text="True Crime" Value="True Crime" />
                                        <asp:ListItem Text="Young Adult" Value="Young Adult" />


                                    </asp:ListBox>

                                </div>
                            </div>





                        </div>





                        <div class="row">



                            <div class="col-md-4">
                                <asp:Label ID="Label9" runat="server" Text="Edition"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox9" placeholder="Edition"></asp:TextBox>

                                </div>
                            </div>


                            <div class="col-md-4">
                                <asp:Label ID="Label10" runat="server" Text="Book Cost(per unit)"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox10" placeholder="Book Cost(per unit)" TextMode="Number"></asp:TextBox>

                                </div>
                            </div>




                            <div class="col-md-4">
                                <asp:Label ID="Label11" runat="server" Text="Pages"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox11" placeholder="Pages" TextMode="Number"></asp:TextBox>

                                </div>
                            </div>





                        </div>






                        <div class="row">



                            <div class="col-md-4">
                                <asp:Label ID="Label12" runat="server" Text="Actual Stock"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox4" placeholder="Actual Stock"></asp:TextBox>

                                </div>
                            </div>


                            <div class="col-md-4">
                                <asp:Label ID="Label13" runat="server" Text="Current Stock"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox5" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>




                            <div class="col-md-4">
                                <asp:Label ID="Label14" runat="server" Text="Issued Books"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox7" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>





                        </div>






                        <div class="row">




                            <div class="col">
                                <asp:Label ID="Label6" runat="server" Text="Book Description"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox6" Placeholder="Book Description" TextMode="MultiLine"></asp:TextBox>

                                </div>
                            </div>





                        </div>





                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" CssClass="btn btn-success buttonbloo btn-lg" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>


                            <div class="col-4">
                                <asp:Button ID="Button1" CssClass="btn btn-primary buttonbloo btn-lg" runat="server" Text="Update" OnClick="Button1_Click" />
                            </div>


                            <div class="col-4">
                                <asp:Button ID="Button3" CssClass="btn btn-danger buttonbloo btn-lg" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                                    <h4>Book Inventory List</h4>


                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>

                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="book_id">



                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >



                                        <ControlStyle Font-Bold="True" />
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>



                                        <%-- <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                        <asp:BoundField DataField="publish_date" HeaderText="publish_date" SortExpression="publish_date" />
                                        <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                        <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                        <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                                        <asp:BoundField DataField="no_of_pages" HeaderText="no_of_pages" SortExpression="no_of_pages" />
                                        <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                                        <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock" />
                                        <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                                        <asp:BoundField DataField="book_img_link" HeaderText="book_img_link" SortExpression="book_img_link" />--%>





                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <div class="container-fluid">
                                                    <div class="row">

                                                        <div class="col-lg-10">


                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Author -
                                                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language -
                                                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Publisher -
                                                                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date -
                                                                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Text='<%# Bind("publish_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Cost -
                                                                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available -&nbsp;
                                                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Description -
                                                                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                                </div>

                                                            </div>

                                                        </div>


                                                        <div class="col-lg-2">

                                                             <asp:Image CssClass="img-fluid p-2 img-thumbnail " ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                       
                                                    </div>

                                                </div>

                                            </ItemTemplate>
                                        </asp:TemplateField>


                                       





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
