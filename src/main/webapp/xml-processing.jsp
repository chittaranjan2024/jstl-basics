<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <c:set var="vegetables">
    <vegetables>
     <vegetable>
      <name>Onion</name>
      <price>40/kg</price>
     </vegetable>
     
     <vegetable>
      <name>Potato</name>
      <price>30/kg</price>
     </vegetable>
     
     <vegetable>
      <name>Tomato</name>
      <price>60/kg</price>
     </vegetable>
    </vegetables>
  </c:set>
  
  <x:parse xml="${vegetables}" var="output"></x:parse>
  
  <x:out select="$output/vegetables/vegetable[1]/name"></x:out> 
  
    <x:parse xml="${vegetables}" var="output1"></x:parse>
     <x:choose>
       <x:when select="$output/vegetables/vegetable[1]/price='40/kg'">
         40rs/kg
       </x:when>
       
       <x:otherwise>
         Not 40rs/kg
       </x:otherwise>
     </x:choose>
    
</body>
</html>