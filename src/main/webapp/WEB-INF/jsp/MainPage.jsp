<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
<jsp:include page="headTag.jsp"/>
<link href="<c:url value="/resources/css/MainPage.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/scrollbar.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/stars(rating).css"/>" rel="stylesheet">
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
        <li class="rela-block nav-link the-beers">Beer</li>
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
    <div class="abs-center">We've got you covered with the freshest updog an the smoothest goodfam.<br><br>Something about Beer!</div>
</div>

<div class="rela-block words-section tea">
    <div class="content-container">
        <h2>You Drunk Off Knowledge</h2>
        <p class="light">Beer—the ice-cold, hoppy, golden mug of deliciousness that serves as a universal symbol of happiness. It is the one true artifact that binds all of humanity together, as it is the only thing prevalent in some form in all cultures that has truly survived the test of time.</p>
    </div>
</div>
<div class="rela-block words-section leaves right">
    <div class="content-container">
        <h2>Breakfast Of Champions?</h2>
        <p class="light">Beer for breakfast was actually once a common thing. In England, before the 1800s, coffee and tea, the type of morning drinks that give you that “pick-me-up,” were hard to come by for most people. In lieu of this, they used beer, because, why not?</p>
    </div>
</div>
<div class="rela-block large-section">
    <h1>Rate beer</h1>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"><img class="option-image beer" src="${pageContext.request.contextPath}/resources/images/hoegaarden1.png" alt="#"></div>
        <h2>Hoegaarden</h2>
        <br>
        <form>
            <div class="stars">
                <input type="radio" name="star" class="star-1" id="star-1-Hoegaarden" />
                <label class="star-1" for="star-1-Hoegaarden">1</label>
                <input type="radio" name="star" class="star-2" id="star-2-Hoegaarden" />
                <label class="star-2" for="star-2-Hoegaarden">2</label>
                <input type="radio" name="star" class="star-3" id="star-3-Hoegaarden" />
                <label class="star-3" for="star-3-Hoegaarden">3</label>
                <input type="radio" checked name="star" class="star-4" id="star-4-Hoegaarden" />
                <label class="star-4" for="star-4-Hoegaarden">4</label>
                <input type="radio" name="star" class="star-5" id="star-5-Hoegaarden" />
                <label class="star-5" for="star-5-Hoegaarden">5</label>
                <span></span>
            </div>
        </form>
    </div>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"><img class="option-image beer" src="${pageContext.request.contextPath}/resources/images/Kronebourg.png" alt="#"></div>
        <h2>Kronenbourg 1664</h2>
        <form>
        <div class="stars">
            <input type="radio" name="star" class="star-1" id="star-1-Kronenbourg" />
            <label class="star-1" for="star-1-Kronenbourg">1</label>
            <input type="radio" name="star" class="star-2" id="star-2-Kronenbourg" />
            <label class="star-2" for="star-2-Kronenbourg">2</label>
            <input type="radio" name="star" class="star-3" id="star-3-Kronenbourg" />
            <label class="star-3" for="star-3-Kronenbourg">3</label>
            <input type="radio" checked name="star" class="star-4" id="star-4-Kronenbourg" />
            <label class="star-4" for="star-4-Kronenbourg">4</label>
            <input type="radio" name="star" class="star-5" id="star-5-Kronenbourg" />
            <label class="star-5" for="star-5-Kronenbourg">5</label>
            <span></span>
        </div>
        </form>
    </div>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"><img class="option-image beer" src="${pageContext.request.contextPath}/resources/images/LefebvreBelgianKriek.png" alt="#"></div>
        <h2>Belgian Kriek</h2>
        <form>
            <div class="stars">
                <input type="radio" name="star" class="star-1" id="star-1-Kriek" />
                <label class="star-1" for="star-1-Kriek">1</label>
                <input type="radio" name="star" class="star-2" id="star-2-Kriek" />
                <label class="star-2" for="star-2-Kriek">2</label>
                <input type="radio" name="star" class="star-3" id="star-3-Kriek" />
                <label class="star-3" for="star-3-Kriek">3</label>
                <input type="radio" name="star" class="star-4" id="star-4-Kriek" />
                <label class="star-4" for="star-4-Kriek">4</label>
                <input type="radio" checked name="star" class="star-5" id="star-5-Kriek" />
                <label class="star-5" for="star-5-Kriek">5</label>
                <span></span>
            </div>
        </form>
    </div>
    <div class="rela-inline option-square">
        <div class="rela-block option-image"><img class="option-image beer" src="${pageContext.request.contextPath}/resources/images/Guinness.png" alt="#"></div>
        <h2>Guinness</h2>
        <br>
        <form>
            <div class="stars">
                <input type="radio" name="star" class="star-1" id="star-1-Guinness" />
                <label class="star-1" for="star-1-Guinness">1</label>
                <input type="radio" checked name="star" class="star-2" id="star-2-Guinness" />
                <label class="star-2" for="star-2-Guinness">2</label>
                <input type="radio" name="star" class="star-3" id="star-3-Guinness" />
                <label class="star-3" for="star-3-Guinness">3</label>
                <input type="radio" name="star" class="star-4" id="star-4-Guinness" />
                <label class="star-4" for="star-4-Guinness">4</label>
                <input type="radio" name="star" class="star-5" id="star-5-Guinness" />
                <label class="star-5" for="star-5-Guinness">5</label>
                <span></span>
            </div>
        </form>
    </div>
</div>
<%--<div class="rela-block spacer"></div>--%>

</body>
<script src="${pageContext.request.contextPath}/resources/js/MainPage.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/scrollbar.js"></script>

</html>
