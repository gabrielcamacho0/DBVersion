using DBVersion.Data;
using System.Data;

namespace DBVersion.DataAccess
{
    public class ObjetoModificadoDA : DBVersion.DBConnection.DBConnection
    {
        public DataTable SelectTable(ObjetoModificado _obj, int Action)
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

        public int InsertOrUpdate(ObjetoModificado _obj, int Action)
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

        private void AddParameters(ObjetoModificado _obj)
        {
            CreateCommand("SP_ObjetoModificado", true);
            AddCmdParameter("@IdObjetoModificado", _obj.IdObjetoModificado, ParameterDirection.Input);
            AddCmdParameter("@NombreObjetoModificado", _obj.NombreObjetoModificado, ParameterDirection.Input);
            AddCmdParameter("@Estado", _obj.Estado, ParameterDirection.Input);
        }
    }
}
