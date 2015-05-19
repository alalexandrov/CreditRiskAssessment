using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreditRisk.Models.Basic_Data
{
    public class AgeCategory
    {
        public int ID { get; set; }
        public int? From { get; set; }
        public int? To { get; set; }
        public int Points { get; set; }
    }
}
