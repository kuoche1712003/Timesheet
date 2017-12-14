<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html lang="en">
  <head>
      <%@ include file="/WEB-INF/Views/Template/header.file" %>
    
    <title>工時系統-新增員工</title>
    
  </head>
  <body>
    <%@ include file="/WEB-INF/Views/Template/AdminNav.jsp" %>


<div class="container">
  <div class="jumbotron"> <!--網站主內容-->
       <div class="title">新增員工</div>
  </div>
	<!--表單開始-->
  <div class="form-container">
  <!-- 錯誤訊息 -->
   <c:if test="${not empty errorMsgs['error']}">
  	<div class="form-group col-md-6 col-md-offset-3 error_msg2" id="error_msg">
  		${errorMsgs['error']}
  	</div>
  </c:if>
  <!-- 錯誤訊息結束 -->
   <form action="EmployeeController" name="AlterHdWriteForm" id="AlterHdWriteForm" method="post">
  <div class="form-group col-md-6 col-md-offset-3">
    <label for="exampleCNum">員工編號</label>
    <!-- 後端讀入員工編號 -->
    <p class="form-control-static" >系統將自動產生</p>
  </div>
  
  <div class="form-group col-md-6 col-md-offset-3">
    <label for="name">請輸入姓名</label>
    <!-- 錯誤訊息 -->
    <c:if test="${not empty errorMsgs['name']}">
    	<span class="error_msg">
  			${errorMsgs['name']}
  	    </span>
  	</c:if>
  	<!-- 錯誤訊息結束 -->
    <input type="text" name="name" id="name" class="form-control" placeholder="姓名" value="${employee.name}" required>
  </div>
  <div class="form-group col-md-6 col-md-offset-3">
    <label for="id">請輸入身分證字號</label>
    <!-- 錯誤訊息 -->
    <c:if test="${not empty errorMsgs['id']}">
    	<span class="error_msg">
  			${errorMsgs['id']}
  	    </span>
  	</c:if>
  	<!-- 錯誤訊息結束 -->
    <input type="text" name="id" id="id" class="form-control" placeholder="身分證字號" value="${employee.id}" required>
  </div>  
   <div class="form-group col-md-6 col-md-offset-3">
    <label for="gender">請選擇性別</label>
    <!-- 錯誤訊息 -->
    <c:if test="${not empty errorMsgs['gender']}">
    	<span class="error_msg">
  			${errorMsgs['gender']}
  	    </span>
  	</c:if>
  	<!-- 錯誤訊息結束 -->
    <label class="radio-inline">
      <input type="radio" name="gender" id="gender" value="1" ${1 == employee.gender ? 'selected' : ''} checked > 男性
    </label>
    <label class="radio-inline">
      <input type="radio" name="gender" id="gender" value="2" ${2 == employee.gender ? 'selected' : ''}> 女性
    </label>
  </div>
  <div class="form-group col-md-6 col-md-offset-3">
    <label for="email">請輸入電子郵件</label>
    <!-- 錯誤訊息 -->
    <c:if test="${not empty errorMsgs['email']}">
    	<span class="error_msg">
  			${errorMsgs['email']}
  	    </span>
  	</c:if>
  	<!-- 錯誤訊息結束 -->
    <input type="email" name="email" id="email" class="form-control" placeholder="電子郵件" value="${employee.email}" required> 
  </div>
  <div class="form-group col-md-3 col-md-offset-5">
    <button type="reset" id="ReWrite" class="btn btn-danger">重新填寫</button>
    <button type="submit" id="Submit" class="btn btn-submit">確定送出</button>
  </div>
  <input type="hidden" name="action" id="name" value="addemp"/>
 </form>
</div>
   <!--表單結束-->
 

</div>
     <%@ include file="/WEB-INF/Views/Template/footer.jsp" %>

  </body>
</html>