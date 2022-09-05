using System;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

/*Visual Studio ha agregado las dependencias conjunto completo de para ASP.NET MVC 5 al proyecto 'Interfaz'.

El archivo Global.asax.cs del proyecto requiere cambios adicionales para habilitar ASP.NET MVC.

1. Agregue las siguientes referencias de nombres de espacios:

    using System.Web.Mvc;
    using System.Web.Routing;
    using System.Web.Optimization;

2. Si el código no tiene ya definido un método Application_Start, agregue el siguiente método:

    protected void Application_Start()
    {
    }

3. Agregue las siguientes líneas al final del método Application_Start:

    AreaRegistration.RegisterAllAreas();
    RouteConfig2.RegisterRoutes(RouteTable.Routes);
    FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
    BundleConfig2.RegisterBundles(BundleTable.Bundles);*/

namespace Interfaz
{
    public class Global : HttpApplication
    {
        private void Application_Start(object sender, EventArgs e)
        {
            // Código que se ejecuta al iniciar la aplicación
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AreaRegistration.RegisterAllAreas();
            RouteConfig2.RegisterRoutes(RouteTable.Routes);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            BundleConfig2.RegisterBundles(BundleTable.Bundles);
        }
    }
}