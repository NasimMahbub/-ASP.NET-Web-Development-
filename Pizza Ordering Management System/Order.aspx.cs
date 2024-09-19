using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Member_Order : System.Web.UI.Page
    {
        #region Global Variable
        SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["USERMSTConnectionString"].ToString());
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int Booking()
        {
            try
            {
                int ResultCout = 0;
                SqlCommand sqlCmd = new SqlCommand();
                if (connString.State == ConnectionState.Closed)
                {
                    connString.Open();
                }
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@name", Convert.ToString(txtName.Text));
                sqlCmd.Parameters.AddWithValue("@address", Convert.ToString(txtAddress.Text));
                sqlCmd.Parameters.AddWithValue("@phone", Convert.ToString(txtPhone.Text));
                sqlCmd.Parameters.AddWithValue("@email", Convert.ToString(txtEmail.Text));
                sqlCmd.Parameters.AddWithValue("@pizza_name", Convert.ToString(txtPizzaname.Text));
                sqlCmd.Parameters.AddWithValue("@amount", Convert.ToString(txtTotalamount.Text));
                sqlCmd.Parameters.AddWithValue("@date", Convert.ToString(txtDate.Text));
                sqlCmd.Parameters.AddWithValue("@Ret_Val", SqlDbType.BigInt);
                sqlCmd.Parameters["@Ret_Val"].Direction = ParameterDirection.Output;
                sqlCmd.CommandText = "ORDERtt";
                sqlCmd.Connection = connString;
                sqlCmd.ExecuteNonQuery();
                //ResultCout = Convert.ToInt32(sqlCmd.Parameters["@Ret_Val"].Value);
                return ResultCout;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            Booking();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Congratulations!Pizza ordering has been done successfully')", true);
            txtName.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtPizzaname.Text = "";
            txtTotalamount.Text = "";
            txtDate.Text = "";

        }
    }
