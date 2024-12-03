<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>Home page</h2>
  <c:import url="header.jsp"></c:import>
  <c:out value="Welcome to JSTL"></c:out>
  
  <c:set var="a" value="${4*10}"  scope="session"/>
  
  <c:out value="${a}"/>
  
  <c:if test="${10<5}">
    <p>True</p>
  </c:if>
  
  <c:choose>
   
   <c:when test="${10>5}">
      <p>Hello</p>
   </c:when>
   
    <c:when test="${10<5}">
      <p>Hi</p>
   </c:when>
   
   <c:otherwise>
    <p>Bye</p>
   </c:otherwise>
   
  </c:choose>
  
  
  <c:forEach var="i" begin="1" end="10">
    <c:out value="${i}"></c:out>
  </c:forEach>
 

 <c:set var="st" value="Welcome to JSTL"/>
 
 <c:if test="${fn:contains(st,'JSTL')}">
  <p>Present</p>
 </c:if>
 
  
 <c:if test="${fn:endsWith(st,'JSTL')}">
  <p>Present</p>
 </c:if>
 
 <c:if test="${fn:startsWith(st,'Welcome')}">
  <p>Present</p>
 </c:if>
 
 <c:set var="st1" value="Welcome to JSP"/>
 <p>${fn:indexOf(st,'to')}</p>


<c:set var="st2" value="   Welcome to JSP   "/>
 <p>${fn:trim(st2)}</p>
 <p>${fn:length(st2)}</p>
 
 <p>${fn:toUpperCase(st2)}</p>
 <p>${fn:toLowerCase(st2)}</p>
 
 <c:set var="s1" value="Welcome to JSP programming"/>
 <c:set var="sarray" value="${fn:split(s1,' ')}"/>
 
 <p>${sarray}</p>
 <p>${fn:substring(s1,11,14)} </p>
 
 
 
</body>
</html>