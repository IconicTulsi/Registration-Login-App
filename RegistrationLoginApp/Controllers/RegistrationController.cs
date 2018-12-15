using RegistrationLoginApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using System.Web.Security;

namespace RegistrationLoginApp.Controllers
{
    public class RegistrationController : Controller
    {
        private HotelRoomBookingEntities db = new HotelRoomBookingEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Register()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(Registration reg)
        {

            if (ModelState.IsValid)
            {
                reg.Password = Crypto.Hash(reg.Password);
                db.Registration.Add(reg);
                db.SaveChanges();
                return RedirectToAction("Welcome");
            }
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(Registration reg, String Username, String Password)
        {
            if (ModelState.IsValid)
            {
                reg.Password = Crypto.Hash(Password);
                var details = (from userlist in db.Registration
                               where userlist.UserName == reg.UserName && userlist.Password == reg.Password
                               select new
                               {
                                   userlist.CustomerId,
                                   userlist.UserName
                               });



                if (details.FirstOrDefault() != null)
                {
                    Session["UserId"] = details.FirstOrDefault().CustomerId;
                    Session["Username"] = details.FirstOrDefault().UserName;
                    return RedirectToAction("Welcome", "Home");
                }
            }


            else
            {
                ModelState.AddModelError("", "Invalid Credentials");
            }



            return View(reg);


        }

        public ActionResult Signout()
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }


        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Welcome()
        {
            if (Session["UserId"] != null)
            {
                return View();
            }
            else
            {

                return RedirectToAction("Login");
            }
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
    }
}