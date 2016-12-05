using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

namespace CinemaManagement
{
    public class LopDungChung
    {
        public string cnStr;
        public SqlConnection cn;
        public int check;
        public void Connect()
        {
            try
            {
                if (cn != null && cn.State == ConnectionState.Closed)
                {
                    cn.Open();
                    check = 1;
                }
            }
            catch (SqlException)
            {
                MessageBox.Show("Connect Failed!!! Please type your server or database name correctly");
            }
            MessageBox.Show("Connect Success!! This application will be restart to save anything you config");
        }
        public void Disconnect()
        {
            try
            {
                if (cn != null && cn.State == ConnectionState.Open)
                {
                    cn.Close();
                    MessageBox.Show("Disconnected");
                }
                else check = 0;
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
        }

    }
}
