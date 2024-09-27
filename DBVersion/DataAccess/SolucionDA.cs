using DBVersion.Data;
using System.Data;


namespace DBVersion.DataAccess
{
    public class SolucionDA : DBVersion.DBConnection.DBConnection
    {
        public DataTable SelectTable(Solucion _obj, int Action)
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

        public int InsertOrUpdate(Solucion _obj, int Action)
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

        private void AddParameters(Solucion _obj)
        {
            CreateCommand("SP_Solucion", true);
            AddCmdParameter("@IdSolucion", _obj.IdSolucion, ParameterDirection.Input);
            AddCmdParameter("@NombreSolucion", _obj.NombreSolucion, ParameterDirection.Input);
            AddCmdParameter("@Identificador", _obj.Identificador, ParameterDirection.Input);
            AddCmdParameter("@Estado", _obj.Estado, ParameterDirection.Input);
        }
    }
}
