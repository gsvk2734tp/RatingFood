<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
<jsp:include page="headTag.jsp"/>
<link href="<c:url value="/resources/css/feedPage.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/scrollbar.css"/>" rel="stylesheet">
<body>
<!-- FONTS -->
<link href='https://fonts.googleapis.com/css?family=Raleway:200,300,400' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Mr+Dafoe' rel='stylesheet' type='text/css'>

<!-- PAGE STUFF -->
<div class="menu-container">
    <div class="close">close</div>
    <div class="abs-center tab menu-tab">The Menu stuff will go here</div>
</div>

<div class="side-nav">
    <h2 class="abs-center nav-header">Nav</h2>
    <ul class="abs-center nav-options">
        <li class="rela-block nav-link the-home">Home page</li>
        <li class="rela-block nav-link the-menu">The Menu</li>
        <li class="rela-block nav-link">Beer</li>
        <li class="rela-block nav-link">Food</li>
        <li class="rela-block nav-link">Profile</li>
        <li class="rela-block nav-link">Contact Us</li>
    </ul>
</div>

<div class="rela-block top-section">
    <div class="abs-center header-container">
        <h1 class="abs-center food-header">Beer Shop</h1>
        <div class=" abs-center eye left"></div>
        <div class=" abs-center eye right"></div>
        <div class=" abs-center mouth"></div>
        <div class="extra-lines"></div>
        <div class="extra-lines bottom"></div>
    </div>
    <div class="nav-button top">
        <div class="abs-center nav-bars"></div>
    </div>
    <div class="search-button">
        <div class="abs-center magnefying-glass"></div>
    </div>
</div>

<div class="rela-block tab">
    <div class="abs-center">We've got you covered with the freshest updog an the smoothest goodfam.<br><br>Something about Gourmet Sammiches and Coffee!</div>
</div>

<div class="rela-block words-section tea">
    <div class="content-container">
        <h2>Amazing Tastes</h2>
        <p class="light">Sriracha readymade 8-bit, offal selfies yuccie beard trust fund craft beer art party tacos. Cliche food truck kickstarter, crucifix tofu kinfolk mlkshk artisan. Readymade post-ironic freegan letterpress PBR&B 8-bit.</p>
    </div>
</div>
<div class="rela-block words-section leaves right">
    <div class="content-container">
        <h2>Wholesome Ingredients</h2>
        <p class="light">Flannel health goth bushwick deep v. Kogi butcher pabst retro, street art small batch craft beer typewriter. Pinterest semiotics selvage organic whatever, farm-to-table direct trade intelligentsia health goth normcore biodiesel street art. Before they sold out narwhal bicycle rights hella, messenger bag banh mi tacos pickled tote bag ugh tofu.</p>
    </div>
</div>
<div class="rela-block large-section">
    <h1>Stuff Here</h1>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"></div>
        <h2>test</h2>
        <p class="light">some filler text to test out the style and make sure that all of that junk works out correctly.</p>
    </div>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"></div>
        <h2>test</h2>
        <p class="light">some filler text to test out the style and make sure that all of that junk works out correctly.</p>
    </div>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"></div>
        <h2>test</h2>
        <p class="light">some filler text to test out the style and make sure that all of that junk works out correctly.</p>
    </div>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"></div>
        <h2>test</h2>
        <p class="light">some filler text to test out the style and make sure that all of that junk works out correctly.</p>
    </div>
</div>
<div class="rela-block spacer"></div>

</body>
<script src="${pageContext.request.contextPath}/resources/js/feedPage.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/scrollbar.js"></script>

</html>
