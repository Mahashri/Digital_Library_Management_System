using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;
using System.Globalization;
public partial class admin_view_book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select id,uname,book_name,book_id,author_name,publication,year	 from request_details where status='waiting'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String now = DateTime.Now.ToShortDateString();
        now = System.DateTime.Now.Date.ToString("yyyy-MM-dd");

         DateTime dateTime = DateTime.ParseExact(now, "yyyy-MM-dd", CultureInfo.InvariantCulture);

       // DateTime new_time = dateTime.AddMinutes(Int32.Parse("" + 30));
        DateTime new_time = dateTime.AddDays(5);
      //  new_time = new_time.Date.ToString("yyyy-MM-dd");
       // DateTime new_time1 = DateTime.ParseExact(new_time, "yyyy-MM-dd", CultureInfo.InvariantCulture);
      //  DateTime d = DateTime.ParseExact("" + new_time, "dd/MM/yyyy", CultureInfo.InvariantCulture);
        var shortDate = new_time.ToString("yyyy-MM-dd");

       


        String h = GridView1.SelectedRow.Cells[1].Text;
        con.Open();
        cmd = new SqlCommand("update request_details set status='Accept',booking_date='" + now + "',return_date='" + shortDate + "' where id='" + h + "'", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('sucessfully');window.location ='admin_home.aspx';",
true);
        con.Close();
    }
}