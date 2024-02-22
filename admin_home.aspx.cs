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
using System.Net.Mail;
using System.Text;
public partial class admin_home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True;MultipleActiveResultSets=true");
   // SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd,cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["a1"] = "";
        Session["a2"] = "";
        Session["a3"] = "";
        Session["a4"] = "";

        Session["1"] = "";
        Session["2"] = "";
        Session["3"] = "";
        Session["4"] = "";
        Session["5"] = "";


        String session_email = Session["email"] as string;
        con.Open();
          //  con1.Open();
        String now = DateTime.Now.ToShortDateString();
        now = System.DateTime.Now.Date.ToString("yyyy-MM-dd");

        DateTime dateTime = DateTime.ParseExact(now, "yyyy-MM-dd", CultureInfo.InvariantCulture);

        // DateTime new_time = dateTime.AddMinutes(Int32.Parse("" + 30));
        DateTime new_time = dateTime.AddDays(1);
        //  new_time = new_time.Date.ToString("yyyy-MM-dd");
        // DateTime new_time1 = DateTime.ParseExact(new_time, "yyyy-MM-dd", CultureInfo.InvariantCulture);
        //  DateTime d = DateTime.ParseExact("" + new_time, "dd/MM/yyyy", CultureInfo.InvariantCulture);
        var shortDate = new_time.ToString("yyyy-MM-dd");
      

        cmd = new SqlCommand("select id,uname,book_name,book_id,author_name,publication,year,booking_date,return_date	 from request_details where status='Accept' and return_date = '" + shortDate + "'", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        int n = 0;
        String m = "";
        SqlDataReader dr1;
        while (dr.Read())
        {
            n = n + 1;
            m = "a" + n;
            String uname = dr["uname"].ToString();
            String id = dr["id"].ToString();
            String book_name = dr["book_name"].ToString();
            String return_date = dr["return_date"].ToString();
            Session["" + n] = "" + uname;
           Session[""+m] = "" + id;
          
           cmd1 = new SqlCommand("select email	 from student_details where username='"+uname+"'", con);
           dr1 = cmd1.ExecuteReader();
           //  dr.Close();
           if (dr1.Read())
           {
               if (session_email == "0")
               {
              
               String email = dr1["email"].ToString();
               String msg = "This is to you notify that " + book_name + " book should return before on " + return_date + " - Thank you, Team BCA Digital Library. ";
               SmtpClient client = new SmtpClient("smtp.gmail.com");

               client.Port = 587;
               client.Host = "smtp.gmail.com";
               client.EnableSsl = true;
               client.Timeout = 10000;
               client.DeliveryMethod = SmtpDeliveryMethod.Network;
               client.UseDefaultCredentials = false;
               client.Credentials = new System.Net.NetworkCredential("serverkey2018@gmail.com", "egjuabqhwvktwdqf");
               //string filename = Path.GetFileName(sylabuss);
               //string input = Server.MapPath("~/img/") + filename;


               MailMessage mm = new MailMessage("serverkey2018@gmail.com", email, "Alert", "" +msg);


              // mm.Attachments.Add(new Attachment(input));
               mm.BodyEncoding = UTF8Encoding.UTF8;
               mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;

               client.Send(mm);
               Session["email"] = "1";


           }
           }


        }
        Session["data"]=""+n;
        con.Close();
       // con1.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}