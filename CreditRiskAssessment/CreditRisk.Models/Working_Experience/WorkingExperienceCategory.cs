using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreditRisk.Models.Working_Experience
{
    public class WorkingExperienceCategory
    {
        public int ID { get; set; }
        public int? From { get; set; }
        public int? To { get; set; }
        public string AdditionalInfo { get; set; }
        public int Points { get; set; }
    }
}
