using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CNPM_CHUNGKHOAN
{
    public partial class Form1 : Form
    {
        Timer t = new Timer();

        private const string tableName = "BANGGIATRUCTUYEN";

        // The following objects are reused
        // for the lifetime of the application.
        private SqlConnection connection = null;
        private SqlCommand command = null;
        private DataSet dataToWatch = null;
        int change = 0;
        private bool CanRequestNotifications()
        {
            try
            {
                SqlClientPermission perm = new SqlClientPermission(PermissionState.Unrestricted);

                perm.Demand();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Notification", MessageBoxButtons.OK);
                return false;
            }
        }

        private string GetConnectionString()
        {
            return "Data Source=BIAGHI;Initial Catalog=CHUNGKHOAN1;User ID=sa;Password=sa";
        }

        private string GetSQL()
        {
            return "SELECT MACP, GIAMUA2, KLMUA2, GIAMUA1, KLMUA1, GIAKHOP, KLKHOP, GIABAN1, KLBAN1, GIABAN2, KLBAN2 FROM dbo.BANGGIATRUCTUYEN";
        }

        private void dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {

            ISynchronizeInvoke i = (ISynchronizeInvoke)this;

            if (i.InvokeRequired)
            {
                OnChangeEventHandler tempDelegate = new OnChangeEventHandler(dependency_OnChange);

                object[] args = new[] { sender, e };

                i.BeginInvoke(tempDelegate, args);

                return;
            }

            SqlDependency dependency = (SqlDependency)sender;

            dependency.OnChange -= dependency_OnChange;
            //tang change khi co thay doi
            change++;
            //show result
            lbChange.Items.Clear();
            lbChange.Items.Add("Update: " + (change-1) + " " + e.Type.ToString());
            lbChange.Items.Add("Info: " + e.Info.ToString());
            GetData();
        }

        private void GetData()
        {
            dataToWatch.Clear();

            command.Notification = null;

            SqlDependency dependency = new SqlDependency(command);
            dependency.OnChange += dependency_OnChange;

            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
            {
                adapter.Fill(dataToWatch, tableName);

                this.bANGGIATRUCTUYENDataGridView.DataSource = dataToWatch;
                this.bANGGIATRUCTUYENDataGridView.DataMember = tableName;
            }
        }

        private void BatDau()
        {
            //change = 0;
            // Remove any existing dependency connection, then create a new one.
            SqlDependency.Stop(GetConnectionString());
            try
            {
                SqlDependency.Start(GetConnectionString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Notification", MessageBoxButtons.OK);
                return;
            }
            if (connection == null)
            {
                connection = new SqlConnection(GetConnectionString());
                connection.Open();
            }
            if (command == null)
                command = new SqlCommand(GetSQL(), connection);

            if (dataToWatch == null)
                dataToWatch = new DataSet();
            GetData();
        }
        public Form1()
        {
            InitializeComponent();
        }
        private void lENHDATBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
        }

        private void bANGGIATRUCTUYENBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.bANGGIATRUCTUYENBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.cHUNGKHOANDataSet);

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.bANGGIATRUCTUYENTableAdapter.Fill(this.cHUNGKHOANDataSet.BANGGIATRUCTUYEN);
            if (CanRequestNotifications() == true)
                BatDau();
            else
                MessageBox.Show("Bạn chưa kích hoạt dịch vụ Broker", "Notification", MessageBoxButtons.OK);

            this.bANGGIATRUCTUYENTableAdapter.Fill(this.cHUNGKHOANDataSet.BANGGIATRUCTUYEN);
            //timer
            t.Interval = 1000; //milliseconds
            t.Tick += new EventHandler(this.t_Tick);
            //start timer when form loads
            t.Start(); //use t_Tick() method
                       //refresh BANGGIATRUCTUYEN
            try
            {
                String query = "EXEC SP_RESET_BANGGIA";
                SqlCommand sqlCommand = new SqlCommand(query, connection);

                try
                {
                    sqlCommand.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi khi thực thi Database!\n" + ex.Message, "Notification",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);

                    return;
                }

            }                                                    
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi! \n" + ex.Message, "Thông báo lỗi",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        //timer eventhandler
        private void t_Tick(object sender, EventArgs e)
        {
            //get current time
            int hh = DateTime.Now.Hour;
            int mm = DateTime.Now.Minute;
            int ss = DateTime.Now.Second;

            //time
            string time = "";

            //padding leading zero
            if (hh < 10)
            {
                time += "0" + hh;
            }
            else
            {
                time += hh;
            }
            time += ":";

            if (mm < 10)
            {
                time += "0" + mm;
            }
            else
            {
                time += mm;
            }
            time += ":";

            if (ss < 10)
            {
                time += "0" + ss;
            }
            else
            {
                time += ss;
            }
            DateTime dt = DateTime.Now;
            //update label
            lbngay1.Text = time + " " + dt.DayOfWeek + ", " + DateTime.Today.ToString("dd-MM-yyyy");
        }


        private void button1_Click(object sender, EventArgs e)
        {
            frmMUABAN frmMB = new frmMUABAN();
            frmMB.Show();
        }

        private void btn_thoat_Click(object sender, EventArgs e)
        {
            DialogResult dr;
            dr = MessageBox.Show("Bạn có muốn thoát khỏi chương trình không ?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                Application.Exit();
            }
            else
            {
                return;
            }
        }
    }
}
