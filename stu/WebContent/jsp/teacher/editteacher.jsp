<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<html>
	<head>
		<t:head />
		<script type="text/javascript"
			src="html/js/validateTeacherForm.js"></script>
		<script language="JavaScript">
		window.onload = function(){
			document.teacherForm.onsubmit = validateTeacherForm;	
		}
		</script>
		<link rel="stylesheet" href="html/css/editStudent.css" type="text/css"></link>
	</head>
	<body>
		<t:menu />
		<div class="main-top">
			<span class="title">修改老师信息</span>
		</div>
		<div class="main-body">
			<form name="teacherForm" method="POST" action="editTeacher.do"">
				<input type="hidden" name="flag" value="update" />
				<table class="main-table" cellpadding="0" cellspacing="0" align="center">
					<tr >
						<td class="first">
							<span class="tip">*</span>教工号：
						</td>
						<td >
							<input type="text" name="teacher.id" maxlength="20"
								size="30" value="<c:out value="${teacher.id}"/>">
							<input type="hidden"  name="teacher.passwd" value="${teacher.id}">
						</td>
					</tr>
					<tr >
						<td class="first">
							<span class="tip">*</span>老师姓名：
						</td>
						<td >
							<input type="text" name="teacher.name" maxlength="20"
								size="30" value="<c:out value="${teacher.name}"/>">
						</td>
					</tr>

					<tr class="light">
						<td  class="first">
							<span class="tip">*</span>性 别：
						</td>
						<td>
							<select name="teacher.gender">
								<option value="1" <c:if test="${teacher.gender eq '1'}">selected</c:if>>
								男
								</option>
								<option value="0" <c:if test="${teacher.gender eq '0'}">selected</c:if>>
								女
								</option>
							</select>
						</td>
					</tr>
					<tr >
						<td class="first">
							联系电话：
						</td>
						<td>
							<input type="text" name="teacher.phone" maxlength="18" size="30"
								value="<c:out value="${teacher.phone}"/>">
						</td>
					</tr>
					<tr >
						<td class="first">
							电子邮件：
						</td>
						<td>
							<input type="text" name="teacher.email" maxlength="50" size="30"
								value="<c:out value="${teacher.email}"/>">
						</td>
					</tr>
					<tr >
						<td colspan="2" class="ctrl-button">
								<input type="submit" value="保存">
								&nbsp;&nbsp;
								<input type="reset" value="清 除">
								&nbsp;&nbsp;
								<input type="reset" value="返 回" onclick="history.back(-1);">
						</td>
					</tr>
					<tr >
						<td colspan="2" class="note">							
							<span class="title">注 意 事 项 </span><br/>
							1. 请仔细核对老师的信息，确认所输入的信息是正确的，如果本次输入错了，添加成功后，还可以继续修改；<br/>
							2.<span class="tip">*</span> 为必填项，如果全部正确输入后,按“新 建”按钮进行创建。
									
						</td>
					</tr>

				</table>
			</form>
		</div>	
		<t:foot />
	</body>
</html>