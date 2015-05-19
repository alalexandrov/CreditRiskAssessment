using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreditRisk.Models.Salary_Income
{
    public class SocialSecurityIncomeCategory
    {
        public int ID { get; set; }
        public decimal From { get; set; }
        public decimal To { get; set; }
        public int Points { get; set; }
        public decimal? Money { get; set; }
    }
}
