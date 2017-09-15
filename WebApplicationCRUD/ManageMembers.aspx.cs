using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationCRUD
{
    public partial class ManageMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
            SqlDataSource1.InsertParameters["Address"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtAddress")).Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;
            SqlDataSource1.InsertParameters["Mobile"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMobile")).Text;
            SqlDataSource1.InsertParameters["Gender"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlGender")).SelectedValue;

            SqlDataSource1.Insert();
        }
    }
}