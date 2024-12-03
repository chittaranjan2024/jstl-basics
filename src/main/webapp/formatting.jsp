<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:set var="amount" value="789.970"></c:set> 
 
 <fmt:parseNumber var="fmtAmount" type="number" value="${amount}"></fmt:parseNumber>
 <c:out value="${fmtAmount}"/> 
 <br/>
 <fmt:parseNumber var="fmtAmount1" integerOnly="true" type="number" value="${amount}"></fmt:parseNumber>
 <c:out value="${fmtAmount1}"/> 
 
 
 <c:set var="str" value="<%=new java.util.Date() %>"/> 

       <p>
        
         ${str} 
         <br>
         <fmt:formatDate value="${str}" type="both" timeStyle="long" dateStyle="long"/>
        
      </p>
      
      
  <c:set var="amt" value="9850.14115"></c:set>  
  <p><fmt:formatNumber value="${amt}" type="currency"></fmt:formatNumber></p>
  <p><fmt:formatNumber value="${amt}" type="number" groupingUsed="true"></fmt:formatNumber></p>   
  <p><fmt:formatNumber value="${amt}" type="number" maxIntegerDigits="3"></fmt:formatNumber></p>   
  <p><fmt:formatNumber value="${amt}" type="number" maxFractionDigits="6"></fmt:formatNumber></p>   
  <p><fmt:formatNumber value="${amt}" type="number" pattern="###.###$"></fmt:formatNumber></p>   
  
  <c:set var="currentdate" value="<%=new java.util.Date() %>"/> 
  <p><fmt:formatDate type="time" value="${currentdate}"></fmt:formatDate></p>
  <p><fmt:formatDate type="date" value="${currentdate}"></fmt:formatDate></p>
  <p><fmt:formatDate type="both" value="${currentdate}"></fmt:formatDate></p>
  <p><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${currentdate}"></fmt:formatDate></p>
  <p><fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${currentdate}"></fmt:formatDate></p>
  <p><fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${currentdate}"></fmt:formatDate></p>
  
</body>
</html>