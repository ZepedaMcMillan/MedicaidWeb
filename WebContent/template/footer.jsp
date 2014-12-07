<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table style="margin: auto;" width="80%">
	<tr>
		<td valign="top"><a href="VoterRegistration.jsp"></a><a href="javascript:resetForm();"><img src="images/exit-icon2.png" width="29" height="50" alt="" /></a></td>
		<td align="right" valign="top">
			<button style="display: ${param.showPrevious}" type="button" name="previous-arrow"
				onclick="window.location='${param.previousLocation}'">
				<img src="images/perviouse-arrow2.png" alt="">
			</button>
			<button type="submit" name="next-arrow">
				<img src="images/next-arrow.png" alt="">
			</button> <br />
		</td>
	</tr>
</table>