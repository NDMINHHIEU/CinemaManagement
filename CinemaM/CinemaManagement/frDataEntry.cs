using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Configuration;
using System.Data.SqlClient;

namespace CinemaManagement
{
    public partial class frDataEntry : Form
    {
        LopDungChung a = new LopDungChung();
        public frDataEntry()
        {
            InitializeComponent();
        }

        private void DataEntryClerk_Load(object sender, EventArgs e)
        {
            a.cnStr = "Server = " + ConfigurationManager.AppSettings["Server"] + "; Database = " + ConfigurationManager.AppSettings["Database"] + ";Integrated Security = true;";
            a.cn = new System.Data.SqlClient.SqlConnection(a.cnStr);

        }

        private void LoadTable()
        {
            
        }

        private void textBox16_TextChanged(object sender, EventArgs e)
        {

        }

        private void btPXoa_Click(object sender, EventArgs e)
        {

        }



    

  
    }
}
