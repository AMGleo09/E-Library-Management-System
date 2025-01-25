<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Elibrary_Management_Project.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/footerdown.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="img/user.jfif" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign up</h4>
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
                                <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="fullname" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <asp:Label ID="Label2" runat="server" Text="Date Of Birth"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="dobb" placeholder="Date " TextMode="Date"></asp:TextBox>

                                </div>
                            </div>


                        </div>



                        <div class="row">


                            <div class="col-md-6">
                                <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="contactnum" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="emailid" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                    
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailid" ErrorMessage="Email ID is required!" ValidationGroup="SignUpGroup" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegexValidatorEmail" runat="server" ControlToValidate="emailid"
                                        ErrorMessage="Enter a valid Email!"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        CssClass="text-danger"></asp:RegularExpressionValidator>
                               
                                    </div>
                            </div>


                        </div>

                        <div class="row">


                            <div class="col-md-4">
                                <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                                <div class="mb-3">

                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">

                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                        <asp:ListItem Text="Andaman and Nicobar Islands" Value="Andaman and Nicobar Islands" />
                                        <asp:ListItem Text="Chandigarh" Value="Chandigarh" />
                                        <asp:ListItem Text="Dadra and Nagar Haveli and Daman and Diu" Value="Dadra and Nagar Haveli and Daman and Diu" />
                                        <asp:ListItem Text="Lakshadweep" Value="Lakshadweep" />
                                        <asp:ListItem Text="Delhi" Value="Delhi" />
                                        <asp:ListItem Text="Puducherry" Value="Puducherry" />
                                        <asp:ListItem Text="Ladakh" Value="Ladakh" />
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />


                                    </asp:DropDownList>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="city" placeholder="City"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <asp:Label ID="Label7" runat="server" Text="Pincode"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="pincode" placeholder="Pincode" TextMode="Number"></asp:TextBox>

                                </div>
                            </div>


                        </div>



                        <div class="row">


                            <div class="col">
                                <asp:Label ID="Label8" runat="server" Text="Full Address"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="fulladdress" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>




                        </div>


                        <div class="row">
                            <div class="col">

                                <center>
                                    <div class="mb-3">
                                        <span class="badge rounded-pill text-bg-info">Login Credentials</span>
                                    </div>
                                </center>
                            </div>
                        </div>



                        <div class="row">


                            <div class="col-md-6">
                                <asp:Label ID="Label9" runat="server" Text="User ID"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="memberid" placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="password" placeholder="Password" TextMode="Password"></asp:TextBox>

                                </div>
                            </div>


                        </div>












                        <div class="row">
                            <div class="col">


                                <div class="mb-3">
                                    <asp:Button ID="Button1" CssClass="btn btn-success buttonbloo btn-lg" runat="server" Text="Sign Up" ValidationGroup="SignUpGroup" OnClick="Button1_Click" />
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
