using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CreditRiskAssessment.Common
{
    public class CalcResponse
    {
        public int Points { get; set; }
        public decimal Money { get; set; }
        public bool Approved { get; set; }
    }
}
