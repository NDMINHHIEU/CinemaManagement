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
    public partial class frLogin : Form
    {
        LopDungChung a = new LopDungChung();
        DataSet ds;
        public frLogin()
        {
            InitializeComponent();
        }

        private void frLogin_Load(object sender, EventArgs e)
        {
            a.TaoKetNoi();
        }

        public DataSet loadIDChucVu()
        {
            try
            {
                string sql = "SELECT IDChucVu FROM TaiKhoan WHERE TenTK = '"+txtTenTKfrLogin.Text+"'";
                SqlDataAdapter da = new SqlDataAdapter(sql, a.cn);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (SqlException a)
            {
                MessageBox.Show(a.Message);
                return null;
            }
        }

        private void btOKfrLogin_Click(object sender, EventArgs e)
        {
            try
            {
                var idchucvu = loadIDChucVu().Tables[0];
                string kiemtraTK = "SELECT * FROM TaiKhoan WHERE TenTK = '" + txtTenTKfrLogin.Text + "' AND pass = '" + txtMKfrLogin.Text + "'";
                SqlCommand cmd = new SqlCommand(kiemtraTK, a.cn);
                a.cn.Open();//mo ket noi luc nay
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    this.Hide();
                    if (Convert.ToInt32(idchucvu.Rows[0][0].ToString()) == 1)
                    {
                        frAdmin ad = new frAdmin();
                        ad.ShowDialog();
                    }
                    else if (Convert.ToInt32(idchucvu.Rows[0][0].ToString()) == 2)
                    {
                        frMain ad = new frMain();
                        ad.ShowDialog();
                    }
                    //frAdmin ad = new frAdmin();
                    //ad.ShowDialog();
                    //else if (idchucvu.Rows[0].ToString() == "2") => tuy thuoc idchucvu la gi ma se vao form do
                }
                else
                {
                    MessageBox.Show("Tài khoản hoặc mật khẩu không đúng, vui lòng bạn kiểm tra lại", "Thông báo", MessageBoxButtons.OK);
                    txtTenTKfrLogin.Text = "";
                    txtMKfrLogin.Text = "";
                }
            }
            catch (SqlException e1)
            {
                MessageBox.Show(e1.Message);
            }
            finally
            {
                a.cn.Close();
            }
        }

        private void btHuyfrLogin_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void frLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn thực sự muốn thoát", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Cancel)
                e.Cancel = true;
        }
    }
}
