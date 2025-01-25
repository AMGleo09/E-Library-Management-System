using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrary_Management_Project
{
    public partial class signup : System.Web.UI.Page
    {


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // SIGN UP page is clicked 


        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('sign up succesfull')</script>");

            if (!ValidateInputs())
            {
                return;
            }

            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member already exists')</script>");
            }

            else
            {
                signUpMember(); 
            }


            
        }

        //USER DEFINE METHODS 




        bool checkMemberExists()
        {


            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id= '"+ memberid.Text.Trim() + "'", con);
                //cmd.Parameters.AddWithValue("@memberid", memberid.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                           

           
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }



           
        }




        void signUpMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);


                cmd.Parameters.AddWithValue("@full_name", fullname.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", dobb.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", contactnum.Text.Trim());
                cmd.Parameters.AddWithValue("@email", emailid.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", city.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", pincode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", fulladdress.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", memberid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");




                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Sign Up Succesfull. Go to User Login to Login')</script>");


                // Clear all fields after successful signup
                ClearFields();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
















        bool ValidateInputs()
        {
            if (string.IsNullOrWhiteSpace(fullname.Text.Trim()) ||
                string.IsNullOrWhiteSpace(dobb.Text.Trim()) ||
                string.IsNullOrWhiteSpace(contactnum.Text.Trim()) ||
                string.IsNullOrWhiteSpace(emailid.Text.Trim()) ||
                DropDownList1.SelectedValue == "select" ||
                string.IsNullOrWhiteSpace(city.Text.Trim()) ||
                string.IsNullOrWhiteSpace(pincode.Text.Trim()) ||
                string.IsNullOrWhiteSpace(fulladdress.Text.Trim()) ||
                string.IsNullOrWhiteSpace(memberid.Text.Trim()) ||
                string.IsNullOrWhiteSpace(password.Text.Trim()))
            {
                Response.Write("<script>alert('All fields are required!');</script>");
                return false;
            }

            // Additional format checks
            if (!IsValidEmail(emailid.Text.Trim()))
            {
                Response.Write("<script>alert('Invalid Email format!');</script>");
                return false;
            }

            if (contactnum.Text.Trim().Length != 10)
            {
                Response.Write("<script>alert('Contact number must be 10 digits long!');</script>");
                return false;
            }

            if (DateTime.Now.Year - Convert.ToDateTime(dobb.Text.Trim()).Year < 18)
            {
                Response.Write("<script>alert('You must be at least 18 years old to sign up.');</script>");
                return false;
            }

            return true;
        }

        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }







        void ClearFields()
        {
            fullname.Text = "";
            dobb.Text = "";
            contactnum.Text = "";
            emailid.Text = "";
            DropDownList1.SelectedIndex = 0; // Reset to "Select"
            city.Text = "";
            pincode.Text = "";
            fulladdress.Text = "";
            memberid.Text = "";
            password.Text = "";

            // Clear validation state
            Page.Validate("SignUpGroup"); // Specify the ValidationGroup used
            foreach (BaseValidator validator in Page.Validators)
            {
                validator.IsValid = true; // Reset the IsValid state
            }
        }







    }
}