using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class student_search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("select id,book_name,book_id,author_name,publication,year	 from book_details where book_name LIKE'%" + TextBox1.Text + "%' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String h = GridView1.SelectedRow.Cells[1].Text;
        String h1 = GridView1.SelectedRow.Cells[2].Text;
        String h2 = GridView1.SelectedRow.Cells[6].Text;
        String pc = GridView1.SelectedRow.Cells[4].Text;
        String pc2 = GridView1.SelectedRow.Cells[5].Text;
        int n = 0;
        con.Open();
        cmd = new SqlCommand("select * from request_details order by id ASC", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            n = Convert.ToInt32(dr["id"].ToString());

        }
        dr.Close();

        int j = 1;
        int k = j + n;
        String uname = Session["uname"] as string;

        cmd = new SqlCommand("insert into request_details values('" + k + "','" + uname + "','" + h1 + "','" + h + "','" + pc + "','" + pc2 + "','" + h2 + "','cdate','rdate','0','waiting','0','0')", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Request sucessfully');window.location ='student_search.aspx';",
true);
        // Response.Write("<Script> alert('Your details Are Saved!')</Script>");
        // Response.Redirect("user.aspx");
        con.Close();

       
    }
}