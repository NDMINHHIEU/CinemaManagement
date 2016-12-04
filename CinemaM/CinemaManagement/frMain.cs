using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Threading;

namespace CinemaManagement
{
    public partial class frMain : Form
    {
        public frMain()
        {
            Thread t = new Thread(LoadingScreen);
            t.Start();
            Thread.Sleep(4000);
            InitializeComponent();
            t.Abort();
        }
        private void LoadingScreen()
        {
            Application.Run(new frSplash());
        }
    }
}
