<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
       
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css">        
    </head>
<body>  
    <!-- login right Start Here -->
    <div id="lpagerightcontent">
    
     <div class="lcontent">
                       <div class="encontenttitle"><h2>Entrepreneurs in AngelLabs </h2></div>
        <marquee direction="up" behavior="scroll" height="200px">
                  <img src="<c:url value="/resources/images/entrepreneurs.png"/>" alt="enterpreneurs" width="330px" height="1850px"></marquee>
    </div>
                 
     <div class="lcontent">
                          <div class="icontenttitle"><h2> Investers in AngelLabs </h2></div>
        <marquee direction="up" behavior="scroll" height="200px">
                  <img src="<c:url value="/resources/images/investors.png"/>" alt="enterpreneurs" width="330px" height="2400px"></marquee>
                  
    </div>
      
      <!-- Content Ends Here -->
      </div>
    <div class="clearfix"></div>
</body>
</html>