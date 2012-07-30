using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataBaseManager
{
    public class DataManager
    {
        
        public DataManager()
        {
             
        }

        private static string GetConnectiononString()
        {
            string constr;
            //string constr = "Server=Developer-2;Initial Catalog=AdviseyDb; TRUSTED_CONNECTION=yes; timeout=50";
            constr = ConfigurationManager.ConnectionStrings["conn"].ToString();
            return (constr);
        }
        public static SqlConnection getConnection()
        {
            SqlConnection connSql = null;
            try
            {
                connSql = new SqlConnection(GetConnectiononString());

                connSql.Open();

                return (connSql);
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }
        }
        public static SqlCommand GetCommand()
        {
            SqlCommand ConnCommand = null;
            try
            {
                ConnCommand = new SqlCommand();

                ConnCommand.CommandType = CommandType.Text;
                return (ConnCommand);
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }
        }

        public static SqlCommand GetCommandSP()
        {
            SqlCommand ConnCommand = null;
            try
            {
                ConnCommand = new SqlCommand();
                ConnCommand.CommandTimeout = 120;
                ConnCommand.CommandType = CommandType.StoredProcedure;
                return (ConnCommand);
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }
        }
        public static SqlCommand GetCommandSP(string spname)
        {
            SqlCommand ConnCommand = null;
            try
            {
                ConnCommand = new SqlCommand();
                // ConnCommand.CommandTimeout = 120;
                ConnCommand.CommandType = CommandType.StoredProcedure;
                ConnCommand.CommandText = spname;
                return (ConnCommand);
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }
        }
        public static SqlDataReader GetReader(string SqlString)
        {
            try
            {
                SqlCommand ConnCommand = GetCommand();
                ConnCommand.Connection = getConnection();
                ConnCommand.CommandText = SqlString;
                SqlDataReader ConnReader = ConnCommand.ExecuteReader(CommandBehavior.CloseConnection);
                return (ConnReader);
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }

        }
        public static SqlDataReader GetReader(SqlCommand ConnCommand)
        {
            try
            {
                ConnCommand.Connection = getConnection();
                SqlDataReader ConnReader = ConnCommand.ExecuteReader(CommandBehavior.CloseConnection);
                return (ConnReader);

            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }
            finally
            {
                ConnCommand.Dispose();
            }
        }
        public static Boolean WriteToDb(string SqlString)
        {
            SqlConnection ConnSql = getConnection();
            SqlTransaction ConnTransaction = ConnSql.BeginTransaction();
            SqlCommand ConnCommand = GetCommand();
            try
            {
                ConnCommand.Connection = ConnSql;
                ConnCommand.Transaction = ConnTransaction;
                ConnCommand.CommandText = SqlString;
                ConnCommand.ExecuteNonQuery();
                ConnTransaction.Commit();
                return true;
            }
            catch (SqlException ex)
            {
                ConnTransaction.Rollback();
                throw new ApplicationException(ex.Message.ToString());
            }
            finally
            {
                ConnCommand.Dispose();
                ConnSql.Close();
                ConnSql.Dispose();
            }
        }
        public static int WriteToDb(SqlCommand ConnCommand)
        {
            SqlConnection ConnSql = getConnection();
            SqlTransaction ConnTransaction = ConnSql.BeginTransaction();
            int NoofRowAfected = 0;
            try
            {
                ConnCommand.Connection = ConnSql;
                ConnCommand.Transaction = ConnTransaction;
                NoofRowAfected = ConnCommand.ExecuteNonQuery();
                ConnTransaction.Commit();
                return (NoofRowAfected);
            }
            catch (SqlException ex)
            {
                ConnTransaction.Rollback();
                throw new ApplicationException(ex.Message.ToString());
            }
            finally
            {
                ConnCommand.Dispose();
                ConnSql.Close();
                ConnSql.Dispose();
            }
        }

        public static DataSet GetDataSet(SqlCommand ConnCommand)
        {
            try
            {

                ConnCommand.Connection = getConnection();
                //DataSet da = ConnCommand.ExecuteReader(CommandBehavior.CloseConnection);
                SqlDataAdapter da = new SqlDataAdapter(ConnCommand);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;

            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }
            finally
            {
                ConnCommand.Dispose();

            }
        }

        public static DataSet GetDataSet(string Str)
        {
            SqlConnection ConnSql = null;
            try
            {
                ConnSql = getConnection();
                SqlDataAdapter da = new SqlDataAdapter(Str, ConnSql);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message.ToString());
            }
            finally
            {
                ConnSql.Close();
                ConnSql.Dispose();
            }
        }

    }


}
