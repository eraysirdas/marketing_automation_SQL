using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class FrmAnaSayfa : Form
    {
        public FrmAnaSayfa()
        {
            InitializeComponent();
        }
        SqlConnection veri = new SqlConnection("Data Source=RESULCANKIRTI;Initial Catalog=market;Integrated Security=True");

        private void button4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            FrmSatis d = new FrmSatis();
            d.Show();
           this.Hide();
           // veri.Open();
            //MessageBox.Show("bağlantı kuruldu...");
        }

        private void button5_Click(object sender, EventArgs e)
        {
           FrmBölgemüdürü n = new FrmBölgemüdürü();
            n.Show();
            this.Hide();
        }
    }
}
