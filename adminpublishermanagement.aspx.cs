using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Elibrary_Management_Project
{
    public partial class adminpublishermanagement : System.Web.UI.Page
    {


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add 
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (checkIfPublisherExists())
            {
                Response.Write("<script>alert('Publisher with this ID already Exists. You cannot add another Publisher with same Publisher ID')</script>");
            }
            else
            {


                addNewPublisher();


            }

        }


        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfPublisherExists())
            {
                updatePublisher();
            }
            else
            {

                Response.Write("<script>alert('Publisher Does Not Exists')</script>");



            }
        }


        //delete
        protected void Button4_Click(object sender, EventArgs e)
        {


            if (checkIfPublisherExists())
            {
                deletePublisher();
            }
            else
            {

                Response.Write("<script>alert('Author Does Not Exists')</script>");




            }


        }


        //go
        protected void Button1_Click(object sender, EventArgs e)
        {
            getPublisherByID();
        }






        //user define methods



        void getPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id= '" + TextBox1.Text.Trim() + "'", con);
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




        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + "'", con);





                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Publisher Deleted Succesfully')</script>");
                clearForm();

                GridView1.DataBind();




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }




        void updatePublisher()
        {


            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update publisher_master_tbl set publisher_name = @publisher_name where publisher_id='" + TextBox1.Text.Trim() + "'", con);



                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());





                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Publisher Updated Succesfully')</script>");
                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }







        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into publisher_master_tbl(publisher_id,publisher_name) values(@publisher_id,@publisher_name)", con);


                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());





                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Publisher Added Succesfully')</script>");

                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }



        bool checkIfPublisherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id= '" + TextBox1.Text.Trim() + "'", con);
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