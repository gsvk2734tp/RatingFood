<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>LogIn</title>
    <base href="${pageContext.request.contextPath}/"/>

    <%--<link rel="stylesheet" href="resources/css/style.css">--%>
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="webjars/noty/3.1.4/demo/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="webjars/datatables/1.10.19/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="webjars/noty/3.1.4/lib/noty.css"/>
    <link rel="stylesheet" href="webjars/datetimepicker/2.5.20/jquery.datetimepicker.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/ico.png">

    <%--http://stackoverflow.com/a/24070373/548473--%>
    <script type="text/javascript" src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/4.1.3/js/bootstrap.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.19/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.19/js/dataTables.bootstrap4.min.js" defer></script>
    <script type="text/javascript" src="webjars/noty/3.1.4/lib/noty.min.js" defer></script>
    <script type="text/javascript" src="webjars/datetimepicker/2.5.20/build/jquery.datetimepicker.full.min.js" defer></script>
</head>