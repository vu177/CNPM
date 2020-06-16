using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace CNPM_CHUNGKHOAN
{
    public partial class frmMUABAN : Form
    {
        public frmMUABAN()
        {
            InitializeComponent();
        }
        private SqlConnection conn = null;
        private string strSql = "Data Source=BIAGHI;Initial Catalog=CHUNGKHOAN1;User ID=sa;Password=sa;";
        private void frmMUABAN_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'cHUNGKHOANDataSet.V_MACP' table. You can move, or remove it, as needed.
            this.v_MACPTableAdapter.Fill(this.cHUNGKHOANDataSet.V_MACP);
            get_list();
            set_ccb();
        }

        //GET LIST
        private void get_list()
        {
            this.lENHKHOPTableAdapter.Fill(this.cHUNGKHOANDataSet.LENHKHOP);
            this.lENHDATTableAdapter.Fill(this.cHUNGKHOANDataSet.LENHDAT);
            this.lENHDATTableAdapter.Fill(this.cHUNGKHOANDataSet.LENHDAT);
        }

        private void lENHDATBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.lENHDATBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cHUNGKHOANDataSet);

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        private bool ExecSQLQuery(string strQuery)
        {
            try
            {
                if (conn == null) conn = new SqlConnection(strSql);
                if (conn.State == ConnectionState.Closed) conn.Open();
                SqlCommand command = new SqlCommand(strQuery, conn);
                int res = command.ExecuteNonQuery();
                conn.Close();
                if (res > 0)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                conn.Close();
                MessageBox.Show(ex.Message, "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            return false;
        }

        //add list vao combobox
        private void set_ccb()
        {
            cbb_gdich.Items.Add("M");
            cbb_gdich.Items.Add("B");
        }
        private bool insert ()
        {
            DateTime thgian = DateTime.Now;
            String strQuery = "EXEC dbo.SP_KHOPLENH_LO '" + cbbMa.Text.Trim().ToUpper() + "','" + thgian + "','" + cbb_gdich.Text.Trim().ToUpper() + "'," + txb_sluong.Text + "," + txb_gdat.Text;
            return ExecSQLQuery(strQuery);
        }
        private int check_err()
        {
            if (cbb_gdich.Text == "")
            {
                MessageBox.Show("CHỌN LOẠI GIAO DỊCH", "", MessageBoxButtons.OK);
                cbb_gdich.Focus();
                return 0;
            }
            else if (txb_sluong.Text == "" || Int32.Parse(txb_sluong.Text)<=0)
            {
                MessageBox.Show("NHẬP SỐ LƯỢNG", "", MessageBoxButtons.OK);
                txb_sluong.Focus();
                return 0;
            }
            else if (txb_gdat.Text == "" || Int32.Parse(txb_gdat.Text) <= 0)
            {
                MessageBox.Show("NHẬP GIÁ ĐẶT", "", MessageBoxButtons.OK);
                txb_gdat.Focus();
                return 0;
            }
            else
            {
                return 1;
            }
        }
        private void btn_dat_Click(object sender, EventArgs e)
        {
            //1. kiem tra du lieu dau vao
            if (check_err() == 1)
            {
                //2. them vao bang lenh dat
                if (insert() == true)
                {
                    MessageBox.Show("Đặt lệnh thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    get_list();
                }
                else
                {
                    MessageBox.Show("Lỗi khớp lệnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }           
        }

        private void txb_sluong_TextChanged(object sender, EventArgs e)
        {

        }

        private void txb_sluong_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Xác thực rằng phím vừa nhấn không phải CTRL hoặc không phải dạng số
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            // Nếu bạn muốn, bạn có thể cho phép nhập số thực với dấu chấm
            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }
        }

        private void txb_gdat_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Xác thực rằng phím vừa nhấn không phải CTRL hoặc không phải dạng số
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            // Nếu bạn muốn, bạn có thể cho phép nhập số thực với dấu chấm
            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }
        }

        private void btn_thoat_Click(object sender, EventArgs e)
        {
            DialogResult dr;
            dr = MessageBox.Show("Bạn có muốn thoát khỏi form giao dịch không ?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                this.Close();
            }
            else
            {
                return;
            }
        }

    }
}
