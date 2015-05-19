<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CreditRiskAssessment.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel" runat="server">
        <ContentTemplate>
            <asp:Wizard ID="Wizard" runat="server" OnFinishButtonClick="Wizard_FinishButtonClick">
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
                </FinishNavigationTemplate>
                <SideBarTemplate>
                    <asp:DataList ID="SideBarList" runat="server">
                        <ItemTemplate>
                            <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                        <SelectedItemStyle Font-Bold="True" />
                    </asp:DataList>
                </SideBarTemplate>
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StartNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StepNavigationTemplate>
                <WizardSteps>
                    <%-- BASIC DATA--%>
                    <asp:WizardStep runat="server" Title="ОСНОВНИ ДАННИ">
                        <%-- Age Category--%>
                        <asp:Label ID="lblAge" AssociatedControlID="ddlAge" runat="server" Text="Възраст: "></asp:Label>
                        <asp:DropDownList ID="ddlAge" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvAge" ControlToValidate="ddlAge" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Place Category--%>
                        <asp:Label ID="lblPlace" AssociatedControlID="ddlPlace" runat="server" Text="Местоживеене: "></asp:Label>
                        <asp:DropDownList ID="ddlPlace" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvPlace" ControlToValidate="ddlPlace" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Marital Status Category --%>
                        <asp:Label ID="lblMaritalStatus" AssociatedControlID="ddlMaritalStatus" runat="server" Text="Семейно положение: "></asp:Label>
                        <asp:DropDownList ID="ddlMaritalStatus" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvMaritalStatus" ControlToValidate="ddlMaritalStatus" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Children Category --%>
                        <asp:Label ID="lblChildren" AssociatedControlID="ddlChildren" runat="server" Text="Деца под 18 години: "></asp:Label>
                        <asp:DropDownList ID="ddlChildren" DataTextField="Text" DataValueField="ID" OnSelectedIndexChanged="ddlChildren_SelectedIndexChanged" AutoPostBack="true" runat="server">
                            <asp:ListItem Text="Не" Value="False" Selected="True" />
                            <asp:ListItem Text="Да" Value="True" />
                        </asp:DropDownList>
                        <asp:TextBox ID="tbChildren" Visible="false" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvChildren" ControlToValidate="tbChildren" runat="server" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revChildren" ControlToValidate="tbChildren" ValidationExpression="^[1-9]$" runat="server" ErrorMessage="*"></asp:RegularExpressionValidator>

                        <%-- Education Category --%>
                        <asp:Label ID="lblEducation" AssociatedControlID="ddlEducation" runat="server" Text="Образование: "></asp:Label>
                        <asp:DropDownList ID="ddlEducation" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEducation" ControlToValidate="ddlEducation" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>
                    </asp:WizardStep>

                    <%-- WORKING EXPERIENCE --%>
                    <asp:WizardStep runat="server" Title="СТАЖ И МЕСТОРАБОТА">

                        <%-- Working experience Category--%>
                        <asp:Label ID="lblWorkingExperience" AssociatedControlID="ddlWorkingExperience" runat="server" Text="Трудов стаж: "></asp:Label>
                        <asp:DropDownList ID="ddlWorkingExperience" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvWorkingExperience" ControlToValidate="ddlWorkingExperience" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Last Job Working Experience Category--%>
                        <asp:Label ID="lblLastJobWorkingExperience" AssociatedControlID="ddlLastJobWorkingExperience" runat="server" Text="Трудов стаж на последната месторабота: "></asp:Label>
                        <asp:DropDownList ID="ddlLastJobWorkingExperience" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLastJobWorkingExperience" ControlToValidate="ddlLastJobWorkingExperience" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Last Job Position Category--%>
                        <asp:Label ID="lblLastJobPosition" AssociatedControlID="ddlLastJobPosition" runat="server" Text="Ниво в йерархията: "></asp:Label>
                        <asp:DropDownList ID="ddlLastJobPosition" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLastJobPosition" ControlToValidate="ddlLastJobPosition" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Contract Category--%>
                        <asp:Label ID="lblContract" AssociatedControlID="ddlContract" runat="server" Text="Трудово правоотношение: "></asp:Label>
                        <asp:DropDownList ID="ddlContract" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvContract" ControlToValidate="ddlContract" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>
                    </asp:WizardStep>

                    <%-- SALARY INCOME --%>
                    <asp:WizardStep runat="server" Title="ЗАПЛАТА И ДОХОДИ">
                        <%-- Net Income Category--%>
                        <asp:Label ID="lblNetIncome" AssociatedControlID="tbNetIncome" runat="server" Text="Нетен доход: "></asp:Label>
                        <asp:TextBox ID="tbNetIncome" DataTextField="Text" DataValueField="ID" MaxLength="7" runat="server"></asp:TextBox>`
                        <asp:RequiredFieldValidator ID="rfvNetIncome" ControlToValidate="tbNetIncome" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNetIncome" ControlToValidate="tbNetIncome" runat="server" ErrorMessage="*" ValidationExpression="\d+(?:.\d{1,2})?"></asp:RegularExpressionValidator>

                        <%-- Social Security Income Category--%>
                        <asp:Label ID="lblSocialSecurity" AssociatedControlID="tbSocialSecurity" runat="server" Text="Осигурителен доход: "></asp:Label>
                        <asp:TextBox ID="tbSocialSecurity" DataTextField="Text" DataValueField="ID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSocialSecurity" ControlToValidate="tbSocialSecurity" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revSocialSecurity" ControlToValidate="tbSocialSecurity" runat="server" ErrorMessage="*" ValidationExpression="\d+(?:.\d{1,2})?"></asp:RegularExpressionValidator>
                    </asp:WizardStep>

                    <%-- PROPERTY --%>
                    <asp:WizardStep runat="server" Title="СОБСТВЕНОСТ И ЗАДЛЪЖНЯЛОСТ">
                        <%-- Own Home Category --%>
                        <asp:Label ID="lblOwnHome" AssociatedControlID="ddlOwnHome" runat="server" Text="Собствено жилище: "></asp:Label>
                        <asp:DropDownList ID="ddlOwnHome" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvOwnHome" ControlToValidate="ddlOwnHome" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Own Car Category --%>
                        <asp:Label ID="lblOwnCar" AssociatedControlID="ddlOwnCar" runat="server" Text="Собствен автомобил: "></asp:Label>
                        <asp:DropDownList ID="ddlOwnCar" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvOwnCar" ControlToValidate="ddlOwnCar" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Other Credits Category --%>
                        <asp:Label ID="lblOtherCredits" AssociatedControlID="ddlOtherCredits" runat="server" Text="Вноски по други кредити: "></asp:Label>
                        <asp:DropDownList ID="ddlOtherCredits" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvOtherCredits" ControlToValidate="ddlOtherCredits" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>

                        <%-- Other Deposits Category --%>
                        <asp:Label ID="lblOtherDeposits" AssociatedControlID="ddlOtherDeposits" runat="server" Text="Депозити в банка: "></asp:Label>
                        <asp:DropDownList ID="ddlOtherDeposits" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlOtherDeposits_SelectedIndexChanged">
                            <asp:ListItem Text="Не" Value="False" Selected="True" />
                            <asp:ListItem Text="Да" Value="True" />
                        </asp:DropDownList>
                        <asp:TextBox ID="tbOtherDeposits" Visible="false" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvOtherDeposits" ControlToValidate="tbOtherDeposits" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revOtherDeposits" ControlToValidate="tbOtherDeposits" runat="server" ErrorMessage="*" ValidationExpression="\d+(?:.\d{1,2})?"></asp:RegularExpressionValidator>

                        <%-- Delayed Payment Category --%>
                         <%-- Delayed Payment Category --%>
                         <%-- Delayed Payment Category --%>
                         <%-- Delayed Payment Category --%>
                                
                         <%-- Delayed Payment Category --%>     
                         <%-- Delayed Payment Category --%>             
                         <%-- Delayed Payment Category --%>

                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                         <%-- Delayed Payment Category --%>
                         <%-- Delayed Payment Category --%>
                        <asp:Label ID="lblDelayPayment" AssociatedControlID="ddlDelayPayment" runat="server" Text="Забавено плащане по кредит: "></asp:Label>
                        <asp:DropDownList ID="ddlDelayPayment" DataTextField="Text" DataValueField="ID" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDelayPayment" ControlToValidate="ddlDelayPayment" runat="server" InitialValue="" ErrorMessage="Задължително поле *"></asp:RequiredFieldValidator>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
