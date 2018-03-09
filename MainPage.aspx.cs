using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace GMCWebsite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        OleDbConnection DBConnection;
        OleDbCommand DBCommand;
        OleDbDataReader DBReader;
        string SQLString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /* DBConnection = new OleDbConnection(("Provider=Microsoft.Jet.OLEDB.12.0; Data Source = " + Server.MapPath("MovieDatabase.mdf;")));
            DBConnection.Open();
            SQLString = ("Select * FROM MOVIES WHERE title LIKE \'%" + (keyword.Text + "%\' "));
            DBCommand = new OleDbCommand(SQLString, DBConnection);
            DBReader = DBCommand.ExecuteReader();
            DisplayResults.DataSource = DBReader;
            DisplayResults.DataBind(); */
        }

        protected void keyword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}