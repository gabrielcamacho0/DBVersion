using DBVersion.Data;
using System.Data;

namespace DBVersion.DataAccess
{
    public class ModificacionDA : DBVersion.DBConnection.DBConnection
    {
        public DataTable SelectTable(Modificacion _obj, int Action)
        {
            DataTable dt = new DataTable();
            try
            {
                AddParameters(_obj);
                AddCmdParameter("@Action", Action, ParameterDirection.Input);
                dt = GetDataSet().Tables[0];
            }
            catch (Exception e)
            {
                throw e;
            }
            return dt;
        }

        public int InsertOrUpdate(Modificacion _obj, int Action)
        {
            int i;
            try
            {
                AddParameters(_obj);
                AddCmdParameter("@Action", Action, ParameterDirection.Input);
                ExecuteNonQuery();
                i = 1;
            }
            catch (Exception e)
            {
                i = -1;
                throw e;
            }
            return i;
        }

        private void AddParameters(Modificacion _obj)
        {
            CreateCommand("SP_Modificacion", true);
            AddCmdParameter("@IdModificacion", _obj.IdModificacion, ParameterDirection.Input);
            AddCmdParameter("@Descripcion", _obj.Descripcion, ParameterDirection.Input);
            AddCmdParameter("@FechaModificacion", _obj.FechaModificacion, ParameterDirection.Input);
            AddCmdParameter("@NombreObjetoModificado", _obj.NombreObjetoModificado, ParameterDirection.Input);
            AddCmdParameter("@Requerimiento", _obj.Requerimiento, ParameterDirection.Input);
            AddCmdParameter("@Observacion", _obj.Observacion, ParameterDirection.Input);
            AddCmdParameter("@Aprobado", _obj.Aprobado, ParameterDirection.Input);
            AddCmdParameter("@Estado", _obj.Estado, ParameterDirection.Input);
            AddCmdParameter("@IdTipoModificacion", _obj.IdTipoModificacion, ParameterDirection.Input);
            AddCmdParameter("@IdObjetoModificado", _obj.IdObjetoModificado, ParameterDirection.Input);
            AddCmdParameter("@IdBaseDatos", _obj.IdBaseDatos, ParameterDirection.Input);
            AddCmdParameter("@IdAmbiente", _obj.IdAmbiente, ParameterDirection.Input);
            AddCmdParameter("@IdUsuario", _obj.IdUsuario, ParameterDirection.Input);
            AddCmdParameter("@IdSolucion", _obj.IdSolucion, ParameterDirection.Input);           
        }
    }
}
