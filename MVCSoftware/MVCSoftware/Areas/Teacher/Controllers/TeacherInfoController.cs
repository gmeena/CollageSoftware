using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCSoftware.Areas.Teacher.Controllers
{
    public class TeacherInfoController : Controller
    {
        //
        // GET: /Teacher/TeacherInfo/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Chapter()
        {
            return View();
        }

        //
        // GET: /Teacher/TeacherInfo/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Teacher/TeacherInfo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Teacher/TeacherInfo/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Teacher/TeacherInfo/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Teacher/TeacherInfo/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Teacher/TeacherInfo/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Teacher/TeacherInfo/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
