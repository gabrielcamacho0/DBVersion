using DBVersion.Data;
using System.Data;

namespace DBVersion.DataAccess
{
    public class AmbienteDA : DBVersion.DBConnection.DBConnection
    {
        public DataTable SelectTable(Ambiente _obj, int Action)
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

        public int InsertOrUpdate(Ambiente _obj, int Action)
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

        private void AddParameters(Ambiente _obj)
        {
            CreateCommand("SP_Ambiente", true);
            AddCmdParameter("@IdAmbiente", _obj.IdAmbiente, ParameterDirection.Input);
            AddCmdParameter("@NombreAmbiente", _obj.NombreAmbiente, ParameterDirection.Input);
            AddCmdParameter("@Estado", _obj.Estado, ParameterDirection.Input);
        }
    }
}
