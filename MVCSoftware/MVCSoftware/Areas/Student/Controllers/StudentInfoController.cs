using DatabaseEntity.Account;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using DatabaseEntity.Account;

namespace MVCSoftware.Areas.Student.Controllers
{
    public class StudentInfoController : Controller
    {
        //
        // GET: /Student/StudentInfo/

        public ActionResult Index()
        {
            return View();
        }


        //
        // GET: /Student/StudentInfo/GetStudents

        [AllowAnonymous]
        [HttpPost]
        public async Task<JsonResult> GetStudents(int count, int pageindex)
        { // int count, int page
            List<DatabaseEntity.Account.Student> result = new List<DatabaseEntity.Account.Student>(); ;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://localhost:52805/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                DatabaseEntity.Account.Page pageobj = new DatabaseEntity.Account.Page();
                pageobj.Count = count;
                pageobj.PageCount = pageindex;
                // New code:
                HttpResponseMessage response = await client.PostAsJsonAsync("api/Student/GetStudents",pageobj);
                if (response.IsSuccessStatusCode)
                {
                    result = await response.Content.ReadAsAsync<List<DatabaseEntity.Account.Student>>();
                }
            }

            return Json(result, JsonRequestBehavior.AllowGet);
        }

        [AllowAnonymous]
        [HttpPost]
        public async Task<JsonResult> UpdateAddStudent(DatabaseEntity.Account.Student student)
        {
            int result = 0;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://localhost:52805/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                // New code:
                HttpResponseMessage response = await client.PostAsJsonAsync("api/Student/UpdateAddStudent", student);
                if (response.IsSuccessStatusCode)
                {
                    result = await response.Content.ReadAsAsync<int>();
                }
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        [AllowAnonymous]
        [HttpGet]
        public async Task<JsonResult> GetClass()
        { // int count, int page
            List<DatabaseEntity.Account.StudentClass> result = new List<DatabaseEntity.Account.StudentClass>(); ;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://localhost:52805/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                
                // New code:
                HttpResponseMessage response = await client.GetAsync("api/Student/GetClass");
                if (response.IsSuccessStatusCode)
                {
                    result = await response.Content.ReadAsAsync<List<DatabaseEntity.Account.StudentClass>>();
                }
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        //
        // GET: /Student/StudentInfo/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Student/StudentInfo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Student/StudentInfo/Create

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
        // GET: /Student/StudentInfo/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Student/StudentInfo/Edit/5

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
        // GET: /Student/StudentInfo/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Student/StudentInfo/Delete/5

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
