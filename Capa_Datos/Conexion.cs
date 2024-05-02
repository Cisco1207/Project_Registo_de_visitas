using System;
using System.Collections.Generic;
using System.Data.SqlClient; // Se agrega la libreria para poder trabajar con los metodos de sql
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Entidad;

namespace Capa_Datos
{
    internal class Conexion
    {

        private string Db, server, user, password;
        //public static bool bandera = false;

        private static Conexion Connet = null;

        private Conexion()
        {
            this.Db = "Registro";
            this.server = "DESKTOP-4JMMD2F";
            this.user = "sa";
            this.password = "Escuela10";
        }
        /*public static void Desconectar(bool var)
        {
            bandera = var;
        }
        public static string User { get; set; }
        public static string Password { get; set; }
        */
        public SqlConnection ConnectionSql()
        {
            SqlConnection ConnetB = new SqlConnection();

            try
            {
                ConnetB.ConnectionString = "Server =" + this.server + ";" + "Database =" + this.Db + ";" + "User Id =" + this.user + ";"
                + "Password =" + this.password + ";";
            }
            catch (Exception ex)
            {
                ConnetB = null;
                throw ex;
            }
            return ConnetB;
        }

        public static Conexion CrearInstancia()
        {
            /*if (bandera == true)
                Connet = null;*/

            if (Connet == null)
            {
                Connet = new Conexion();
            }

            return Connet;
        }

    }
}
