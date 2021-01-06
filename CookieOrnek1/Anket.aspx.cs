using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieOrnek1
{
    public partial class Anket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Cookie'den veri almamız gerekiyor ise, o cookie var mı yok mu kontrol etmemiz gerekmektedir...
            if (Request.Cookies["anket"] != null)
            {
                lblBilgilendirme.Text += string.Format(" (Kullandığınız Oy: {0})", Request.Cookies["anket"].Value);
                MultiView1.ActiveViewIndex = 0;
            }
            else
                MultiView1.ActiveViewIndex = 1;
        }

        protected void btnOyVer_Click(object sender, EventArgs e)
        {
            // Bir cookie oluşturmak için HttpCookie nesnesinden instance alınması gerekiyor...
            HttpCookie cerez = new HttpCookie("anket", rblAnketSecenekleri.SelectedItem.Text);

            // Expires: Cookie'nin istemci bilgisayarında ne kadar süre tutulacağını belirtir. Genellikle net tarih vermektense DateTime'ın Add... metotları kullanılır...
            cerez.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cerez);
        }
    }
}