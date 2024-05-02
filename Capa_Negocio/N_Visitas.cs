using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
using Capa_Entidad;

namespace Capa_Negocio
{
    public class N_Visitas
    {
        // Método para listar las Visitas
        public static DataTable Listar()
        { 
        
            // Generamos una instancia de la clase D_Usuario
            D_Usuario datos = new D_Usuario();
            return datos.Listar();
        }

        // Método para buscar a las visitas
        public static DataTable Buscar(string var)
        {
            // Generamos una instancia de la clase D_Usuario
            D_Usuario datos = new D_Usuario();
            return datos.Buscar(var);

        }

        // Método para Insertar a las visitas
        public static string Insertar(string NOMBRE, string CARRERA, string CORREO, string EDIFICIO, DateTime HORA_ENTRADA, DateTime HORA_SALIDA, string MOTIVO, string AULA_DESTINO)
        {
            D_Usuario datos = new D_Usuario();
            E_Visita obj = new E_Visita();
            obj.NOMBRE = NOMBRE;
            obj.CARRERA = CARRERA;
            obj.CORREO = CORREO;
            obj.EDIFICIO = EDIFICIO;
            obj.HORA_ENTRADA = HORA_ENTRADA;
            obj.HORA_SALIDA = HORA_SALIDA;
            obj.MOTIVO = MOTIVO;
            obj.AULA_DESTINO = AULA_DESTINO;
            return datos.Insertar(obj);
        }

        // Método para Modificar a las visitas
        public static string Actualizar(int IdUSUARIO, string NOMBRE, string CARRERA, string CORREO, string EDIFICIO, DateTime HORA_ENTRADA, DateTime HORA_SALIDA, string MOTIVO, string AULA_DESTINO)
        {
            D_Usuario datos = new D_Usuario();
            E_Visita obj = new E_Visita();
            obj.IdUSUARIO = IdUSUARIO;
            obj.NOMBRE = NOMBRE;
            obj.CARRERA = CARRERA;
            obj.CORREO = CORREO;
            obj.EDIFICIO = EDIFICIO;
            obj.HORA_ENTRADA = HORA_ENTRADA;
            obj.HORA_SALIDA = HORA_SALIDA;
            obj.MOTIVO = MOTIVO;
            obj.AULA_DESTINO = AULA_DESTINO;
            return datos.Actualizar(obj);
        }

        // Método para Eliminar a las visitas
        public static string Eliminar(int IdUSUARIO)
        {
            // Generamos una instancia de la clase D_Usuario
            D_Usuario datos = new D_Usuario();
            return datos.Eliminar(IdUSUARIO);
        }

        public static string Insertar(string text1, string text2, string text3, int selectedIndex1, int selectedIndex2, string text4, DateTime value)
        {
            throw new NotImplementedException();
        }
    }
}
