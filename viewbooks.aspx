<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="Elibrary_Management_Project.viewbooks" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

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





            <div class="col-8 m-auto">
                <center>

               
                    



                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory List</h4>
                                    <br />
                                    <br />

                                </center>

                                <div class="col-sm-12 col-md-12">
                                    <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="false"></asp:Panel>

                                </div>
                            </div>
                        </div>

                       


                        <div class="row">


                            <div class="card">
                                <div class="card-body">

                                                                        

                                   







                                    <div class="row">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>

                                        <div class="col">
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="book_id">



                                                <Columns>
                                                    <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id">



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



                    
                


                <a href="homepage.aspx"><< Back to home page</a>
                    </center>
            </div>


        </div>
    </div>
</asp:Content>
