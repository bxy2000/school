<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>通讯录</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/pages/css/style.css" type="text/css" />
<script src="${pageContext.request.contextPath}/assets/plugins/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
	<div id="container">
		<jsp:include page="../share/header.jsp" />
		<div id="main">
			<form name="frmStudent" action="${pageContext.request.contextPath}/student/save" method="post">
				<table style="width: 60%;">
					<tr>
						<th colspan="2">新增联系人</th>
					</tr>
					<tr>
						<td><input type="hidden" name="id" value="${model.id}" /></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="text-right">学号：</td>
						<td><input type="text" name="studentNumber" value="${model.studentNumber}" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="text-right">姓名：</td>
						<td><input type="text" name="studentName" value="${model.studentName}" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="text-right">性别：</td>
						<td><c:choose>
								<c:when test="${model.gender == '男' }">
									<input type="radio" name="gender" value="男" checked="checked" />男
							<input type="radio" name="gender" value="女" />女
						</c:when>
								<c:otherwise>
									<input type="radio" name="gender" value="男" />男
							<input type="radio" name="gender" value="女" checked="checked" />女
						</c:otherwise>
							</c:choose></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="text-right">生日：</td>
						<td><input type="text" name="birthday" value="${model.birthday}" class="Wdate"
							onclick="WdatePicker({isShowClear:false,readOnly:true})" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="text-right">电话：</td>
						<td><input type="text" name="mobile" value="${model.mobile}" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="text-right">email：</td>
						<td><input type="text" name="email" value="${model.email}" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="text-right">家庭住址：</td>
						<td><input type="hidden" name="provinceValue" value="${model.province }" /> <input type="hidden" name="cityValue"
							value="${model.city }" /> <select id="province" name="province" onchange="changeCity()"></select>省 <select id="city"
							name="city"></select>市</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="text" name="address" style="width: 340px;" value="${model.address}" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" name="submit" value="提交" /> <input type="button" name="btnReturn" value="返回"
							onclick="location.href='${pageContext.request.contextPath}/student'" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</form>
		</div>

		<jsp:include page="../share/footer.jsp" />
	</div>
	<script src="${pageContext.request.contextPath}/assets/pages/js/student.js" type="text/javascript"></script>
	<script type="text/javascript">
		allProvince();

		//选择相对应的省份	
		var provinceValue = document.frmStudent.provinceValue.value;

		var selectProvince = document.frmStudent.province;

		for (var i = 0; i < selectProvince.length; i++) {
			if (selectProvince.options[i].value == provinceValue) {
				selectProvince.options[i].selected = true;
			}
		}

		changeCity();

		//选中相对应的城市
		var cityValue = document.frmStudent.cityValue.value;

		var selectCity = document.frmStudent.city;

		for (var i = 0; i < selectCity.length; i++) {
			if (selectCity.options[i].value == cityValue) {
				selectCity.options[i].selected = true;
			}
		}
	</script>
</body>
</html>
