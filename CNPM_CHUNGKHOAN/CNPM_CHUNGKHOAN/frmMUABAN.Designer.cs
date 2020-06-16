namespace CNPM_CHUNGKHOAN
{
    partial class frmMUABAN
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label gIADATLabel;
            System.Windows.Forms.Label sOLUONGLabel;
            System.Windows.Forms.Label lOAIGDLabel;
            System.Windows.Forms.Label mACPLabel;
            System.Windows.Forms.Label lOAILENHLabel;
            this.lENHDATDataGridView = new System.Windows.Forms.DataGridView();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbbMa = new System.Windows.Forms.ComboBox();
            this.lb_loailenh = new System.Windows.Forms.Label();
            this.txb_gdat = new System.Windows.Forms.TextBox();
            this.txb_sluong = new System.Windows.Forms.TextBox();
            this.cbb_gdich = new System.Windows.Forms.ComboBox();
            this.btn_thoat = new System.Windows.Forms.Button();
            this.btn_dat = new System.Windows.Forms.Button();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.iDKHOPDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nGAYKHOPDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sOLUONGKHOPDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gIAKHOPDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.iDLENHDATDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lENHKHOPBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.cHUNGKHOANDataSet = new CNPM_CHUNGKHOAN.CHUNGKHOANDataSet();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lENHDATBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.lENHDATTableAdapter = new CNPM_CHUNGKHOAN.CHUNGKHOANDataSetTableAdapters.LENHDATTableAdapter();
            this.tableAdapterManager = new CNPM_CHUNGKHOAN.CHUNGKHOANDataSetTableAdapters.TableAdapterManager();
            this.lENHKHOPTableAdapter = new CNPM_CHUNGKHOAN.CHUNGKHOANDataSetTableAdapters.LENHKHOPTableAdapter();
            this.vMACPBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.v_MACPTableAdapter = new CNPM_CHUNGKHOAN.CHUNGKHOANDataSetTableAdapters.V_MACPTableAdapter();
            gIADATLabel = new System.Windows.Forms.Label();
            sOLUONGLabel = new System.Windows.Forms.Label();
            lOAIGDLabel = new System.Windows.Forms.Label();
            mACPLabel = new System.Windows.Forms.Label();
            lOAILENHLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.lENHDATDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.lENHKHOPBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cHUNGKHOANDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lENHDATBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.vMACPBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // gIADATLabel
            // 
            gIADATLabel.AutoSize = true;
            gIADATLabel.Location = new System.Drawing.Point(73, 264);
            gIADATLabel.Name = "gIADATLabel";
            gIADATLabel.Size = new System.Drawing.Size(58, 17);
            gIADATLabel.TabIndex = 21;
            gIADATLabel.Text = "Giá đặt:";
            // 
            // sOLUONGLabel
            // 
            sOLUONGLabel.AutoSize = true;
            sOLUONGLabel.Location = new System.Drawing.Point(73, 212);
            sOLUONGLabel.Name = "sOLUONGLabel";
            sOLUONGLabel.Size = new System.Drawing.Size(68, 17);
            sOLUONGLabel.TabIndex = 19;
            sOLUONGLabel.Text = "Số lượng:";
            // 
            // lOAIGDLabel
            // 
            lOAIGDLabel.AutoSize = true;
            lOAIGDLabel.Location = new System.Drawing.Point(73, 118);
            lOAIGDLabel.Name = "lOAIGDLabel";
            lOAIGDLabel.Size = new System.Drawing.Size(100, 17);
            lOAIGDLabel.TabIndex = 17;
            lOAIGDLabel.Text = "Loại giao dịch:";
            // 
            // mACPLabel
            // 
            mACPLabel.AutoSize = true;
            mACPLabel.Location = new System.Drawing.Point(73, 168);
            mACPLabel.Name = "mACPLabel";
            mACPLabel.Size = new System.Drawing.Size(89, 17);
            mACPLabel.TabIndex = 15;
            mACPLabel.Text = "Mã cổ phiếu:";
            // 
            // lOAILENHLabel
            // 
            lOAILENHLabel.AutoSize = true;
            lOAILENHLabel.Location = new System.Drawing.Point(73, 314);
            lOAILENHLabel.Name = "lOAILENHLabel";
            lOAILENHLabel.Size = new System.Drawing.Size(70, 17);
            lOAILENHLabel.TabIndex = 25;
            lOAILENHLabel.Text = "Loại lệnh:";
            // 
            // lENHDATDataGridView
            // 
            this.lENHDATDataGridView.AutoGenerateColumns = false;
            this.lENHDATDataGridView.BackgroundColor = System.Drawing.SystemColors.ControlLight;
            this.lENHDATDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.lENHDATDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ID,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6,
            this.dataGridViewTextBoxColumn7,
            this.dataGridViewTextBoxColumn8});
            this.lENHDATDataGridView.DataSource = this.lENHDATBindingSource;
            this.lENHDATDataGridView.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lENHDATDataGridView.Location = new System.Drawing.Point(3, 3);
            this.lENHDATDataGridView.Name = "lENHDATDataGridView";
            this.lENHDATDataGridView.ReadOnly = true;
            this.lENHDATDataGridView.RowHeadersWidth = 51;
            this.lENHDATDataGridView.RowTemplate.Height = 24;
            this.lENHDATDataGridView.Size = new System.Drawing.Size(337, 359);
            this.lENHDATDataGridView.TabIndex = 1;
            // 
            // ID
            // 
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.MinimumWidth = 6;
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Width = 125;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.ControlLight;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDKHOPDataGridViewTextBoxColumn,
            this.nGAYKHOPDataGridViewTextBoxColumn,
            this.sOLUONGKHOPDataGridViewTextBoxColumn,
            this.gIAKHOPDataGridViewTextBoxColumn,
            this.iDLENHDATDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.lENHKHOPBindingSource;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(3, 368);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(337, 360);
            this.dataGridView1.TabIndex = 15;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbbMa);
            this.groupBox1.Controls.Add(this.lb_loailenh);
            this.groupBox1.Controls.Add(this.txb_gdat);
            this.groupBox1.Controls.Add(this.txb_sluong);
            this.groupBox1.Controls.Add(this.cbb_gdich);
            this.groupBox1.Controls.Add(lOAILENHLabel);
            this.groupBox1.Controls.Add(this.btn_thoat);
            this.groupBox1.Controls.Add(this.btn_dat);
            this.groupBox1.Controls.Add(gIADATLabel);
            this.groupBox1.Controls.Add(sOLUONGLabel);
            this.groupBox1.Controls.Add(lOAIGDLabel);
            this.groupBox1.Controls.Add(mACPLabel);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Right;
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.groupBox1.Location = new System.Drawing.Point(343, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(608, 731);
            this.groupBox1.TabIndex = 16;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "NHẬP THÔNG TIN";
            // 
            // cbbMa
            // 
            this.cbbMa.DataSource = this.vMACPBindingSource;
            this.cbbMa.DisplayMember = "MACP";
            this.cbbMa.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbMa.FormattingEnabled = true;
            this.cbbMa.Location = new System.Drawing.Point(197, 161);
            this.cbbMa.Name = "cbbMa";
            this.cbbMa.Size = new System.Drawing.Size(263, 24);
            this.cbbMa.TabIndex = 31;
            this.cbbMa.ValueMember = "MACP";
            // 
            // lb_loailenh
            // 
            this.lb_loailenh.AutoSize = true;
            this.lb_loailenh.BackColor = System.Drawing.SystemColors.HighlightText;
            this.lb_loailenh.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lb_loailenh.Location = new System.Drawing.Point(194, 314);
            this.lb_loailenh.Name = "lb_loailenh";
            this.lb_loailenh.Padding = new System.Windows.Forms.Padding(10, 2, 224, 2);
            this.lb_loailenh.Size = new System.Drawing.Size(263, 23);
            this.lb_loailenh.TabIndex = 30;
            this.lb_loailenh.Text = "LO";
            // 
            // txb_gdat
            // 
            this.txb_gdat.Location = new System.Drawing.Point(197, 261);
            this.txb_gdat.Name = "txb_gdat";
            this.txb_gdat.Size = new System.Drawing.Size(263, 22);
            this.txb_gdat.TabIndex = 29;
            this.txb_gdat.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txb_gdat_KeyPress);
            // 
            // txb_sluong
            // 
            this.txb_sluong.Location = new System.Drawing.Point(197, 209);
            this.txb_sluong.Name = "txb_sluong";
            this.txb_sluong.Size = new System.Drawing.Size(263, 22);
            this.txb_sluong.TabIndex = 28;
            this.txb_sluong.TextChanged += new System.EventHandler(this.txb_sluong_TextChanged);
            this.txb_sluong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txb_sluong_KeyPress);
            // 
            // cbb_gdich
            // 
            this.cbb_gdich.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbb_gdich.FormattingEnabled = true;
            this.cbb_gdich.Location = new System.Drawing.Point(197, 109);
            this.cbb_gdich.Name = "cbb_gdich";
            this.cbb_gdich.Size = new System.Drawing.Size(263, 24);
            this.cbb_gdich.TabIndex = 26;
            // 
            // btn_thoat
            // 
            this.btn_thoat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btn_thoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_thoat.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btn_thoat.Location = new System.Drawing.Point(346, 465);
            this.btn_thoat.Name = "btn_thoat";
            this.btn_thoat.Size = new System.Drawing.Size(114, 41);
            this.btn_thoat.TabIndex = 24;
            this.btn_thoat.Text = "THOÁT";
            this.btn_thoat.UseVisualStyleBackColor = false;
            this.btn_thoat.Click += new System.EventHandler(this.btn_thoat_Click);
            // 
            // btn_dat
            // 
            this.btn_dat.BackColor = System.Drawing.Color.Red;
            this.btn_dat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_dat.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btn_dat.Location = new System.Drawing.Point(197, 465);
            this.btn_dat.Name = "btn_dat";
            this.btn_dat.Size = new System.Drawing.Size(114, 41);
            this.btn_dat.TabIndex = 23;
            this.btn_dat.Text = "ĐẶT LỆNH";
            this.btn_dat.UseVisualStyleBackColor = false;
            this.btn_dat.Click += new System.EventHandler(this.btn_dat_Click);
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 1;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Controls.Add(this.dataGridView1, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.lENHDATDataGridView, 0, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 2;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(343, 731);
            this.tableLayoutPanel1.TabIndex = 17;
            // 
            // iDKHOPDataGridViewTextBoxColumn
            // 
            this.iDKHOPDataGridViewTextBoxColumn.DataPropertyName = "IDKHOP";
            this.iDKHOPDataGridViewTextBoxColumn.HeaderText = "ID Khớp";
            this.iDKHOPDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.iDKHOPDataGridViewTextBoxColumn.Name = "iDKHOPDataGridViewTextBoxColumn";
            this.iDKHOPDataGridViewTextBoxColumn.ReadOnly = true;
            this.iDKHOPDataGridViewTextBoxColumn.Width = 190;
            // 
            // nGAYKHOPDataGridViewTextBoxColumn
            // 
            this.nGAYKHOPDataGridViewTextBoxColumn.DataPropertyName = "NGAYKHOP";
            this.nGAYKHOPDataGridViewTextBoxColumn.HeaderText = "Ngày khớp lệnh";
            this.nGAYKHOPDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.nGAYKHOPDataGridViewTextBoxColumn.Name = "nGAYKHOPDataGridViewTextBoxColumn";
            this.nGAYKHOPDataGridViewTextBoxColumn.ReadOnly = true;
            this.nGAYKHOPDataGridViewTextBoxColumn.Width = 250;
            // 
            // sOLUONGKHOPDataGridViewTextBoxColumn
            // 
            this.sOLUONGKHOPDataGridViewTextBoxColumn.DataPropertyName = "SOLUONGKHOP";
            this.sOLUONGKHOPDataGridViewTextBoxColumn.HeaderText = "Số lượng khớp";
            this.sOLUONGKHOPDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.sOLUONGKHOPDataGridViewTextBoxColumn.Name = "sOLUONGKHOPDataGridViewTextBoxColumn";
            this.sOLUONGKHOPDataGridViewTextBoxColumn.ReadOnly = true;
            this.sOLUONGKHOPDataGridViewTextBoxColumn.Width = 200;
            // 
            // gIAKHOPDataGridViewTextBoxColumn
            // 
            this.gIAKHOPDataGridViewTextBoxColumn.DataPropertyName = "GIAKHOP";
            this.gIAKHOPDataGridViewTextBoxColumn.HeaderText = "Giá khớp";
            this.gIAKHOPDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.gIAKHOPDataGridViewTextBoxColumn.Name = "gIAKHOPDataGridViewTextBoxColumn";
            this.gIAKHOPDataGridViewTextBoxColumn.ReadOnly = true;
            this.gIAKHOPDataGridViewTextBoxColumn.Width = 200;
            // 
            // iDLENHDATDataGridViewTextBoxColumn
            // 
            this.iDLENHDATDataGridViewTextBoxColumn.DataPropertyName = "IDLENHDAT";
            this.iDLENHDATDataGridViewTextBoxColumn.HeaderText = "ID lệnh đặt";
            this.iDLENHDATDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.iDLENHDATDataGridViewTextBoxColumn.Name = "iDLENHDATDataGridViewTextBoxColumn";
            this.iDLENHDATDataGridViewTextBoxColumn.ReadOnly = true;
            this.iDLENHDATDataGridViewTextBoxColumn.Width = 200;
            // 
            // lENHKHOPBindingSource
            // 
            this.lENHKHOPBindingSource.DataMember = "LENHKHOP";
            this.lENHKHOPBindingSource.DataSource = this.cHUNGKHOANDataSet;
            // 
            // cHUNGKHOANDataSet
            // 
            this.cHUNGKHOANDataSet.DataSetName = "CHUNGKHOANDataSet";
            this.cHUNGKHOANDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "MACP";
            this.dataGridViewTextBoxColumn2.HeaderText = "Mã cổ phiếu";
            this.dataGridViewTextBoxColumn2.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            this.dataGridViewTextBoxColumn2.Width = 120;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "NGAYDAT";
            this.dataGridViewTextBoxColumn3.HeaderText = "Ngày đặt";
            this.dataGridViewTextBoxColumn3.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.ReadOnly = true;
            this.dataGridViewTextBoxColumn3.Width = 150;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "LOAIGD";
            this.dataGridViewTextBoxColumn4.HeaderText = "Loại giao dịch";
            this.dataGridViewTextBoxColumn4.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.ReadOnly = true;
            this.dataGridViewTextBoxColumn4.Width = 140;
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "LOAILENH";
            this.dataGridViewTextBoxColumn5.HeaderText = "Loại lệnh";
            this.dataGridViewTextBoxColumn5.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.ReadOnly = true;
            this.dataGridViewTextBoxColumn5.Width = 120;
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "SOLUONG";
            this.dataGridViewTextBoxColumn6.HeaderText = "Số lượng";
            this.dataGridViewTextBoxColumn6.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            this.dataGridViewTextBoxColumn6.ReadOnly = true;
            this.dataGridViewTextBoxColumn6.Width = 120;
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "GIADAT";
            this.dataGridViewTextBoxColumn7.HeaderText = "Giá đặt";
            this.dataGridViewTextBoxColumn7.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            this.dataGridViewTextBoxColumn7.ReadOnly = true;
            this.dataGridViewTextBoxColumn7.Width = 120;
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.DataPropertyName = "TRANGTHAILENH";
            this.dataGridViewTextBoxColumn8.HeaderText = "Trạng thái lệnh";
            this.dataGridViewTextBoxColumn8.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            this.dataGridViewTextBoxColumn8.ReadOnly = true;
            this.dataGridViewTextBoxColumn8.Width = 250;
            // 
            // lENHDATBindingSource
            // 
            this.lENHDATBindingSource.DataMember = "LENHDAT";
            this.lENHDATBindingSource.DataSource = this.cHUNGKHOANDataSet;
            // 
            // lENHDATTableAdapter
            // 
            this.lENHDATTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.BANGGIATRUCTUYENTableAdapter = null;
            this.tableAdapterManager.LENHDATTableAdapter = this.lENHDATTableAdapter;
            this.tableAdapterManager.LENHKHOPTableAdapter = this.lENHKHOPTableAdapter;
            this.tableAdapterManager.UpdateOrder = CNPM_CHUNGKHOAN.CHUNGKHOANDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // lENHKHOPTableAdapter
            // 
            this.lENHKHOPTableAdapter.ClearBeforeFill = true;
            // 
            // vMACPBindingSource
            // 
            this.vMACPBindingSource.DataMember = "V_MACP";
            this.vMACPBindingSource.DataSource = this.cHUNGKHOANDataSet;
            // 
            // v_MACPTableAdapter
            // 
            this.v_MACPTableAdapter.ClearBeforeFill = true;
            // 
            // frmMUABAN
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(951, 731);
            this.Controls.Add(this.tableLayoutPanel1);
            this.Controls.Add(this.groupBox1);
            this.Name = "frmMUABAN";
            this.Text = "frmMUABAN";
            this.Load += new System.EventHandler(this.frmMUABAN_Load);
            ((System.ComponentModel.ISupportInitialize)(this.lENHDATDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.lENHKHOPBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cHUNGKHOANDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lENHDATBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.vMACPBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private CHUNGKHOANDataSet cHUNGKHOANDataSet;
        private System.Windows.Forms.BindingSource lENHDATBindingSource;
        private CHUNGKHOANDataSetTableAdapters.LENHDATTableAdapter lENHDATTableAdapter;
        private CHUNGKHOANDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.DataGridView lENHDATDataGridView;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_thoat;
        private System.Windows.Forms.Button btn_dat;
        private CHUNGKHOANDataSetTableAdapters.LENHKHOPTableAdapter lENHKHOPTableAdapter;
        private System.Windows.Forms.BindingSource lENHKHOPBindingSource;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.Label lb_loailenh;
        private System.Windows.Forms.TextBox txb_gdat;
        private System.Windows.Forms.TextBox txb_sluong;
        private System.Windows.Forms.ComboBox cbb_gdich;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDKHOPDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nGAYKHOPDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn sOLUONGKHOPDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn gIAKHOPDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDLENHDATDataGridViewTextBoxColumn;
        private System.Windows.Forms.ComboBox cbbMa;
        private System.Windows.Forms.BindingSource vMACPBindingSource;
        private CHUNGKHOANDataSetTableAdapters.V_MACPTableAdapter v_MACPTableAdapter;
    }
}