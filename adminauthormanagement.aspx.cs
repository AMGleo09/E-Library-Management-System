using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrary_Management_Project
{
    public partial class adminauthormanagement : System.Web.UI.Page
    {


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('Author with this ID already Exists. You cannot add another author with same author ID')</script>");
            }
            else
            {


                addNewAuthor(); 


            }
        }


        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExists())
            {
                updateAuthor();
            }
            else
            {

                Response.Write("<script>alert('Author Does Not Exists')</script>");



            }


        }

        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExists())
            {
                deleteAuthor();
            }
            else
            {

                Response.Write("<script>alert('Author Does Not Exists')</script>");




            }

        }
            //go button
            protected void Button1_Click(object sender, EventArgs e)
        {


            getAuthorByID();



        }





        //user define methods



            void getAuthorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id= '" + TextBox1.Text.Trim() + "'", con);
                //cmd.Parameters.AddWithValue("@memberid", memberid.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID')</script>");
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
             
            }
        }

            void deleteAuthor()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("delete from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "'", con);



                    

                    cmd.ExecuteNonQuery();

                    con.Close();

                    Response.Write("<script>alert('Author Deleted Succesfully')</script>");
                    clearForm();

                    GridView1.DataBind();





            }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }




        void updateAuthor()
        {


            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update author_master_tbl set author_name = @author_name where author_id='"+TextBox1.Text.Trim()+"'", con);


                
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());





                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Author Updated Succesfully')</script>");
                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }







        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into author_master_tbl(author_id,author_name) values(@author_id,@author_name)", con);


                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
               




                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Author Added Succesfully')</script>");

                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }



        bool checkIfAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id= '" + TextBox1.Text.Trim() + "'", con);
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


        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

    }
}