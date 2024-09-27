using DBVersion.Data;
using System.Data;

namespace DBVersion.DataAccess
{
    public class TipoModificacionDA : DBVersion.DBConnection.DBConnection
    {
        public DataTable SelectTable(TipoModificacion _obj, int Action)
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

        public int InsertOrUpdate(TipoModificacion _obj, int Action)
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

        private void AddParameters(TipoModificacion _obj)
        {
            CreateCommand("SP_TipoModificacion", true);
            AddCmdParameter("@IdTipoModificacion", _obj.IdTipoModificacion, ParameterDirection.Input);
            AddCmdParameter("@NombreTipoModificacion", _obj.NombreTipoModificacion, ParameterDirection.Input);
            AddCmdParameter("@Estado", _obj.Estado, ParameterDirection.Input);
        }
    }
}
