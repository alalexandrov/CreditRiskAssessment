using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CreditRisk.Models;
using CreditRisk.Models.Basic_Data;
using CreditRisk.Models.Working_Experience;
using CreditRisk.Models.Salary_Income;
using CreditRisk.Models.Property;

namespace CreditRisk.Context
{
    public class CreditRiskContext : DbContext
    {
        public CreditRiskContext()
            : base("CreditRiskDb")
        { }

        //
        public DbSet<CreditRiskProfile> CreditRiskProfiles { get; set; }
        public DbSet<CreditPointInterval> CreditPointIntervals { get; set; }

        //Basic Data
        public DbSet<AgeCategory> AgeCategories { get; set; }
        public DbSet<ChildrenCategory> ChildrenCategories { get; set; }
        public DbSet<EducationCategory> EducationCategories { get; set; }
        public DbSet<MaritalStatusCategory> MaritalStatusCategories { get; set; }
        public DbSet<PlaceCategory> PlaceCategories { get; set; }

        //Working Experience
        public DbSet<ContractCategory> ContractCategories { get; set; }
        public DbSet<LastJobPositionCategory> LastJobPositionCategories { get; set; }
        public DbSet<LastJobWorkingExperienceCategory> LastJobWorkingExperienceCategories { get; set; }
        public DbSet<WorkingExperienceCategory> WorkignExperienceCategories { get; set; }

        //Salary Income
        public DbSet<NetIncomeCategory> NetIncomeCategories { get; set; }
        public DbSet<SocialSecurityIncomeCategory> SocialSecurityIncomeCategories { get; set; }

        //Property
        public DbSet<DelayedPaymentCategory> DelayedPaymentCategories { get; set; }
        public DbSet<OtherCreditPaymentCategory> OtherCreditPaymentCategories { get; set; }
        public DbSet<OtherDepositCategory> OtherDepositCategories { get; set; }
        public DbSet<OwnCarCategory> OwnCarCategories { get; set; }
        public DbSet<OwnHomeCategory> OwnHomeCategories { get; set; }
    }
}
