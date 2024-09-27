using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBVersion.Data
{
    public class Modificacion
    {
        public int IdModificacion { get; set; }
        public string Descripcion { get; set; } = "";
        [DataType(DataType.Date)]
        public DateTime? FechaModificacion { get; set; }
        public string NombreObjetoModificado { get; set; } = "";
        public string Requerimiento { get; set; } = "";
        public string Observacion { get; set; } = "";
        public bool Aprobado { get; set; }
        public bool Estado { get; set; }
        public int IdTipoModificacion { get; set; }
        public int IdObjetoModificado { get; set; }
        public int IdBaseDatos { get; set; }
        public int IdAmbiente { get; set; }
        public int IdUsuario { get; set; }
        public int IdSolucion { get; set; }
    }
}
