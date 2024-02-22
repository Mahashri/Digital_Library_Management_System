using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class student_fine_book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname = Session["uname"] as string;
        cmd = new SqlCommand("select id,uname,book_name,book_id,author_name,publication,year,booking_date,return_date,fine_amount	 from request_details where status='Fine' and uname='"+uname+"'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String h = GridView1.SelectedRow.Cells[1].Text;
        Session["id"] = h.Trim();
        Response.Redirect("student_fine_book_1.aspx");
        /*con.Open();
        cmd = new SqlCommand("update  request_details set status='1' where id='" + h + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
   "alert",
   "window.location ='student_home.aspx';alert('Booking Success');",
   true);
         */
    }
}