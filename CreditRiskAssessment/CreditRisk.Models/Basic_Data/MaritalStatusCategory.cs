﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreditRisk.Models.Basic_Data
{
    public class MaritalStatusCategory
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Points { get; set; }
        public decimal? Money { get; set; }
    }
}
