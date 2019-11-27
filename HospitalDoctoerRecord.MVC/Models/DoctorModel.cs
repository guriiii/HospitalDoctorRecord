using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalDoctoerRecord.MVC.Models
{
    public class DoctorModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Speciality { get; set; }
        public string Qualification { get; set; }
    }
}