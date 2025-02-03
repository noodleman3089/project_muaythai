using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Post_DisplayPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox data = (TextBox)PreviousPage.FindControl("txtName");
        lblName.Text = data.Text;
        lblDepart.Text = Request.Form["txtDepart"];
    }
}