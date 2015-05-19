using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CreditRisk.Models.Basic_Data;
using CreditRisk.Models.Working_Experience;
using CreditRisk.Models.Salary_Income;
using CreditRisk.Models.Property;


namespace CreditRisk.Models
{
    public class CreditRiskProfile
    {
        public int ID { get; set; }

        //Basic Data
            public int AgeCategoryID { get; set; }
            public virtual AgeCategory AgeCategory { get; set; }
            //..//
            public int ChildrenCategoryID { get; set; }
            public virtual ChildrenCategory ChildrenCategory { get; set; }
            //..//
            public int EducationCategoryID { get; set; }
            public virtual EducationCategory EducationCategory { get; set; }
            //..//
            public int MaritalStatusCategoryID { get; set; }
            public virtual MaritalStatusCategory MaritalStatusCategory { get; set; }
            //..//
            public int PlaceCategoryID { get; set; }
            public virtual PlaceCategory PlaceCategory { get; set; }

        //Working Experiance
            public int ContractCategoryID { get; set; }
            public virtual ContractCategory ContractCategory { get; set; }
            //..//
            public int LastJobPositionCategoryID { get; set; }
            public virtual LastJobPositionCategory LastJobPositionCategory { get; set; }
            //..//
            public int LastJobWorkingExperienceCategoryID { get; set; }
            public virtual LastJobWorkingExperienceCategory LastJobWorkingExperienceCategory { get; set; }
            //..//
            public int WorkingExperienceCategoryID { get; set; }
            public virtual WorkingExperienceCategory WorkingExperienceCategory { get; set; }

        //Salary Income
            public int NetIncomeCategoryID { get; set; }
            public virtual NetIncomeCategory NetIncomeCategory { get; set; }
            //..//
            public int SocialSecurityIncomeCategoryID { get; set; }
            public virtual SocialSecurityIncomeCategory SocialSecurityIncomeCategory { get; set; }

        //Property
            public int DelayedPaymentCategoryID { get; set; }
            public virtual DelayedPaymentCategory DelayedPaymentCategory { get; set; }
            //..//
            public int OtherCreditPaymentCategoryID { get; set; }
            public virtual OtherCreditPaymentCategory OtherCreditPaymentCategory { get; set; }
            //..//
            public int OtherDepositCategoryID { get; set; }
            public virtual OtherDepositCategory OtherDepositCategory { get; set; }
            //..//
            public int OwnCarCategoryID { get; set; }
            public virtual OwnCarCategory OwnCarCategory { get; set; }
            //..//
            public int OwnHomeCategoryID { get; set; }
            public virtual OwnHomeCategory OwnHomeCategory { get; set; }
    }
}
