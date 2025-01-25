<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="Elibrary_Management_Project.adminauthormanagement" %>




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

               <div class="container">
      <div class="row">
          <div class="col-md-5 ">

              <div class="card">
                  <div class="card-body">




                       <div class="row">
                          <div class="col">
                                <center>
                                   <h4>Author Details</h4>
                               
                                   
                               </center>
                          </div>
                       </div>



                      
                      <div class="row">
                          <div class="col">
                              <center>
                                  <img width="100" src="img/writer.png" />
                              </center>
                          </div>
                      </div>


                      
                      <div class="row">
                          <div class="col">
                               <hr />
                          </div>
                       </div>
                      
                      


                      <div class="row">


                          <div class="col-md-4">
                               <asp:Label ID="Label1" runat="server" Text="Author ID"></asp:Label>
                                    <div class="mb-3">            
                                        <div class="input-group">
                                         <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                            </div>
                                     </div>
                          </div>
                          
                          
                          <div class="col-md-8">
                                  <asp:Label ID="Label2" runat="server" Text="Author Name"></asp:Label>   
                                    <div class="mb-3"> 
                                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" placeholder="Author Name " ></asp:TextBox>

                                    </div> 
                          </div>


                       </div>
                      
                      
                      
                             

                      <div class="row">
                          <div class="col-4">
                              <asp:Button ID="Button2" CssClass="btn btn-success buttonbloo btn-lg" runat="server" Text="Add" OnClick="Button2_Click" />
                          </div>

                           <div class="col-4">
     <asp:Button ID="Button3" CssClass="btn btn-info buttonbloo btn-lg" runat="server" Text="Update" OnClick="Button3_Click" />
 </div>

                           <div class="col-4">
     <asp:Button ID="Button4" CssClass="btn btn-danger buttonbloo btn-lg" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                   <h4>Author List </h4>
                                    
                                    
                               </center>
                          </div>
                       </div>
                      
                      <div class="row">
                          <div class="col">
                               <hr />
                          </div>
                       </div>                   


                          <div class="row">

                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryConnectionString %>" ProviderName="<%$ ConnectionStrings:elibraryConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>



                               <div class="col">
                                   <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                       <Columns>
                                           <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                           <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
