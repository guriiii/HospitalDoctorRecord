using HospitalDoctoerRecord.MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace HospitalDoctoerRecord.MVC.Controllers
{
    public class DoctorsController : Controller
    {
        // GET: Doctors
        public ActionResult Index()
        {
            IEnumerable<DoctorModel> docList;
            HttpResponseMessage response = GlobalAPIContent.Client.GetAsync("Doctors").Result;
            docList = response.Content.ReadAsAsync<IEnumerable<DoctorModel>>().Result;
            return View(docList);
        }
        [HttpGet]
        public ActionResult SaveAndUpdate(int id = 0)
        {
            if (id == 0)
                return View(new DoctorModel());
            else
            {
                HttpResponseMessage response = GlobalAPIContent.Client.GetAsync("Doctors/" + id.ToString()).Result;
                return View(response.Content.ReadAsAsync<DoctorModel>().Result);
            }
        }
        [HttpPost]
        public ActionResult SaveAndUpdate(DoctorModel docModel)
        {
            if (docModel.ID == 0)
            {
                HttpResponseMessage response = GlobalAPIContent.Client.PostAsJsonAsync("Doctors", docModel).Result;
                TempData["SuccessMessage"] = "Saved Successfully";
            }
            else
            {
                HttpResponseMessage response = GlobalAPIContent.Client.PutAsJsonAsync("Doctors/" + docModel.ID, docModel).Result;
                TempData["SuccessMessage"] = "Updated Successfully";
            }
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int id)
        {
            HttpResponseMessage response = GlobalAPIContent.Client.DeleteAsync("Doctors/" + id.ToString()).Result;
            TempData["SuccessMessage"] = "Deleted Successfully";
            return RedirectToAction("Index");
        }
    }
}