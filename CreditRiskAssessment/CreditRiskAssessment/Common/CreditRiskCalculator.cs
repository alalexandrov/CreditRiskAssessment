using CreditRisk.Context;
using CreditRisk.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CreditRiskAssessment.Common
{
    public class CreditRiskCalculator
    {
        private CreditRiskContext db = new CreditRiskContext();

        public CalcResponse CalculateRisk(int id)
        {
            CalcResponse response = new CalcResponse();
            using (db)
            {
                CreditRiskProfile profile = GetProfile(id);

                response.Points = GetProfilePointsSum(profile);
                response.Money = GetProfileMoneySum(profile);
                response.Approved = IsApproved(profile);
            }

            return response;
        }

        private CreditRiskProfile GetProfile(int id)
        {
            return db.CreditRiskProfiles
                .Include("AgeCategory")
                .Include("PlaceCategory")
                .Include("MaritalStatusCategory")
                .Include("ChildrenCategory")
                .Include("EducationCategory")
                .Include("WorkingExperienceCategory")
                .Include("LastJobWorkingExperienceCategory")
                .Include("LastJobPositionCategory")
                .Include("ContractCategory")
                .Include("NetIncomeCategory")
                .Include("SocialSecurityIncomeCategory")
                .Include("OwnHomeCategory")
                .Include("OwnCarCategory")
                .Include("OtherCreditPaymentCategory")
                .Include("OtherDepositCategory")
                .Include("DelayedPaymentCategory")
                .Single(p => p.ID == id);
        }

        private bool IsApproved(CreditRiskProfile profile)
        {
            bool check = profile.ChildrenCategory.Points == 0
                         || profile.LastJobWorkingExperienceCategory.Points == 0
                         || profile.ContractCategory.Points == 0
                         || profile.NetIncomeCategory.Points == 0
                         || profile.SocialSecurityIncomeCategory.Points == 0
                         || profile.OtherCreditPaymentCategory.Points == 0
                         || profile.DelayedPaymentCategory.Points == 0;

            return !check;
        }

        private int GetProfilePointsSum(CreditRiskProfile profile)
        {
            int sum = 0;

            sum += profile.AgeCategory.Points +
                   profile.PlaceCategory.Points +
                   profile.MaritalStatusCategory.Points +
                   profile.ChildrenCategory.Points +
                   profile.EducationCategory.Point +
                   profile.WorkingExperienceCategory.Points +
                   profile.LastJobWorkingExperienceCategory.Points +
                   profile.LastJobPositionCategory.Points +
                   profile.ContractCategory.Points +
                   profile.NetIncomeCategory.Points +
                   profile.SocialSecurityIncomeCategory.Points +
                   profile.OwnHomeCategory.Points +
                   profile.OwnCarCategory.Points +
                   profile.OtherCreditPaymentCategory.Points +
                   profile.OtherDepositCategory.Points +
                   profile.DelayedPaymentCategory.Points;

            return sum;
        }

        private decimal GetProfileMoneySum(CreditRiskProfile profile)
        {
            decimal sum = 0;

            if (profile.MaritalStatusCategory.Money != null)
            {
                sum += (decimal)profile.MaritalStatusCategory.Money;
            }

            if (profile.ChildrenCategory.Money != null)
            {
                sum += (decimal)profile.ChildrenCategory.Money;
            }

            if (profile.SocialSecurityIncomeCategory.Money != null)
            {
                sum += (decimal)profile.SocialSecurityIncomeCategory.Money;
            }

            return sum;
        }
    }
}