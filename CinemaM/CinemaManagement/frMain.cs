using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Threading;
using System.Configuration;

namespace CinemaManagement
{
    public partial class frMain : Form
    {
        string path = Application.ExecutablePath + ".config";
        LopDungChung a = new LopDungChung();   
        public frMain()
        {
            Thread t = new Thread(LoadingScreen);
            t.Start();
            Thread.Sleep(4000);
            t.Abort();
            InitializeComponent();
            CheckConfig();
        }

        private void CheckConfig()
        {
            if (System.IO.File.Exists(path) == false)
            {
                MessageBox.Show("It's the first time you run this app");
                Application.Run(new frConfig());
            }
            else
            {
                try
                {
                    string test = "Server = " + ConfigurationManager.AppSettings["Server"] + "; Database = " + ConfigurationManager.AppSettings["Database"] + ";Integrated Security = true;";
                    SqlConnection checkConnect = new SqlConnection(test);
                    checkConnect.Open();
                }
                catch
                {
                    MessageBox.Show("Your Configuration information doesn't correct, please check your info now");
                    Application.Run(new frConfig());
                }
            }
        }

        private void LoadingScreen()
        {
            Application.Run(new frSplash());
        }

        private void frMain_Load(object sender, EventArgs e)
        {
            
        }
    }
}
