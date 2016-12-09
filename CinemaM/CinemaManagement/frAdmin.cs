using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace CinemaManagement
{
    public partial class frAdmin : Form
    {
        public frAdmin()
        {
            InitializeComponent();
        }

        private void frAdmin_Load(object sender, EventArgs e)
        {
            
        }

        private void frAdmin_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
