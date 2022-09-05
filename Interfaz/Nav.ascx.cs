using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Interfaz
{
    public partial class Nav : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Perfil"] != null)
            {
                profile.Attributes.CssStyle.Add("background-image", "url(Images/"+Session["Perfil"]+")");
            }
        }

        protected void CS_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/LogIn");
        }
    }
}