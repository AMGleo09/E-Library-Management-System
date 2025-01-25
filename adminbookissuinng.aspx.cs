using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Elibrary_Management_Project
{
    public partial class adminbookissuinng : System.Web.UI.Page
    {


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;




        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
           

        }


        // Go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkIfBookExists() && checkIfMemberExists())
            {
            getName();

            }
            else
            {
                Response.Write("<script> alert('Enter both details');</script>");
            }
        }


        // Issue button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists() && checkIfMemberExists())
            {
                if (checkIfIssueEntryExists())
                {
                    Response.Write("<script> alert('This Member Already Have This Book');</script>");
                }
                else
                {
                    
                issueBook();
                }


            }
            else
            {
                Response.Write("<script> alert('Wrong book ID or Member ID');</script>");
            }
        }

        // return Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists() && checkIfMemberExists())
            {
                if (checkIfIssueEntryExists())
                {
                    returnBook();
                }
                else
                {

                    Response.Write("<script> alert('This Entry Does Not Exixts');</script>");
                }


            }
            else
            {
                Response.Write("<script> alert('Wrong book ID or Member ID');</script>");
            }
        }








        //  user define methods




        void returnBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from book_issue_tbl where book_id='"+TextBox2.Text.Trim()+"' and member_id='"+TextBox1.Text.Trim()+"'", con);


                int result = cmd.ExecuteNonQuery();             

                

                if (result > 0)
                {                    

                    cmd = new SqlCommand("update book_master_tbl set current_stock=current_stock+1 where book_id='"+TextBox2.Text.Trim()+"'",con);
                    cmd.ExecuteNonQuery();
                    con.Close() ;



                    Response.Write("<script>alert('Book Returned Succesfully')</script>");

                    clearForm();

                    GridView1.DataBind();
                    con.Close();
                }

                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }




        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into book_issue_tbl(member_id,member_name,book_id,book_name,issue_date,due_date) values(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);


                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());



                cmd.ExecuteNonQuery();




                cmd = new SqlCommand("update book_master_tbl set current_stock = current_stock-1 where book_id ='"+TextBox2.Text.Trim()+"'", con);


                cmd.ExecuteNonQuery();






                con.Close();

                Response.Write("<script>alert('Book Issued Succesfully')</script>");

                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }






        bool checkIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from book_master_tbl where book_id='" + TextBox2.Text.Trim() + "' and current_stock >0", con);
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
                return false;
            }

        }
        
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "'", con);
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
                return false;
            }

        }





        bool checkIfIssueEntryExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from book_issue_tbl where member_id='" + TextBox1.Text.Trim() + "' and book_id='" + TextBox2.Text.Trim() +"'", con);
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
                return false;
            }

        }





        void getName()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select book_name from book_master_tbl where book_id='"+TextBox2.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable(); 
                da.Fill(dt);

                if(dt.Rows.Count>= 1)
                {
                    TextBox4.Text= dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script> alert('Wrong Book ID');</script>");
                }





                 cmd = new SqlCommand("select full_name from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "'", con);
                 da = new SqlDataAdapter(cmd);
                 dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script> alert('Wrong User ID');</script>");
                }


            }
            catch (Exception ex)
            {
                
            }


        }




        void clearForm()
        {
            TextBox1.Text="";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            try
            {
                //if (e.Row.RowType == DataControlRowType.DataRow)
                //{
                //    //check your condition
                //    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                //    DateTime today = DateTime.Today;

                //    if (today > dt)
                //    {
                //        //e.Row.BackColor = Color.Pink;
                //        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;

                //    }

                //    if (DateTime.TryParseExact(e.Row.Cells[5].Text, "MM/dd/yyyy", null, System.Globalization.DateTimeStyles.None, out DateTime dueDate))
                //    {
                //        if (DateTime.Today > dueDate)
                //        {
                //            e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                //        }
                //    }
                //    else
                //    {
                //        Response.Write($"Date parsing failed for: {e.Row.Cells[5].Text}<br>");
                //    }

                //    if (DateTime.Today > dt)
                //    {
                //        e.Row.CssClass = "overdue-row";
                //    }


                //}




                //if (e.Row.RowType == DataControlRowType.DataRow)
                //{
                //    // Get the raw value from the cell
                //    string rawValue = e.Row.Cells[5].Text.Trim(); // Adjust the index if the "due_date" column is in a different cell
                //    Response.Write($"Raw Value: '{rawValue}'<br>"); // Debugging

                //    // Parse the date using the known format
                //    if (DateTime.TryParseExact(rawValue, "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out DateTime dueDate))
                //    {
                //        // Compare with today's date
                //        if (DateTime.Today > dueDate)
                //        {
                //            e.Row.CssClass = "overdue-row";
                //            e.Row.BackColor = System.Drawing.Color.PaleVioletRed; // Set the background color for overdue dates
                //        }
                //    }
                //    else
                //    {
                //        // Log parsing failures for debugging
                //        Response.Write($"Failed to parse date: '{rawValue}'<br>");
                //    }
                //}






                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    // Get the raw value from the cell
                    string rawValue = e.Row.Cells[5].Text.Trim(); // Adjust index as needed for "due_date" column
                    //Response.Write($"Raw Value: '{rawValue}'<br>"); // Debugging

                    // Parse the date using TryParseExact with a consistent format
                    if (DateTime.TryParseExact(rawValue, "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out DateTime dueDate))
                    {
                        //Response.Write($"Parsed Due Date: {dueDate.ToString("yyyy-MM-dd")}<br>"); // Debugging parsed date

                        // Compare the parsed due date with today's date
                        if (DateTime.Today > dueDate)
                        {
                            e.Row.CssClass = "overdue-row";
                            e.Row.BackColor = System.Drawing.Color.PaleVioletRed; // Highlight overdue rows
                        }
                    }
                    else
                    {
                        // Log parsing failures for debugging
                        Response.Write($"Failed to parse date: '{rawValue}'<br>");
                    }
                }





            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }       






        }





    }
}