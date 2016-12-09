namespace CinemaManagement
{
    partial class frAdmin
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
            this.lbQLNV = new System.Windows.Forms.Label();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabThemNV = new System.Windows.Forms.TabPage();
            this.btHuyNV = new System.Windows.Forms.Button();
            this.btSaveNV = new System.Windows.Forms.Button();
            this.cbChucVu = new System.Windows.Forms.ComboBox();
            this.lbPosition = new System.Windows.Forms.Label();
            this.txtDiaChi = new System.Windows.Forms.TextBox();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.txtMaNV = new System.Windows.Forms.TextBox();
            this.txtSDT = new System.Windows.Forms.TextBox();
            this.txtTenNV = new System.Windows.Forms.TextBox();
            this.txtHoNV = new System.Windows.Forms.TextBox();
            this.txtID = new System.Windows.Forms.TextBox();
            this.lbEmail = new System.Windows.Forms.Label();
            this.lbDiaChi = new System.Windows.Forms.Label();
            this.lbPhone = new System.Windows.Forms.Label();
            this.lbEmployeeCode = new System.Windows.Forms.Label();
            this.lbLName = new System.Windows.Forms.Label();
            this.lbFName = new System.Windows.Forms.Label();
            this.lbID = new System.Windows.Forms.Label();
            this.dgv_NV = new System.Windows.Forms.DataGridView();
            this.tabTK = new System.Windows.Forms.TabPage();
            this.btHuyTK = new System.Windows.Forms.Button();
            this.btSaveTK = new System.Windows.Forms.Button();
            this.txtTenTK = new System.Windows.Forms.TextBox();
            this.txtMK = new System.Windows.Forms.TextBox();
            this.txtMNV = new System.Windows.Forms.TextBox();
            this.lbTenTK = new System.Windows.Forms.Label();
            this.lbMK = new System.Windows.Forms.Label();
            this.lbMNV = new System.Windows.Forms.Label();
            this.dgv_TK = new System.Windows.Forms.DataGridView();
            this.tabControl1.SuspendLayout();
            this.tabThemNV.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_NV)).BeginInit();
            this.tabTK.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_TK)).BeginInit();
            this.SuspendLayout();
            // 
            // lbQLNV
            // 
            this.lbQLNV.AutoSize = true;
            this.lbQLNV.Font = new System.Drawing.Font("Calibri", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbQLNV.Location = new System.Drawing.Point(257, 9);
            this.lbQLNV.Name = "lbQLNV";
            this.lbQLNV.Size = new System.Drawing.Size(249, 33);
            this.lbQLNV.TabIndex = 0;
            this.lbQLNV.Text = "QUẢN LÝ NHÂN VIÊN";
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Controls.Add(this.tabThemNV);
            this.tabControl1.Controls.Add(this.tabTK);
            this.tabControl1.Font = new System.Drawing.Font("Calibri", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabControl1.Location = new System.Drawing.Point(1, 45);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(764, 626);
            this.tabControl1.TabIndex = 1;
            // 
            // tabThemNV
            // 
            this.tabThemNV.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.tabThemNV.Controls.Add(this.btHuyNV);
            this.tabThemNV.Controls.Add(this.btSaveNV);
            this.tabThemNV.Controls.Add(this.cbChucVu);
            this.tabThemNV.Controls.Add(this.lbPosition);
            this.tabThemNV.Controls.Add(this.txtDiaChi);
            this.tabThemNV.Controls.Add(this.txtEmail);
            this.tabThemNV.Controls.Add(this.txtMaNV);
            this.tabThemNV.Controls.Add(this.txtSDT);
            this.tabThemNV.Controls.Add(this.txtTenNV);
            this.tabThemNV.Controls.Add(this.txtHoNV);
            this.tabThemNV.Controls.Add(this.txtID);
            this.tabThemNV.Controls.Add(this.lbEmail);
            this.tabThemNV.Controls.Add(this.lbDiaChi);
            this.tabThemNV.Controls.Add(this.lbPhone);
            this.tabThemNV.Controls.Add(this.lbEmployeeCode);
            this.tabThemNV.Controls.Add(this.lbLName);
            this.tabThemNV.Controls.Add(this.lbFName);
            this.tabThemNV.Controls.Add(this.lbID);
            this.tabThemNV.Controls.Add(this.dgv_NV);
            this.tabThemNV.Location = new System.Drawing.Point(4, 32);
            this.tabThemNV.Name = "tabThemNV";
            this.tabThemNV.Padding = new System.Windows.Forms.Padding(3);
            this.tabThemNV.Size = new System.Drawing.Size(756, 590);
            this.tabThemNV.TabIndex = 0;
            this.tabThemNV.Text = "Nhân Viên";
            this.tabThemNV.UseVisualStyleBackColor = true;
            // 
            // btHuyNV
            // 
            this.btHuyNV.Location = new System.Drawing.Point(406, 516);
            this.btHuyNV.Name = "btHuyNV";
            this.btHuyNV.Size = new System.Drawing.Size(175, 44);
            this.btHuyNV.TabIndex = 9;
            this.btHuyNV.Text = "Hủy";
            this.btHuyNV.UseVisualStyleBackColor = true;
            // 
            // btSaveNV
            // 
            this.btSaveNV.Location = new System.Drawing.Point(174, 516);
            this.btSaveNV.Name = "btSaveNV";
            this.btSaveNV.Size = new System.Drawing.Size(175, 44);
            this.btSaveNV.TabIndex = 8;
            this.btSaveNV.Text = "Lưu";
            this.btSaveNV.UseVisualStyleBackColor = true;
            // 
            // cbChucVu
            // 
            this.cbChucVu.FormattingEnabled = true;
            this.cbChucVu.Location = new System.Drawing.Point(109, 90);
            this.cbChucVu.Name = "cbChucVu";
            this.cbChucVu.Size = new System.Drawing.Size(223, 31);
            this.cbChucVu.TabIndex = 4;
            // 
            // lbPosition
            // 
            this.lbPosition.AutoSize = true;
            this.lbPosition.Location = new System.Drawing.Point(28, 93);
            this.lbPosition.Name = "lbPosition";
            this.lbPosition.Size = new System.Drawing.Size(74, 23);
            this.lbPosition.TabIndex = 1;
            this.lbPosition.Text = "Chức Vụ";
            // 
            // txtDiaChi
            // 
            this.txtDiaChi.Location = new System.Drawing.Point(419, 127);
            this.txtDiaChi.Name = "txtDiaChi";
            this.txtDiaChi.Size = new System.Drawing.Size(283, 31);
            this.txtDiaChi.TabIndex = 7;
            // 
            // txtEmail
            // 
            this.txtEmail.Location = new System.Drawing.Point(107, 127);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(225, 31);
            this.txtEmail.TabIndex = 6;
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(419, 15);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.Size = new System.Drawing.Size(126, 31);
            this.txtMaNV.TabIndex = 1;
            // 
            // txtSDT
            // 
            this.txtSDT.Location = new System.Drawing.Point(419, 90);
            this.txtSDT.Name = "txtSDT";
            this.txtSDT.Size = new System.Drawing.Size(283, 31);
            this.txtSDT.TabIndex = 5;
            // 
            // txtTenNV
            // 
            this.txtTenNV.Location = new System.Drawing.Point(419, 52);
            this.txtTenNV.Name = "txtTenNV";
            this.txtTenNV.Size = new System.Drawing.Size(283, 31);
            this.txtTenNV.TabIndex = 3;
            // 
            // txtHoNV
            // 
            this.txtHoNV.Location = new System.Drawing.Point(107, 52);
            this.txtHoNV.Name = "txtHoNV";
            this.txtHoNV.Size = new System.Drawing.Size(225, 31);
            this.txtHoNV.TabIndex = 2;
            // 
            // txtID
            // 
            this.txtID.Location = new System.Drawing.Point(107, 15);
            this.txtID.Name = "txtID";
            this.txtID.ReadOnly = true;
            this.txtID.Size = new System.Drawing.Size(105, 31);
            this.txtID.TabIndex = 0;
            // 
            // lbEmail
            // 
            this.lbEmail.AutoSize = true;
            this.lbEmail.Location = new System.Drawing.Point(28, 130);
            this.lbEmail.Name = "lbEmail";
            this.lbEmail.Size = new System.Drawing.Size(51, 23);
            this.lbEmail.TabIndex = 1;
            this.lbEmail.Text = "Email";
            // 
            // lbDiaChi
            // 
            this.lbDiaChi.AutoSize = true;
            this.lbDiaChi.Location = new System.Drawing.Point(338, 130);
            this.lbDiaChi.Name = "lbDiaChi";
            this.lbDiaChi.Size = new System.Drawing.Size(63, 23);
            this.lbDiaChi.TabIndex = 1;
            this.lbDiaChi.Text = "Địa Chỉ";
            // 
            // lbPhone
            // 
            this.lbPhone.AutoSize = true;
            this.lbPhone.Location = new System.Drawing.Point(338, 93);
            this.lbPhone.Name = "lbPhone";
            this.lbPhone.Size = new System.Drawing.Size(40, 23);
            this.lbPhone.TabIndex = 1;
            this.lbPhone.Text = "SĐT";
            // 
            // lbEmployeeCode
            // 
            this.lbEmployeeCode.AutoSize = true;
            this.lbEmployeeCode.Location = new System.Drawing.Point(339, 18);
            this.lbEmployeeCode.Name = "lbEmployeeCode";
            this.lbEmployeeCode.Size = new System.Drawing.Size(62, 23);
            this.lbEmployeeCode.TabIndex = 10;
            this.lbEmployeeCode.Text = "Mã NV";
            // 
            // lbLName
            // 
            this.lbLName.AutoSize = true;
            this.lbLName.Location = new System.Drawing.Point(28, 55);
            this.lbLName.Name = "lbLName";
            this.lbLName.Size = new System.Drawing.Size(59, 23);
            this.lbLName.TabIndex = 1;
            this.lbLName.Text = "Họ NV";
            // 
            // lbFName
            // 
            this.lbFName.AutoSize = true;
            this.lbFName.Location = new System.Drawing.Point(338, 55);
            this.lbFName.Name = "lbFName";
            this.lbFName.Size = new System.Drawing.Size(63, 23);
            this.lbFName.TabIndex = 1;
            this.lbFName.Text = "Tên NV";
            // 
            // lbID
            // 
            this.lbID.AutoSize = true;
            this.lbID.Location = new System.Drawing.Point(28, 18);
            this.lbID.Name = "lbID";
            this.lbID.Size = new System.Drawing.Size(28, 23);
            this.lbID.TabIndex = 9;
            this.lbID.Text = "ID";
            // 
            // dgv_NV
            // 
            this.dgv_NV.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgv_NV.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.Sunken;
            this.dgv_NV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_NV.Location = new System.Drawing.Point(-5, 214);
            this.dgv_NV.Name = "dgv_NV";
            this.dgv_NV.Size = new System.Drawing.Size(760, 266);
            this.dgv_NV.TabIndex = 0;
            // 
            // tabTK
            // 
            this.tabTK.Controls.Add(this.btHuyTK);
            this.tabTK.Controls.Add(this.btSaveTK);
            this.tabTK.Controls.Add(this.txtTenTK);
            this.tabTK.Controls.Add(this.txtMK);
            this.tabTK.Controls.Add(this.txtMNV);
            this.tabTK.Controls.Add(this.lbTenTK);
            this.tabTK.Controls.Add(this.lbMK);
            this.tabTK.Controls.Add(this.lbMNV);
            this.tabTK.Controls.Add(this.dgv_TK);
            this.tabTK.Location = new System.Drawing.Point(4, 32);
            this.tabTK.Name = "tabTK";
            this.tabTK.Padding = new System.Windows.Forms.Padding(3);
            this.tabTK.Size = new System.Drawing.Size(756, 590);
            this.tabTK.TabIndex = 1;
            this.tabTK.Text = "Tài Khoản";
            this.tabTK.UseVisualStyleBackColor = true;
            // 
            // btHuyTK
            // 
            this.btHuyTK.Location = new System.Drawing.Point(409, 524);
            this.btHuyTK.Name = "btHuyTK";
            this.btHuyTK.Size = new System.Drawing.Size(175, 44);
            this.btHuyTK.TabIndex = 28;
            this.btHuyTK.Text = "Hủy";
            this.btHuyTK.UseVisualStyleBackColor = true;
            // 
            // btSaveTK
            // 
            this.btSaveTK.Location = new System.Drawing.Point(177, 524);
            this.btSaveTK.Name = "btSaveTK";
            this.btSaveTK.Size = new System.Drawing.Size(175, 44);
            this.btSaveTK.TabIndex = 26;
            this.btSaveTK.Text = "Lưu";
            this.btSaveTK.UseVisualStyleBackColor = true;
            // 
            // txtTenTK
            // 
            this.txtTenTK.Location = new System.Drawing.Point(151, 71);
            this.txtTenTK.Name = "txtTenTK";
            this.txtTenTK.Size = new System.Drawing.Size(225, 31);
            this.txtTenTK.TabIndex = 13;
            // 
            // txtMK
            // 
            this.txtMK.Location = new System.Drawing.Point(151, 118);
            this.txtMK.Name = "txtMK";
            this.txtMK.PasswordChar = '*';
            this.txtMK.Size = new System.Drawing.Size(225, 31);
            this.txtMK.TabIndex = 20;
            // 
            // txtMNV
            // 
            this.txtMNV.Location = new System.Drawing.Point(151, 26);
            this.txtMNV.Name = "txtMNV";
            this.txtMNV.ReadOnly = true;
            this.txtMNV.Size = new System.Drawing.Size(105, 31);
            this.txtMNV.TabIndex = 11;
            // 
            // lbTenTK
            // 
            this.lbTenTK.AutoSize = true;
            this.lbTenTK.Location = new System.Drawing.Point(31, 74);
            this.lbTenTK.Name = "lbTenTK";
            this.lbTenTK.Size = new System.Drawing.Size(114, 23);
            this.lbTenTK.TabIndex = 29;
            this.lbTenTK.Text = "Tên Tài Khoản";
            // 
            // lbMK
            // 
            this.lbMK.AutoSize = true;
            this.lbMK.Location = new System.Drawing.Point(31, 118);
            this.lbMK.Name = "lbMK";
            this.lbMK.Size = new System.Drawing.Size(84, 23);
            this.lbMK.TabIndex = 17;
            this.lbMK.Text = "Mật Khẩu";
            // 
            // lbMNV
            // 
            this.lbMNV.AutoSize = true;
            this.lbMNV.Location = new System.Drawing.Point(31, 26);
            this.lbMNV.Name = "lbMNV";
            this.lbMNV.Size = new System.Drawing.Size(62, 23);
            this.lbMNV.TabIndex = 27;
            this.lbMNV.Text = "Mã NV";
            // 
            // dgv_TK
            // 
            this.dgv_TK.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgv_TK.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.Sunken;
            this.dgv_TK.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_TK.Location = new System.Drawing.Point(-2, 222);
            this.dgv_TK.Name = "dgv_TK";
            this.dgv_TK.Size = new System.Drawing.Size(760, 266);
            this.dgv_TK.TabIndex = 12;
            // 
            // frAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(763, 670);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.lbQLNV);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "frAdmin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frAdmin";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frAdmin_FormClosed);
            this.Load += new System.EventHandler(this.frAdmin_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabThemNV.ResumeLayout(false);
            this.tabThemNV.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_NV)).EndInit();
            this.tabTK.ResumeLayout(false);
            this.tabTK.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_TK)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbQLNV;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabThemNV;
        private System.Windows.Forms.DataGridView dgv_NV;
        private System.Windows.Forms.TabPage tabTK;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtHoNV;
        private System.Windows.Forms.TextBox txtID;
        private System.Windows.Forms.Label lbEmail;
        private System.Windows.Forms.Label lbDiaChi;
        private System.Windows.Forms.Label lbPosition;
        private System.Windows.Forms.Label lbPhone;
        private System.Windows.Forms.Label lbEmployeeCode;
        private System.Windows.Forms.Label lbLName;
        private System.Windows.Forms.Label lbFName;
        private System.Windows.Forms.Label lbID;
        private System.Windows.Forms.ComboBox cbChucVu;
        private System.Windows.Forms.Button btHuyNV;
        private System.Windows.Forms.Button btSaveNV;
        private System.Windows.Forms.TextBox txtDiaChi;
        private System.Windows.Forms.TextBox txtMaNV;
        private System.Windows.Forms.TextBox txtSDT;
        private System.Windows.Forms.TextBox txtTenNV;
        private System.Windows.Forms.Button btHuyTK;
        private System.Windows.Forms.Button btSaveTK;
        private System.Windows.Forms.TextBox txtTenTK;
        private System.Windows.Forms.TextBox txtMK;
        private System.Windows.Forms.TextBox txtMNV;
        private System.Windows.Forms.Label lbTenTK;
        private System.Windows.Forms.Label lbMK;
        private System.Windows.Forms.Label lbMNV;
        private System.Windows.Forms.DataGridView dgv_TK;
    }
}