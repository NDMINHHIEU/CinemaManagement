namespace CinemaManagement
{
    partial class frLogin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbTenTKfrLogin = new System.Windows.Forms.Label();
            this.lbMKfrLogin = new System.Windows.Forms.Label();
            this.txtTenTKfrLogin = new System.Windows.Forms.TextBox();
            this.txtMKfrLogin = new System.Windows.Forms.TextBox();
            this.btOKfrLogin = new System.Windows.Forms.Button();
            this.btHuyfrLogin = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbTenTKfrLogin
            // 
            this.lbTenTKfrLogin.AutoSize = true;
            this.lbTenTKfrLogin.Font = new System.Drawing.Font("Calibri", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbTenTKfrLogin.Location = new System.Drawing.Point(23, 55);
            this.lbTenTKfrLogin.Name = "lbTenTKfrLogin";
            this.lbTenTKfrLogin.Size = new System.Drawing.Size(128, 26);
            this.lbTenTKfrLogin.TabIndex = 0;
            this.lbTenTKfrLogin.Text = "Tên Tài Khoản";
            // 
            // lbMKfrLogin
            // 
            this.lbMKfrLogin.AutoSize = true;
            this.lbMKfrLogin.Font = new System.Drawing.Font("Calibri", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbMKfrLogin.Location = new System.Drawing.Point(23, 94);
            this.lbMKfrLogin.Name = "lbMKfrLogin";
            this.lbMKfrLogin.Size = new System.Drawing.Size(95, 26);
            this.lbMKfrLogin.TabIndex = 0;
            this.lbMKfrLogin.Text = "Mật Khẩu";
            // 
            // txtTenTKfrLogin
            // 
            this.txtTenTKfrLogin.Font = new System.Drawing.Font("Calibri", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenTKfrLogin.Location = new System.Drawing.Point(157, 48);
            this.txtTenTKfrLogin.Name = "txtTenTKfrLogin";
            this.txtTenTKfrLogin.Size = new System.Drawing.Size(258, 33);
            this.txtTenTKfrLogin.TabIndex = 0;
            // 
            // txtMKfrLogin
            // 
            this.txtMKfrLogin.Font = new System.Drawing.Font("Calibri", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMKfrLogin.Location = new System.Drawing.Point(157, 91);
            this.txtMKfrLogin.Name = "txtMKfrLogin";
            this.txtMKfrLogin.PasswordChar = '*';
            this.txtMKfrLogin.Size = new System.Drawing.Size(258, 33);
            this.txtMKfrLogin.TabIndex = 1;
            // 
            // btOKfrLogin
            // 
            this.btOKfrLogin.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btOKfrLogin.Location = new System.Drawing.Point(114, 155);
            this.btOKfrLogin.Name = "btOKfrLogin";
            this.btOKfrLogin.Size = new System.Drawing.Size(117, 36);
            this.btOKfrLogin.TabIndex = 2;
            this.btOKfrLogin.Text = "Chấp Nhận";
            this.btOKfrLogin.UseVisualStyleBackColor = true;
            this.btOKfrLogin.Click += new System.EventHandler(this.btOKfrLogin_Click);
            // 
            // btHuyfrLogin
            // 
            this.btHuyfrLogin.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btHuyfrLogin.Location = new System.Drawing.Point(259, 155);
            this.btHuyfrLogin.Name = "btHuyfrLogin";
            this.btHuyfrLogin.Size = new System.Drawing.Size(117, 36);
            this.btHuyfrLogin.TabIndex = 3;
            this.btHuyfrLogin.Text = "Hủy";
            this.btHuyfrLogin.UseVisualStyleBackColor = true;
            this.btHuyfrLogin.Click += new System.EventHandler(this.btHuyfrLogin_Click);
            // 
            // frLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(490, 221);
            this.Controls.Add(this.btHuyfrLogin);
            this.Controls.Add(this.btOKfrLogin);
            this.Controls.Add(this.txtMKfrLogin);
            this.Controls.Add(this.txtTenTKfrLogin);
            this.Controls.Add(this.lbMKfrLogin);
            this.Controls.Add(this.lbTenTKfrLogin);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "frLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "LOGIN";
            this.Load += new System.EventHandler(this.frLogin_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbTenTKfrLogin;
        private System.Windows.Forms.Label lbMKfrLogin;
        private System.Windows.Forms.TextBox txtTenTKfrLogin;
        private System.Windows.Forms.TextBox txtMKfrLogin;
        private System.Windows.Forms.Button btOKfrLogin;
        private System.Windows.Forms.Button btHuyfrLogin;
    }
}