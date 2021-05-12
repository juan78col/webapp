using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
namespace webapp
{
    public partial class _Default : Page
    {
        NpgsqlConnection conn;
        string ruta = "Server=localhost;Port=5433;User Id=pruebas;Password=12345678;Database=pruebatecnica;";
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection(ruta);
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            
            string sql, identificacion;
            identificacion = txtbuscar.Text;
            sql = 
            "select tipodocumento.nombre as tipoidentificacion,numerodocumento,concat(primerapellido, ' ', segundoapellido, ' ', primernombre, ' ', segundonombre), idcontrato,cargos.nombre,arl.valor as arl,fechainicio::date,fechafin::date,salario from contratoslaborales join tipodocumento on contratoslaborales.idtipodocumento = tipodocumento.idtipodocumento left join cargos on contratoslaborales.idcargo = cargos.idcargo left join arl on contratoslaborales.idarl = arl.idarl where numerodocumento=@val";
            NpgsqlCommand command = new NpgsqlCommand(sql,conn);
            command.Parameters.AddWithValue("val", Convert.ToInt32(identificacion));
            NpgsqlDataReader data=command.ExecuteReader();
            while(data.Read())
            {
                lbl1.Text = data[0].ToString();
                lbl2.Text = data[1].ToString();
                lbl3.Text = data[2].ToString();
                lbl4.Text = data[3].ToString();
                lbl5.Text = data[4].ToString();
                lbl6.Text = data[5].ToString();
                lbl7.Text = data[6].ToString();
                lbl8.Text = data[7].ToString();
                lbl9.Text = data[8].ToString();
                //contrato = Convert.ToInt32(data[3].ToString());
                //salario = Convert.ToInt32(lbl9.Text);

            }

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (lbl1.Text=="")
            {
                lblmensaje.Text = "busque un numero de identificacion";
                return;
            }
            if (txtperiodolaboral.Text=="")
            {
                lblmensaje.Text = "Escriba un Valor";
                return;
            }
            if (txttotalhoras.Text == "")
            {
                lblmensaje.Text = "Escriba un Valor";
                return;
            }
            if (txtdescuentosnomina.Text == "")
            {
                lblmensaje.Text = "Escriba un Valor";
                return;
            }
            string sql;
            sql =
                "insert into novedadesnomina(idcontrato,periodolaborado,horaslaboradas,horaextradiurna,descuentos)values(@val1,@val2,@val3,@val4,@val5)";
            NpgsqlCommand command = new NpgsqlCommand(sql, conn);
            command.Parameters.AddWithValue("val1",Convert.ToInt32(lbl4.Text));
            command.Parameters.AddWithValue("val2", txtperiodolaboral.Text);
            command.Parameters.AddWithValue("val3", Convert.ToInt32(txttotalhoras.Text));
            command.Parameters.AddWithValue("val4", Convert.ToInt32(txthorasextra.Text));
            command.Parameters.AddWithValue("val5", Convert.ToInt32(txtdescuentosnomina.Text));
            int res=command.ExecuteNonQuery();
            lblmensaje.Text = "Datos Guardados";



        }

        protected void btncalcular_Click(object sender, EventArgs e)
        {
            if (lbl1.Text == "")
            {
                lblmensaje.Text = "busque un numero de identificacion";
                return;
            }
            int salario = Convert.ToInt32(lbl9.Text);
            double saludempleado, pensionempleado,saludempleador,pensionempleador;
            saludempleado = salario * (4.0 / 100);
            pensionempleado = salario * (4.0/ 100);
            saludempleador = salario * (12.5 / 100);
            pensionempleador = salario * (16.0 / 100);
            lblsaludempleado.Text = Convert.ToString(saludempleado);
            lblpensionempleado.Text = Convert.ToString(pensionempleado);
            lblsaludempleador.Text = Convert.ToString(saludempleador);
            lblpensionempleador.Text = Convert.ToString(pensionempleador);

            lblpgarnomina.Text = Convert.ToString(salario - saludempleado - pensionempleado);

        }
    }
}