using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
           if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                txtname.Text = Request.Cookies["UserName"].Value;
              txtpass.Attributes["value"] = Request.Cookies["Password"].Value;
           }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    
            
    {

        if (CheckMe.Checked)
        {
            Response.Cookies["UserName"].Value = txtname.Text;
            Response.Cookies["Password"].Value = txtpass.Text;
            Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(1);
        }
        else
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-1);
        }


        if (txtname.Text == "")
        {
            lbl.Text = "Enter name";
        }
        else if (txtpass.Text == "")
        {
            lbl.Text = "Enter password";
        }
        else
        {
            if (txtname.Text == "noyon" && txtpass.Text == "noyon")
            {
                Response.Redirect("AddProduct.aspx");
            }
            else
            {
                lbl.Text = "Invalid detail";
            }
        }
    }
}