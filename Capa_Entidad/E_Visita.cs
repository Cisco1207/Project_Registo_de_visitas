using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Entidad
{
    public class E_Visita
    {

        // Agregamos las propiedades de acuerdo a cada campo de la tabla
        public int IdUSUARIO { get; set; }
        public string NOMBRE { get; set; }
        public string CARRERA { get; set;}
        public string CORREO { get; set;}
        public string EDIFICIO { get; set;}
        public DateTime HORA_ENTRADA { get; set;}
        public DateTime HORA_SALIDA { get; set;}
        public string MOTIVO { get; set;}
        public string AULA_DESTINO { get; set;}
        


    }
}
