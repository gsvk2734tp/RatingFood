<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>

<jsp:include page="headTag.jsp"/>
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

<body>

<link href='https://fonts.googleapis.com/css?family=Roboto:900,900italic,500,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>

<div id="fback"><div class="girisback"></div><div class="kayitback"></div></div>

<div id="textbox">
  <div class="toplam">

    <div class="left">
      <div id="ic">
        <h2>Sign Up</h2>
        <p>Synth polaroid bitters chillwave pickled. Vegan disrupt tousled.</p>
        <form id="girisyap" name="signup_form" id="signup_form" method="post" action="users" enctype="multipart/form-data">

          <div class="yarim form-group">
            <label class="control-label" for="inputNormal">Username</label>
            <input type="text" name="signup_username" id="signup_username" class="bp-suggestions form-control" cols="50" rows="10" ></input>
          </div>
          <div class="yarim sn form-group">
            <label class="control-label" for="inputNormal">Full Name</label>
            <input type="text" name="field_1" id="field_1" value="" class="bp-suggestions form-control" cols="50" rows="10"></input>
          </div>
          <div class="form-group">
            <label class="control-label" for="inputNormal">Email</label>
            <input type="text" name="signup_email" id="signup_email" class="bp-suggestions form-control" cols="50" rows="10"></input>
          </div>
          <div class="form-group">
            <label class="control-label" for="inputNormal">Password</label>
            <input type="password" name="signup_password" id="signup_password" value="" class="bp-suggestions form-control" cols="50" rows="10" ></input>
          </div>
          <div class="form-group soninpt">
            <label class="control-label" for="inputNormal">About</label>
            <input type="text" name="field_2" id="field_2" class="bp-suggestions form-control" cols="50" rows="10"></input>
          </div>
          <input type="submit" name="signup_submit" id="signup_submit" value="Sign Up" class="girisbtn"  />
        </form>

        <button id="moveright">Login</button>
      </div>
    </div>

    <div class="right">
      <div id="ic">
        <h2>Login</h2>
        <p>Synth polaroid bitters chillwave pickled. Vegan disrupt tousled.</p>
        <form name="login-form" id="girisyap" id="sidebar-user-login" method="post" action="MainPage">

          <div class="form-group">
            <label class="control-label" for="inputNormal">Username</label>
            <input type="text" name="log" class="bp-suggestions form-control" cols="50" rows="10" ></input>
          </div>
          <div class="form-group soninpt">
            <label class="control-label" for="inputNormal">Password</label>
            <input type="password" name="pwd" class="bp-suggestions form-control" cols="50" rows="10"></input>
          </div>
          <input type="submit" value="Login" class="girisbtn" tabindex="100" />
        </form>

        <button id="moveleft">Sign Up</button>
      </div>
    </div>

  </div>
</div>

</body>
<%--<script src="${pageContext.request.contextPath}/resources/js/beerTitlePage.js"></script>--%>
<script src="${pageContext.request.contextPath}/resources/js/login.js"></script>
</html>
