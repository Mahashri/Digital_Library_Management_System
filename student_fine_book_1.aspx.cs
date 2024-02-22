using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class student_fine_book_1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String card = TextBox2.Text;

        int clen = card.Length;
        if (clen == 16)
        {
            String id = Session["id"] as string;
            con.Open();
            cmd = new SqlCommand("update  request_details set status='Accept' where id='" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
       "alert",
       "window.location ='student_home.aspx';alert('Fine Payment Success');",
       true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(),
 "alert",
 "window.location ='#';alert('Enter Valid Card No (16 Digit)');",
 true);
        }
       


 
    }
}