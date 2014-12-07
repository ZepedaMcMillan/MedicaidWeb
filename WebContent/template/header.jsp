<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<img src="images/dhhs_header.png" width="100%" border="0"/>
<div id="NavBar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="${navBean.navItemSelected == 'HouseHold' || navBean.navItemSelected == null ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="HouseHoldInformation">Household Information</a> </td>
        <td class="${navBean.navItemSelected == 'Contact' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="ContactInformation">Contact Information</a></td>
        <td class="${navBean.navItemSelected == 'General' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="GeneralInformation">General Information</a> </td>
        <td class="${navBean.navItemSelected == 'Tax' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="TaxInformation">Tax Information</a></td>
        <td class="${navBean.navItemSelected == 'OtherAssistance' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="OtherAssistance">Other Assistance Inquiry</a></td>
        <td class="${navBean.navItemSelected == 'MemberIncome' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="MemberIncome">Member Income</a></td>
        <td class="${navBean.navItemSelected == 'OtherIncome' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="OtherIncome">Other Income</a></td>
        <td class="${navBean.navItemSelected == 'Deductions' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="Deductions">Deductions</a></td>
        <td class="${navBean.navItemSelected == 'Race' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="RaceEthnicity">Race & Ethnicity</a></td>
        <td class="${navBean.navItemSelected == 'HealthInsurance' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="HealthInsuranceInformation">Insurance From Jobs</a></td>
        <td class="${navBean.navItemSelected == 'OtherInsurance' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="OtherHealthInsurance">Other Insurance</a></td>
        <td class="${navBean.navItemSelected == 'AuthRep' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="AuthorizedRep"><b>Authorized Representative</b></a></td>
        <td class="${navBean.navItemSelected == 'Incarceration' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="Incarceration">Incarceration</a></td>
        <td class="${navBean.navItemSelected == 'Rights' ? 'enable-nav-bg' : 'disable-nav-bg'}"><a href="YourResponsibilities">Rights and Obligations</a></td>
      </tr>
</table>
</div>