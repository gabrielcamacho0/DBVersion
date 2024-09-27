using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBVersion.Data
{
    public class ObjetoModificado
    {
        public int IdObjetoModificado { get; set; }
        public string NombreObjetoModificado { get; set; }
        public bool Estado { get; set; }
    }
}
