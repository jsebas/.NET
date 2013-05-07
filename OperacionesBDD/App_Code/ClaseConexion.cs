using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// creando un metodo para pasar una sentencia sql y retorna dataset, 
/// con ese dataset poblamos negrilla
/// </summary>
public class ClaseConexion
{
    private DataSet _dataSet;
    private SqlConnection _SqlConnection;
    private string _cadenaConexion;
    private SqlCommand _SqlCommand;
    private SqlDataAdapter _SqlDataAdapter;

    public DataSet TraerDataSet(string sql)
    {
        try
        {
            _cadenaConexion = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
            _SqlConnection = new SqlConnection(_cadenaConexion);
            _SqlCommand = new SqlCommand(sql, _SqlConnection);
            _SqlDataAdapter = new SqlDataAdapter(_SqlCommand);
            _dataSet = new DataSet();
            _SqlConnection.Open();
            _SqlDataAdapter.Fill(_dataSet);
            return _dataSet;

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            _SqlConnection.Close();
        }
    }
}