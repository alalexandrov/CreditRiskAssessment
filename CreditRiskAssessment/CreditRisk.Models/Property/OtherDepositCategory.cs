using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreditRisk.Models.Property
{
    public class OtherDepositCategory
    {
        public int ID { get; set; }
        public decimal? From { get; set; }
        public decimal? To { get; set; }
        public string AdditionalInfo { get; set; }
        public int Points { get; set; }
    }
}
