using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObjects;
using BusinessLogicLayer;

namespace WebApplicationCRUD
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //GetMembers();

                //AddSubmitEvent();

                if (Request.QueryString["alert"] == "success")
                {
                    Response.Write("<script>alert('Record saved successfully');</script>");
                }
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Member objMember = new Member();
            BLL objBLL = new BLL();

            objMember.Name = txtName.Text;
            objMember.Email = txtEmail.Text;
            objMember.Address = txtAddress.Text;
            objMember.Mobile = Convert.ToInt32(txtMobile.Text);

            objBLL.AddNewMember(objMember);

            // Clear all fields
            //ClearText();
            Response.Redirect("~/Home.aspx?alert=success"); // redirected to AddNewProducts and Page_Load will then be called

        }
    }
}