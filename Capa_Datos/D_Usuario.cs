using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data; //Permite utilizar el método DataTable
using System.Data.SqlClient;
using Capa_Entidad;



namespace Capa_Datos
{
    public class D_Usuario
    {
        //método para listar los elementos de la tabla Visitas
        public DataTable Listar()
        {
            SqlDataReader resultado; // Permite leer una secuencia de filas en una tabla dentro de sql
            DataTable Tabla = new DataTable();
            SqlConnection conexion = new SqlConnection();
            try
            {
                conexion = Conexion.CrearInstancia().ConnectionSql();
                SqlCommand comando = new SqlCommand("ListarVisitas", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                conexion.Open();
                resultado = comando.ExecuteReader();
                Tabla.Load(resultado);
                return Tabla;

            }
            catch (Exception ex) 
            {
                throw ex;
            }
            finally
            {
                if(conexion.State == ConnectionState.Open) conexion.Close(); //Cerramos la conexion
            }

        }

        // Método para Insertar Usuarios
        



        // Método para buscar a las Visitas
        public DataTable Buscar(string var)
        {
            SqlDataReader resultado; // Permite leer una secuencia de filas en una tabla dentro de sql
            DataTable Tabla = new DataTable();
            SqlConnection conexion = new SqlConnection();
            try
            {
                conexion = Conexion.CrearInstancia().ConnectionSql();
                SqlCommand comando = new SqlCommand("BuscarVisitas", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@var",SqlDbType.VarChar).Value = var;
                conexion.Open();
                resultado = comando.ExecuteReader();
                Tabla.Load(resultado);
                return Tabla;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conexion.State == ConnectionState.Open) conexion.Close(); //Cerramos la conexion
            }
        }
        
        // Método Para Insertar datos de las Visitas
        public string Insertar(E_Visita obj)
        {
            string respuesta = "";
            SqlConnection conexion = new SqlConnection();
            try
            {
                conexion = Conexion.CrearInstancia().ConnectionSql();
                SqlCommand comando = new SqlCommand("InsertarVisitas", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar).Value = obj.NOMBRE;
                comando.Parameters.Add("@CARRERA", SqlDbType.VarChar).Value = obj.CARRERA;
                comando.Parameters.Add("@CORREO", SqlDbType.VarChar).Value = obj.CORREO;
                comando.Parameters.Add("@EDIFICIO", SqlDbType.VarChar).Value = obj.EDIFICIO;
                comando.Parameters.Add("@HORA_ENTRADA", SqlDbType.DateTime).Value = obj.HORA_ENTRADA;
                comando.Parameters.Add("@HORA_SALIDA", SqlDbType.DateTime2).Value = obj.HORA_SALIDA;
                comando.Parameters.Add("@MOTIVO", SqlDbType.VarChar).Value = obj.MOTIVO;
                comando.Parameters.Add("@AULA_DESTINO", SqlDbType.VarChar).Value = obj.AULA_DESTINO;
                conexion.Open();
                if(comando.ExecuteNonQuery() == 1)
                {
                    respuesta = "OK";
                }
                else
                {
                    respuesta = "No se pudo ingresar el registro";
                }
               // respuesta = comando.ExecuteNonQuery() == 1 ? "OK" : "No se pudo Ingresar el registro";
            

            }
            catch (Exception ex)
            {
                respuesta = ex.Message;
            }
            finally
            {
                if (conexion.State == ConnectionState.Open) conexion.Close(); //Cerramos la conexion
            }
            return respuesta;
        }

        // Método para Modificar los datos del Visitante
        public string Actualizar(E_Visita obj)
        {
            string respuesta = "";
            SqlConnection conexion = new SqlConnection();
            try
            {
                conexion = Conexion.CrearInstancia().ConnectionSql();
                SqlCommand comando = new SqlCommand("EditarVisitas", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@IdUSUARIO", SqlDbType.Int).Value = obj.IdUSUARIO;
                comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar).Value = obj.NOMBRE;
                comando.Parameters.Add("@CARRERA", SqlDbType.VarChar).Value = obj.CARRERA;
                comando.Parameters.Add("@CORREO", SqlDbType.VarChar).Value = obj.CORREO;
                comando.Parameters.Add("@EDIFICIO", SqlDbType.VarChar).Value = obj.EDIFICIO;
                comando.Parameters.Add("@HORA_ENTRADA", SqlDbType.DateTime).Value = obj.HORA_ENTRADA;
                comando.Parameters.Add("@HORA_SALIDA", SqlDbType.DateTime2).Value = obj.HORA_SALIDA;
                comando.Parameters.Add("@MOTIVO", SqlDbType.VarChar).Value = obj.MOTIVO;
                comando.Parameters.Add("@AULA_DESTINO", SqlDbType.VarChar).Value = obj.AULA_DESTINO;
                conexion.Open();
                if (comando.ExecuteNonQuery() == 1)
                {
                    respuesta = "OK";
                }
                else
                {
                    respuesta = "No se pudo Modificar el registro de la Visita";
                }
                

            }
            catch (Exception ex)
            {
                respuesta = ex.Message;
            }
            finally
            {
                if (conexion.State == ConnectionState.Open) conexion.Close(); //Cerramos la conexion
            }
            return respuesta;
        }

        // Método para Eliminar las Visitas del registro

        public string Eliminar(int IdUSUARIO)
        {
            string respuesta = "";
            SqlConnection conexion = new SqlConnection();
            try
            {
                conexion = Conexion.CrearInstancia().ConnectionSql();
                SqlCommand comando = new SqlCommand("EliminarVisitas", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@IdUSUARIO", SqlDbType.Int).Value = IdUSUARIO;
                conexion.Open();
                if (comando.ExecuteNonQuery() == 1)
                {
                    respuesta = "OK";
                }
                else
                {
                    respuesta = "No se pudo Eliminar el/los registro(s) de las Visitas";
                }


            }
            catch (Exception ex)
            {
                respuesta = ex.Message;
            }
            finally
            {
                if (conexion.State == ConnectionState.Open) conexion.Close(); //Cerramos la conexion
            }
            return respuesta;
        }




    }
}
