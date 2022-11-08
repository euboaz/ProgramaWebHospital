using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital
{
    public partial class pacientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BAgregar_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();
        }

        protected void BBorrar_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Delete();
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void BModificar_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Update();
        }
    }
}