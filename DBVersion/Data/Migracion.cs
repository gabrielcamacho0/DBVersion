using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBVersion.Data
{
    public class Migracion
    {
        public int IdMigracion { get; set; }

        [DataType(DataType.Date)]
        public DateTime? FechaSolicitud { get; set; }

        [DataType(DataType.Date)]
        public DateTime? FechaMigracion { get; set; }
        public string Script { get; set; } = "";
        public string NuevosCambios { get; set; } = "";
        public string ObservacionesSolicitud { get; set; } = "";
        public string ObservacionesMigracion { get; set; } = "";
        public bool Estado { get; set; }
        public bool EstadoMigracion { get; set; }
        public bool MigradoDesa { get; set; }
        public bool MigradoPrue { get; set; }
        public bool MigradoCapa { get; set; }
        public bool MigradoProd { get; set; }
        public int IdUsuarioSolicita { get; set; }
        public int IdUsuarioMigra { get; set; }
        public int IdSolucion { get; set; }
    }
}
