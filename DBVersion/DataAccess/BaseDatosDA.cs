using DBVersion.Data;
using System.Data;

namespace DBVersion.DataAccess
{
    public class BaseDatosDA : DBVersion.DBConnection.DBConnection
    {
        public DataTable SelectTable(BaseDatos _obj, int Action)
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

        public int InsertOrUpdate(BaseDatos _obj, int Action)
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

        private void AddParameters(BaseDatos _obj)
        {
            CreateCommand("SP_BaseDatos", true);
            AddCmdParameter("@IdBaseDatos", _obj.IdBaseDatos, ParameterDirection.Input);
            AddCmdParameter("@NombreBaseDatos", _obj.NombreBaseDatos, ParameterDirection.Input);
            AddCmdParameter("@Estado", _obj.Estado, ParameterDirection.Input);
        }
    }
}
