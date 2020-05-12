<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
	    <meta charset="UTF-8">
	    <meta name="description" content="Yoga Studio Template">
	    <meta name="keywords" content="Yoga, unica, creative, html">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>카페 취향</title>
	
	    <!-- Google Font -->
	    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap" rel="stylesheet">
	
	    <!-- Css Styles -->
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/bootstrap.min.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/font-awesome.min.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/nice-select.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/slicknav.min.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/style.css" type="text/css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    </head>
    <body>
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="footer" />
        <script type="text/javascript">
		$(document).ready(function(){
			$("#logoutBtn").on("click", function(){
				location.href="user/logout";
			})
			
		})
		</script>
    </body>
</html>