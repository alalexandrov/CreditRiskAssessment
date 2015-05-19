using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CreditRisk.Context;
using CreditRisk.Models.Property;
using CreditRisk.Models;
using CreditRiskAssessment.Common;

namespace CreditRiskAssessment
{
    public partial class Home : System.Web.UI.Page
    {
        CreditRiskContext db = new CreditRiskContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlAgeDataBind();
                ddlPlaceDataBind();
                ddlMaritalStatusDataBind();
                ddlEducationDataBind();

                ddlWorkingExperienceDataBind();
                ddlLastJobWorkingExperienceDataBind();
                ddlLastJobPositionDataBind();
                ddlContractDataBind();

                ddlOwnHomeDataBind();
                ddlOwnCarDataBind();
                ddlOtherCreditsDataBind();
                ddlDelayPaymentDataBind();
            }
        }

        private void ddlDelayPaymentDataBind()
        {
            this.ddlDelayPayment.DataSource = db.DelayedPaymentCategories
                  .Select(a => new
                  {
                      ID = a.ID,
                      Text = a.Name
                  }).ToList();

            this.ddlDelayPayment.DataBind();
            this.ddlDelayPayment.Items.Insert(0, new ListItem() { Text = "Забавено плащане", Selected = true, Value = "" });
        }

        private void ddlOtherCreditsDataBind()
        {
            this.ddlOtherCredits.DataSource = db.OtherCreditPaymentCategories
                 .Select(a => new
                 {
                     ID = a.ID,
                     Text = a.Name
                 }).ToList();

            this.ddlOtherCredits.DataBind();
            this.ddlOtherCredits.Items.Insert(0, new ListItem() { Text = "Други кредити", Selected = true, Value = "" });
        }

        private void ddlOwnCarDataBind()
        {
            this.ddlOwnCar.DataSource = db.OwnCarCategories
                 .Select(a => new
                 {
                     ID = a.ID,
                     Text = a.Name
                 }).ToList();

            this.ddlOwnCar.DataBind();
            this.ddlOwnCar.Items.Insert(0, new ListItem() { Text = "Собствен автомобил", Selected = true, Value = "" });
        }

        private void ddlOwnHomeDataBind()
        {
            this.ddlOwnHome.DataSource = db.OwnHomeCategories
                 .Select(a => new
                 {
                     ID = a.ID,
                     Text = a.Name
                 }).ToList();

            this.ddlOwnHome.DataBind();
            this.ddlOwnHome.Items.Insert(0, new ListItem() { Text = "Собствено жилище", Selected = true, Value = "" });
        }

        private void ddlContractDataBind()
        {
            this.ddlContract.DataSource = db.ContractCategories
                 .Select(a => new
                 {
                     ID = a.ID,
                     Text = a.Name
                 }).ToList();

            this.ddlContract.DataBind();
            this.ddlContract.Items.Insert(0, new ListItem() { Text = "Трудово правоотношение", Selected = true, Value = "" });
        }

        private void ddlLastJobPositionDataBind()
        {
            this.ddlLastJobPosition.DataSource = db.LastJobPositionCategories
                .Select(a => new
                {
                    ID = a.ID,
                    Text = a.Name
                }).ToList();

            this.ddlLastJobPosition.DataBind();
            this.ddlLastJobPosition.Items.Insert(0, new ListItem() { Text = "Ниво в йерархията", Selected = true, Value = "" });
        }

        private void ddlLastJobWorkingExperienceDataBind()
        {
            this.ddlLastJobWorkingExperience.DataSource = db.LastJobWorkingExperienceCategories
                .Select(a => new
                {
                    ID = a.ID,
                    Text = (a.To.HasValue && a.From.HasValue) ? "от " + a.To + " до " + a.From + " месеца" :
                           (a.To.HasValue) ? "до " + a.To + " месеца" :
                           (a.From.HasValue) ? "над " + a.From + " месеца" : ""
                }).ToList();

            this.ddlLastJobWorkingExperience.DataBind();
            this.ddlLastJobWorkingExperience.Items.Insert(0, new ListItem() { Text = "Трудов стаж на посл. месторабота", Selected = true, Value = "" });
        }

        private void ddlWorkingExperienceDataBind()
        {
            this.ddlWorkingExperience.DataSource = db.WorkignExperienceCategories
                .Select(a => new
                {
                    ID = a.ID,
                    Text = (a.To.HasValue && a.From.HasValue) ? "от " + a.To + " до " + a.From + " месеца" :
                           (a.To.HasValue) ? "до " + a.To + " месеца" :
                           (a.From.HasValue) ? "над " + a.From + " месеца" : "Пенсионер"
                }).ToList();

            this.ddlWorkingExperience.DataBind();
            this.ddlWorkingExperience.Items.Insert(0, new ListItem() { Text = "Моля, изберете трудов стаж", Selected = true, Value = "" });
        }

        private void ddlEducationDataBind()
        {
            this.ddlEducation.DataSource = db.EducationCategories
                .Select(a => new
                {
                    ID = a.ID,
                    Text = a.Name
                }).ToList();

            this.ddlEducation.DataBind();
            this.ddlEducation.Items.Insert(0, new ListItem() { Text = "Моля, изберете образование", Selected = true, Value = "" });
        }

        private void ddlMaritalStatusDataBind()
        {
            this.ddlMaritalStatus.DataSource = db.MaritalStatusCategories
                 .Select(a => new
                 {
                     ID = a.ID,
                     Text = a.Name
                 }).ToList();

            this.ddlMaritalStatus.DataBind();
            this.ddlMaritalStatus.Items.Insert(0, new ListItem() { Text = "Моля, изберете статус", Selected = true, Value = "" });
        }

        private void ddlPlaceDataBind()
        {
            this.ddlPlace.DataSource = db.PlaceCategories
                .Select(a => new
                {
                    ID = a.ID,
                    Text = a.Name
                }).ToList();

            this.ddlPlace.DataBind();
            this.ddlPlace.Items.Insert(0, new ListItem() { Text = "Моля, изберете град", Selected = true, Value = "" });
        }

        private void ddlAgeDataBind()
        {
            this.ddlAge.DataSource = db.AgeCategories
                .Select(a => new
                {
                    ID = a.ID,
                    Text = a.To.HasValue ? "от " + a.From + " до " + a.To + " години" : "над " + a.From + " години"
                }).ToList();

            this.ddlAge.DataBind();
            this.ddlAge.Items.Insert(0, new ListItem() { Text = "Моля, изберете възраст", Selected = true, Value = "" });
        }

        protected void ddlChildren_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToBoolean((sender as DropDownList).SelectedValue))
            {
                this.tbChildren.Visible = true;
            }
            else
            {
                this.tbChildren.Visible = false;
            }
        }

        protected void ddlOtherDeposits_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToBoolean((sender as DropDownList).SelectedValue))
            {
                this.tbOtherDeposits.Visible = true;
            }
            else
            {
                this.tbOtherDeposits.Visible = false;
            }
        }

        protected void Wizard_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (Page.IsValid)
            {
                CreditRiskProfile profile = new CreditRiskProfile();

                profile.AgeCategoryID = Convert.ToInt32(this.ddlAge.SelectedValue);
                profile.PlaceCategoryID = Convert.ToInt32(this.ddlPlace.SelectedValue);
                profile.MaritalStatusCategoryID = Convert.ToInt32(this.ddlMaritalStatus.SelectedValue);

                //Get children category
                if (Convert.ToBoolean(ddlChildren.SelectedValue))
                {
                    int childrenNum = Convert.ToInt32(this.tbChildren.Text);
                    var category = db.ChildrenCategories.SingleOrDefault(c => c.Number == childrenNum);
                    if (category != null)
                    {
                        profile.ChildrenCategoryID = category.ID;
                    }
                    else
                    {
                        //Set category with minimum points
                        profile.ChildrenCategoryID = db.ChildrenCategories.OrderBy(c => c.Points).First().ID;
                    }
                }
                else
                {
                    //Set category with maximum points
                    profile.ChildrenCategoryID = db.ChildrenCategories.OrderByDescending(c => c.Points).First().ID;
                }

                profile.EducationCategoryID = Convert.ToInt32(this.ddlEducation.SelectedValue);
                profile.WorkingExperienceCategoryID = Convert.ToInt32(this.ddlWorkingExperience.SelectedValue);
                profile.LastJobWorkingExperienceCategoryID = Convert.ToInt32(this.ddlLastJobWorkingExperience.SelectedValue);
                profile.LastJobPositionCategoryID = Convert.ToInt32(this.ddlLastJobPosition.SelectedValue);
                profile.ContractCategoryID = Convert.ToInt32(this.ddlContract.SelectedValue);

                decimal netIncome = Convert.ToDecimal(this.tbNetIncome.Text.Replace(",", "."));
                profile.NetIncomeCategoryID = db.NetIncomeCategories.Single(i => i.From <= netIncome && i.To >= netIncome).ID;

                decimal socialSecurity = Convert.ToDecimal(this.tbSocialSecurity.Text.Replace(",", "."));
                profile.SocialSecurityIncomeCategoryID = db.SocialSecurityIncomeCategories.Single(s => s.From <= socialSecurity && s.To >= socialSecurity).ID;

                profile.OwnHomeCategoryID = Convert.ToInt32(ddlOwnHome.SelectedValue);
                profile.OwnCarCategoryID = Convert.ToInt32(ddlOwnCar.SelectedValue);
                profile.OtherCreditPaymentCategoryID = Convert.ToInt32(ddlOtherCredits.SelectedValue);

                //Get OtherDepositsCategory
                if (Convert.ToBoolean(ddlOtherDeposits.SelectedValue))
                {
                    int depositValue = Convert.ToInt32(this.tbOtherDeposits.Text.Replace(",", "."));
                    profile.OtherDepositCategoryID = db.OtherDepositCategories.Single(c => c.From <= depositValue && c.To >= depositValue).ID;
                }
                else
                {
                    profile.OtherDepositCategoryID = db.OtherDepositCategories.Single(c => !c.From.HasValue && !c.To.HasValue).ID;
                }

                profile.DelayedPaymentCategoryID = Convert.ToInt32(this.ddlDelayPayment.SelectedValue);

                db.CreditRiskProfiles.Add(profile);
                db.SaveChanges();

                CreditRiskCalculator calculator = new CreditRiskCalculator();
                CalcResponse riskData = calculator.CalculateRisk(profile.ID);


                Label1.Text = string.Format("{0} </br> {1} </br> {2}", riskData.Points, riskData.Money, riskData.Approved);
            }
        }
    }
}