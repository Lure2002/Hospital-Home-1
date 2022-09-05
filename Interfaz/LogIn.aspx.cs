using System;
using System.Data.SqlClient;

namespace Interfaz
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label1.Visible = false;
            //if (Request.Cookies["Documento"].Length == 8)
            if (Session["Documento"] != null)
            {
                Response.Redirect("~/HomeTurno");
            }
        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder
            {
                DataSource = "DESKTOP-JAOS9A0",
                InitialCatalog = "Data",
                IntegratedSecurity = true
            };
            var CS = builder.ToString();
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand sql = new SqlCommand
                {
                    CommandType = System.Data.CommandType.Text,
                    Connection = conn,
                    CommandText = "SELECT * FROM logdb WHERE Documento = @doc AND Contraseña = @contra;"          
                };
                decimal doc = Convert.ToDecimal(logDocumento.Text);
                sql.Parameters.AddWithValue("@doc", doc );
                sql.Parameters.AddWithValue("@contra", logContraseña.Text);
                conn.Open();
                var dr = sql.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Session["Documento"] = dr.GetDecimal(0);
                    Session["Contraseña"] = dr.GetString(1);
                    Session["Nombre_Apellido"] = dr.GetString(2);
                    Session["Email"] = dr.GetString(3);
                    Session["Telefono"] = dr.GetDecimal(4);
                    Session["Cuil"] = dr.GetDecimal(5);
                }
                else
                {
                    label1.Text = "No se encontro ningun usuario";
                }
                conn.Close();
            }
            Response.Redirect("~/HomeTurno");
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            FileProfile.SaveAs("C:\\Users\\Usuario\\Source\\Repos\\Lure2002\\Proyecto-Grupo-1\\Interfaz\\Images\\" + FileProfile.FileName);
            Session["Perfil"] = FileProfile.FileName;
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder
            {
                DataSource = "DESKTOP-JAOS9A0",
                InitialCatalog = "Data",
                IntegratedSecurity = true
            };
            var CS = builder.ToString();
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand sql = new SqlCommand
                {
                    CommandType = System.Data.CommandType.Text,
                    Connection = conn,
                    CommandText = "INSERT INTO logdb VALUES(@docu,@pass,@NA,@email,@tele,0)"
                };
                if (MainContent_btnObraSocial.Checked)
                {
                    sql.CommandText = "INSERT INTO logdb VALUES(@docu,@pass,@NA,@email,@tele,@cuil)";
                    sql.Parameters.AddWithValue("@cuil", Convert.ToDecimal(txtCuil.Text));
                }
                sql.Parameters.AddWithValue("@docu", Convert.ToDecimal(txtDocumento.Text));
                sql.Parameters.AddWithValue("@pass",txtContraseña.Text);
                sql.Parameters.AddWithValue("@NA", txtNombreApellido.Text);
                sql.Parameters.AddWithValue("@email", txtEmail.Text);
                sql.Parameters.AddWithValue("@tele", Convert.ToDecimal(txtTelefono.Text));
                conn.Open();
                int row = sql.ExecuteNonQuery();
                conn.Close();
                if (row > 0)
                {
                    label1.Text = "logrado";
                    label1.Visible = true;
                }
            }
            Session["Documento"] = txtDocumento.Text;
            Session["Nombre y Apellido"] = txtNombreApellido.Text;
            Session["Email"] = txtEmail.Text;
            Session["Telefono"] = txtTelefono.Text;
            if ((txtCuil.Text.Length == 11) && (MainContent_btnObraSocial.Checked == true))
            {
                Session["Cuil"] = txtCuil.Text;
            }
            else if (MainContent_btnObraSocial.Checked)
            {
                label1.Visible = true;
                label1.Text = "Cuil Invalido";
            }
            Response.Redirect("~/HomeTurno");
        }
    }
}