using System.Linq;
using System.Web.Mvc;

namespace Interfaz.ModelosEDF
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(logdb objUser)
        {
            if (ModelState.IsValid)
            {
                using (DataEntities1 db = new DataEntities1())
                {
                    var obj = db.logdb.Where(a =>
                        a.Documento.Equals(objUser.Documento) &&
                        a.Contraseña.Equals(objUser.Contraseña)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["UserID"] = obj.UserID;
                        Session["Documento"] = obj.Documento;
                        Session["Contraseña"] = obj.Contraseña.ToString();
                        Session["Nombre_Apellido"] = obj.Nombre_Apellido.ToString();
                        Session["Email"] = obj.Email.ToString();
                        Session["Telefono"] = obj.Telefono;
                        Session["Contraseña"] = obj.Cuil;
                        return RedirectToAction("UserDashBoard");
                    }
                }
            }
            return View(objUser);
        }

        public ActionResult UserDashBoard()
        {
            if (Session["Documento"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }
    }
}