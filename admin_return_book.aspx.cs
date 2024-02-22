﻿using System;
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
public partial class admin_return_book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select id,uname,book_name,book_id,author_name,publication,year,booking_date,return_date	 from request_details where status='Accept'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String h = GridView1.SelectedRow.Cells[1].Text;

        String h1 = GridView1.SelectedRow.Cells[9].Text;
        con.Open();


        String now = DateTime.Now.ToShortDateString();
        now = System.DateTime.Now.Date.ToString("yyyy-MM-dd");
        DateTime dateTime = DateTime.ParseExact(now, "yyyy-MM-dd", CultureInfo.InvariantCulture);

        DateTime dateTime1 = DateTime.ParseExact(h1.ToString().Trim(), "yyyy-MM-dd", CultureInfo.InvariantCulture);

        var x = (dateTime - dateTime1).TotalDays;
        int fine = Int32.Parse(""+x)*20;


        if (x>  0)
        {
           // con.Open();
            cmd = new SqlCommand("update request_details set status='Fine',fine_amount='"+fine+"' where id='" + h + "'", con);
            cmd.ExecuteNonQuery();
           // con.Close();
           /* cmd = new SqlCommand("select * from fine_details order by id ASC", con);
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

            cmd = new SqlCommand("insert into fine_details values('" + k + "','" + uname + "','" + h + "','" + fine + "','rdate','0','0')", con);
            cmd.ExecuteNonQuery();
            */
           // con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Return sucessfully! Fine Amount :  "+fine+"');window.location ='admin_home.aspx';",
true);
        }
        else
        {
          //  con.Open();
            cmd = new SqlCommand("update request_details set status='Return',return_date='"+now+"' where id='" + h + "'", con);
            cmd.ExecuteNonQuery();
          //  con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Return sucessfully');window.location ='admin_home.aspx';",
true);
        }


       //  Label1.Text = "" ;

/*
        cmd = new SqlCommand("update request_details set status='Retrun',booking_date='" + now + "',return_date='" + new_time + "' where id='" + h + "'", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('sucessfully');window.location ='admin_home.aspx';",
true);
        con.Close();
        */
         con.Close();
    }
}