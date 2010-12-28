using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Source.Controllers
{
    public class NavController : Controller
    {
        //
        // GET: /Nav/

        public ViewResult Menu(string category)
        {
            Func<string, NavLink> makeLink = categoryName => new NavLink { Text = categoryName ?? "Home", RouteValues = new RouteValueDictionary(new { controller = "Home", action = "Index", category = categoryName }), IsSelected = (categoryName == category) };
            List<NavLink> navLinks = new List<NavLink>();

            navLinks.Add(makeLink(null));
            navLinks.Add(makeLink("Home/About"));

            return View(navLinks);
        }

    }
}
