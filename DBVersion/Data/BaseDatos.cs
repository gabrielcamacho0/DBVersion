using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBVersion.Data
{
    public class BaseDatos
    {
        public int IdBaseDatos { get; set; }
        public string NombreBaseDatos { get; set; }
        public bool Estado { get; set; }
    }
}
