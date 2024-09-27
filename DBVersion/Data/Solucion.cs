using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBVersion.Data
{
    public class Solucion
    {
        public int IdSolucion { get; set; }
        public string NombreSolucion { get; set; }
        public string Identificador { get; set; }
        public bool Estado { get; set; }
    }
}
