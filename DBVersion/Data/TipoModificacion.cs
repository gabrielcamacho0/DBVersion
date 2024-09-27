using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBVersion.Data
{
    public class TipoModificacion
    {
        public int IdTipoModificacion { get; set; }
        public string NombreTipoModificacion { get; set; }
        public bool Estado { get; set; }
    }
}
