using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreditRisk.Models
{
    public class CreditPointInterval
    {
        public int ID { get; set; }
        public int From { get; set; }
        public int To { get; set; }
        public string Mark { get; set; }
    }
}
