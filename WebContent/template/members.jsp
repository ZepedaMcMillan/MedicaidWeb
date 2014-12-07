<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="membersWithAvatarDiv">
	<input type="hidden" name="customAction" id="customAction" value="" />
	<input type="hidden" name="memberIndex" id="memberIndex" value="${memberIndex}" />	
	<input type="hidden" name="newMemberIndex" id="newMemberIndex" value="${memberIndex}" />
	<div align="left" class="main-heading">Household Composition
	</div>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="memebersWithAvatar">							
		<c:forEach items="${memberList}" var="m" varStatus="loop">
			<fmt:parseNumber var="indexToNum" value="${memberIndex}" />	
			<c:choose>
				<c:when test="${indexToNum == loop.index}">
					<tr>
						<c:choose>
							<c:when test="${m.generalInfo.age <= 18}">
								<td><img src="images/${fn:toLowerCase(m.generalInfo.gender)}-child-icon.png" /></td>
							</c:when>
							<c:otherwise>
								<td><img src="images/${fn:toLowerCase(m.generalInfo.gender)}-icon.png" /></td>
							</c:otherwise>
						</c:choose>
						<td>
							<div class="family-name">${m.generalInfo.firstName} ${m.generalInfo.lastName}</div>
							<div class="update-link"><input class="itemCommandBtn" type="button" value="update" onclick="updateMember(${loop.index})" /></div>	
							<div class="relationship">${m.generalInfo.relationship}</div>								
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr>
						<c:choose>
							<c:when test="${m.generalInfo.age <= 18}">
								<td><img src="images/${fn:toLowerCase(m.generalInfo.gender)}-child-icon-grayscale.png" /></td>
							</c:when>
							<c:otherwise>
								<td><img src="images/${fn:toLowerCase(m.generalInfo.gender)}-icon-grayscale.png" /></td>
							</c:otherwise>
						</c:choose>
						<td>
							<div class="family-name">${m.generalInfo.firstName} ${m.generalInfo.lastName}</div>
							<div class="update-link"><input class="itemCommandBtn" type="button" value="update" onclick="updateMember(${loop.index})" /></div>	
							<div class="relationship">${m.generalInfo.relationship}</div>								
						</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</table>
</div>