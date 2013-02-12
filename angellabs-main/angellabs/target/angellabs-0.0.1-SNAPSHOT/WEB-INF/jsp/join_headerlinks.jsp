<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Angellabs_Home</title>
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css">        
    </head>
<body>
<!-- topblock Start Here -->
<div id="topblock">
	<!-- Logo Start Here -->
	<div id="logo">
		<a href="../Home/index.htm"><img src="<c:url value="/resources/images/logo.png"/>"></a>
	<!-- Logo Ends Here -->
	</div>
<!-- Topnavigation Start Here -->
	<div id="topnavigation">
	<!-- Social Ends Here -->
		<div id="socialnavigation">
			<table>
				<tr>
					<td><a href="../User/login.htm"><img src="<c:url value="/resources/images/login.png"/>"></a></td>
					<td><a href="../User/login.htm">Login</a></td><td class="space"></td>
				</tr>
			</table>
		<!-- Social Ends Here -->
		</div>
	<!-- Topnavigation Ends Here -->
	</div>
	<div class="clearfix"></div>
<!-- Topblock Ends Here -->
</div>
<!-- Navigation Start Here -->
<div id="navigation">
<!-- Nav Start Here -->
	<div class="nav">
		<ul>
			<li><a  class="active" href="../Home/index.htm">Home</a></li>
			<li><a href="../Entrepreneur/entrepreneurs.htm">Entrepreneurs</a></li>
			<li><a href="../Investor/investors.htm">Investors</a></li>
			<li><a href="companies.htm">Companies</a></li>
		</ul>
		<!-- Nav Ends Here -->
	</div>
	<div class="clearfix"></div>
<!-- Navigation Ends Here -->
</div>
<!-- bsdivblock Start Here -->
<div id="bsblock">
	<!-- breadcrumb Start Here -->
	<div id="breadcrumb"> <a href="../Home/index.htm" class="breadlink"> Home </a>
		<!-- breadcrumb Ends Here -->
	</div>
	<!-- Search Start Here -->
	<div id="search">                                      
		<form action="" method="post" id="searchform">    
			<input type="text" id="searchinput" name="query" value='Search' onFocus="if(this.value=='Search'){this.value='';}" onBlur="if(this.value==''){this.value='Search';}" /> 
			<input type="submit" id="searchsubmit" value="" /> 
		</form>
	</div>
	<!-- Search Ends Here -->
	<div class="clearfix"></div>
	<!-- bsblock Ends Here -->
</div>
</body>
</html>