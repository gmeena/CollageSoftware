using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCSoftware.Areas.Attendance.Controllers
{
    public class AttendanceInfoController : Controller
    {
        //
        // GET: /Attendance/AttendanceInfo/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Attendance/AttendanceInfo/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Attendance/AttendanceInfo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Attendance/AttendanceInfo/Create

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
        // GET: /Attendance/AttendanceInfo/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Attendance/AttendanceInfo/Edit/5

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
        // GET: /Attendance/AttendanceInfo/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Attendance/AttendanceInfo/Delete/5

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
