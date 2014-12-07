<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>ViewMedApplication</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="js/ViewMedApplication.js"></script>
<link rel="Configuration" href="DocEditor/dll/Thunderhead.DocEditor.DLL.config"></link>
</head>
<body>
<jsp:useBean id="configValues" class="gov.nv.dwss.medicaid.application.web.utils.GetMedAppRCXMLBean">
<jsp:setProperty name="configValues" property="paramValues" value="null" />
</jsp:useBean>
<img src="images/dhhs_header.png" width="100%" border="0"/>
<table width="100%" height="100%" style="border: 1px solid black; background-color: white;" align="center">
<tr>
<td style="width: 80%; height: 100%;" align="center">
<object id="editor" height="100%" width="100%" classid="./DocEditor/dll/Thunderhead.DocEditor.DLL#Thunderhead.BrowserDocumentEditorControl" VIEWASTEXT>
<param name="Server" value='<jsp:getProperty name="configValues" property="thunderheadServer"/>' />
<param name="UserGroupMode" value="1" />
<param name="UserId" value='<jsp:getProperty name="configValues" property="username"/>' />
<param name="ShowPanes" value="3" />
<param name="ShowTools" value="0" />
<param name="Zoom" value="FITTOWIDTH" />
</object></td>
</tr>
</table>
<script>
//call after page loaded
window.onload=fnViewMedApplicationLoad ; 
</script>
</body>
</html>