using DBVersion.Data;
using System.Data;

namespace DBVersion.DataAccess
{
    public class MigracionDA : DBVersion.DBConnection.DBConnection
    {
        public DataTable SelectTable(Migracion _obj, int Action)
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

        public int InsertOrUpdate(Migracion _obj, int Action)
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

        private void AddParameters(Migracion _obj)
        {
            CreateCommand("SP_Migracion", true);
            AddCmdParameter("@IdMigracion", _obj.IdMigracion, ParameterDirection.Input);
            AddCmdParameter("@FechaSolicitud", _obj.FechaSolicitud, ParameterDirection.Input);
            AddCmdParameter("@FechaMigracion", _obj.FechaMigracion, ParameterDirection.Input);
            AddCmdParameter("@Script", _obj.Script, ParameterDirection.Input);
            AddCmdParameter("@NuevosCambios", _obj.NuevosCambios, ParameterDirection.Input);
            AddCmdParameter("@ObservacionesSolicitud", _obj.ObservacionesSolicitud, ParameterDirection.Input);
            AddCmdParameter("@ObservacionesMigracion", _obj.ObservacionesMigracion, ParameterDirection.Input);
            AddCmdParameter("@Estado", _obj.Estado, ParameterDirection.Input);
            AddCmdParameter("@EstadoMigracion", _obj.EstadoMigracion, ParameterDirection.Input);
            AddCmdParameter("@MigradoDesa", _obj.MigradoDesa, ParameterDirection.Input);
            AddCmdParameter("@MigradoPrue", _obj.MigradoPrue, ParameterDirection.Input);
            AddCmdParameter("@MigradoCapa", _obj.MigradoCapa, ParameterDirection.Input);
            AddCmdParameter("@MigradoProd", _obj.MigradoProd, ParameterDirection.Input);
            AddCmdParameter("@IdUsuarioSolicita", _obj.IdUsuarioSolicita, ParameterDirection.Input);
            AddCmdParameter("@IdUsuarioMigra", _obj.IdUsuarioMigra, ParameterDirection.Input);
            AddCmdParameter("@IdSolucion", _obj.IdSolucion, ParameterDirection.Input);
        }
    }
}
