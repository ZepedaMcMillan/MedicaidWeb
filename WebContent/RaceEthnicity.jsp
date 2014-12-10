<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Race and Ethnicity</title>
<jsp:include page="template/resources.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<form id="mainForm" name="mainForm" method="post" action="RaceEthnicity">
		<table align="center" width="70%" id="RaceEthnicityMainOuterTable">
			<tr>
				<td id="RaceEthnicityMainOuterTableCell0">
					<div class="content-bg-big" id="RaceEthnicityDivHOH">
						<div align="left" class="main-heading" id="RaceEthnicityMainHeading" style="margin-bottom:20px;">Race and Ethnicity</div>
						<div id="RaceEthnicityMainName">&emsp;&emsp;<span id="RaceEthnicityHOHName" style="font-weight: bold; color: black; font-size: 15pt"></span></div>
						<table class="form-container" width="100%" border="0" cellspacing="0" cellpadding="0" id="RaceEthnicityHohTable">
							<tr>
								<td width="40%" valign="middle" class="label-bg">Are you Hispanic, Latino or of Spanish origin?</td>
								<td width="60%" valign="middle" class="field-bg">
									<input type="radio" class="radio-button" name="isHispanicLatino" id="hispanicLatinoY" value="true" onclick="toggleConditionalElement('hispanicLatinoYRow', true)" ${memberInfo.raceEthnicity.isHispanicLatino == 'true' ? 'checked' : ''} />
									<label for="radio5">Yes</label> 
									<input type="radio" class="radio-button" name="isHispanicLatino" id="hispanicLatinoN" value="false" onclick="toggleConditionalElement('hispanicLatinoYRow', false)" ${memberInfo.raceEthnicity.isHispanicLatino != 'true' ? 'checked' : ''}  /> 
									<label for="radio5">No</label>
								</td>
							</tr>
							<tr style="display: ${memberInfo.raceEthnicity.isHispanicLatino != 'true' ? 'none' : ''};" id="hispanicLatinoYRow">
								<td width="40%" valign="middle" class="label-bg">Check all that apply</td>
								<td width="60%" valign="middle" class="field-bg">
									<table>
										<tr>
											<td><label for="hispanicLatinoYInput">Mexican</label></td>
											<td>
												<input type="checkbox" name="hispanicCategory" id="hispanicLatinoYInputMexican" value="Mexican" ${Mexican}  />
											</td>
										</tr>

										<tr>
											<td><label for="hispanicLatinoYInput">Mexican American</label></td>
											<td>
												<input type="checkbox" name="hispanicCategory" id="hispanicLatinoYInputMexAmerican" value="Mexican American" ${MexicanAmerican} />
											</td>
										</tr>

										<tr>
											<td><label for="hispanicLatinoYInput">Puerto Rican</label></td>
											<td>
												<input type="checkbox" name="hispanicCategory" id="hispanicLatinoYInputPuertoRican" value="Puerto Rican"  ${PuertoRican} />
											</td>
										</tr>

										<tr>
											<td><label for="hispanicLatinoYInput">Cuban</label></td>
											<td>
												<input type="checkbox" name="hispanicCategory" id="hispanicLatinoYInputCuban" value="Cuban"  ${Cuban}/>
											</td>
										</tr>

										<tr>
											<td><label for="hispanicLatinoYInput">Chicano</label></td>
											<td>
												<input type="checkbox" name="hispanicCategory" id="hispanicLatinoYInputChicano" value="Chicano"  ${Chicano} /></td>
										</tr>

										<tr>
											<td>
												<label for="hispanicLatinoYInput">Other</label>
												<input name="hispanicCategoryOther" type="text" class="width120" id="hispanicCategoryOther" value="${memberInfo.raceEthnicity.hispanicCategoryOther}"  />
											</td>
											<td>
												<input type="checkbox" name="hispanicCategory" id="hispanicLatinoYInputOther" value="other"  ${hispanicOther} />
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="40%" valign="middle" class="label-bg">What is your Race?</td>
								<td width="60%" valign="middle" class="field-bg">
									<table>
										<tr>
											<td><label for="memberRace">White</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceWhite" value="White" ${White} />
											</td>
										</tr>

										<tr>
											<td><label for="memberRace">Black or African American</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceBlack" value="Black" ${Black}/>
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">American Indian or Alaska Native</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceNative" value="Native" ${Native}/>
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Asian Indian</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceAsian" value="Asian" ${Asian} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Chinese</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceChinese" value="Chinese" ${Chinese}/>
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Filipino</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceFilipino" value="Filipino"  ${Filipino} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Japanese</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceJapanese" value="Japanese" ${Japanese} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Korean</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceKorean" value="Korean" ${Korean} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Vietnamese</label><br>
											</td>
											<td>
												<input type="checkbox" name="race" id="memberRaceVietnamese" value="Vietnamese" ${Vietnamese} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Other Asian</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceOtherAsian" value="Other Asian" ${OtherAsian} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Native Hawaiian</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceNativeHawaiian" value="Native Hawaiian" ${NativeHawaiian} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Guanamanian or Chamorro</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceGuanamanian" value="Guanamanian" ${Guanamanian} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Samoan</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceSamoan" value="Samoan" ${Samoan} />
											</td>
										</tr>
										<tr>
											<td><label for="memberRace">Other Pacific Islander</label><br></td>
											<td>
												<input type="checkbox" name="race" id="memberRaceOtherPacific" value="Other Pacific" ${OtherPacific} />
											</td>
										</tr>
										<tr>
											<td>
												<label for="memberRace">Other</label>
												<input name="raceOther" type="text" class="width120" id="otherRace" value="${memberInfo.raceEthnicity.raceOther}" />
											</td>
											<td>
												<input type="checkbox" name="race" id="memberRaceOther" value="other" ${raceOther} />
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<jsp:include page="template/footer.jsp">
							<jsp:param value="Deductions?memberIndex=${param.memberIndex}" name="previousLocation"/>
						</jsp:include>
					</div>
				</td>
				<td>
					<jsp:include page="template/members.jsp">
						<jsp:param value="RaceEthnicity" name="location" />
					</jsp:include>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>