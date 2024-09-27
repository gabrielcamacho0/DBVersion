using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBVersion.Data
{
    public class Ambiente
    {
        public int IdAmbiente { get; set; }
        public string NombreAmbiente { get; set; }
        public bool Estado { get; set; }
    }
}
