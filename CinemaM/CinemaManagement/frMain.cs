﻿using System;
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
        public frMain()
        {
            InitializeComponent();
        }

        private void frMain_Load(object sender, EventArgs e)
        {
            
        }

        private void frMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
