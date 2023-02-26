using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebLibrary
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cargaLibros();
            }
        }

        public void cargaLibros()
        {
            using (SqlConnection conn=new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "verLibros";
                comando.Connection= conn;
                conn.Open();
                dgvLibros.DataSource = comando.ExecuteReader();
                dgvLibros.DataBind();
            }
        }

        /*
         * 		varchar(13),
			varchar(100),
		int,
			int,
		varchar(200),
			varchar(50),
		text,
		varchar(75),
		varchar(75)
         */

        public void guardar()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "insLibros";
                comando.Connection = conn;
                comando.Parameters.Add("@isbn", SqlDbType.VarChar).Value=txtIsbn.Text.Trim();
                comando.Parameters.Add("@TITULO", SqlDbType.VarChar).Value =txtTitulo.Text.Trim();
                comando.Parameters.Add("@EDICIÓN", SqlDbType.Int).Value =txtEdición.Text.Trim();
                comando.Parameters.Add("@ANIO", SqlDbType.Int).Value =txtAnio.Text.Trim();
                comando.Parameters.Add("@AUTORES", SqlDbType.VarChar).Value =txtAutores.Text.Trim();
                comando.Parameters.Add("@PAÍS", SqlDbType.VarChar).Value =txtPais.Text.Trim();
                comando.Parameters.Add("@SINOPSIS", SqlDbType.Text).Value =txtSinopsis.Text.Trim();
                comando.Parameters.Add("@CARRERA", SqlDbType.VarChar).Value =txtCarrera.Text.Trim();
                comando.Parameters.Add("@MATERIA", SqlDbType.VarChar).Value =txtMateria.Text.Trim();
                comando.Connection=conn;
                conn.Open();
                comando.ExecuteNonQuery();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            guardar();
            cargaLibros();
            pnlRegistro.Visible = false;
            pnlVista.Visible = true;
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            pnlVista.Visible = false;
            pnlRegistro.Visible = true;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            pnlRegistro.Visible = false;
            pnlVista.Visible = true;
        }
    }
}