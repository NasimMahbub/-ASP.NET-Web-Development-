using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (!IsPostBack)
        {
            if (Request.Cookies["Email"] != null && Request.Cookies["Password"] !=null)
            {
                txtusername.Text = Request.Cookies["Email"].Value;
                txtpassword.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }
            

        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.select_login(txtusername.Text, txtpassword.Text);
        if (UDT.Rows.Count > 0)
        {
            if(CheckMe.Checked)
            {
                Response.Cookies["Email"].Value = txtusername.Text;
                Response.Cookies["Password"].Value = txtpassword.Text;
                Response.Cookies["Email"].Expires = DateTime.Now.AddMinutes(1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(1);
            }
            else
            {
                Response.Cookies["Email"].Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-1);
            }



    Session["email"] = UDT.Rows[0]["email"].ToString();
            Session["name"] = UDT.Rows[0]["fname"].ToString() +" " + UDT.Rows[0]["lname"].ToString();
            Session["uid"] = UDT.Rows[0]["uid"].ToString();
            Response.Redirect("Home.aspx");

        }
        else
        {
            lblmsg.Text = "Invalid username or password";

        }

    }
    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {

    }
}