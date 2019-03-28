<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<jsp:include page="headTag.jsp"/>
<link href="<c:url value="/resources/css/stars(rating).css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/beersPage.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/deleteButton.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/addFile.css" />" rel="stylesheet">

<body>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js" defer></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/addFile.js" defer></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/beers.js" defer></script>--%>

<%--Navbar--%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01"
            aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
        </ul>
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>


<%--Carousel
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/shop2.jpg"
                 alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/beerP.jpg"
                 alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100 " src="${pageContext.request.contextPath}/resources/images/login5.jpg"
                 alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div> --%>



<div class="container">
    <div class="jumbotron bg-light">
        <h1>Beer Rating</h1>
            <button class="pulse addB" onclick="addRow()">ADD BEER</button>
        </div>
</div>
</div>

<div class="container marketing">

    <!-- Three columns of text below the carousel -->

    <c:forEach items="${beers}" var="beer">
    <div class="row shadow p-3 mb-5 bg-light rounded">
        <jsp:useBean id="beer" scope="page" type="ru.golyshkin.rankingFeed.model.Feed"/>
        <div class="col-lg-3 border-dark">
            <img class="img-circle" data-src="holder.js/140x140" alt="140x140"
                 src="${pageContext.request.contextPath}/resources/images/beers/${beer.photoUrl}">
            <form>
                <div class="stars">
                    <input type="radio" name="star" class="star-1" id="star-1-${beer.name}"/>
                    <label class="star-1" for="star-1-${beer.name}">1</label>
                    <input type="radio" name="star" class="star-2" id="star-2-${beer.name}"/>
                    <label class="star-2" for="star-2-${beer.name}">2</label>
                    <input type="radio" name="star" class="star-3" id="star-3-${beer.name}"/>
                    <label class="star-3" for="star-3-${beer.name}">3</label>
                    <input type="radio" name="star" class="star-4" id="star-4-${beer.name}"/>
                    <label class="star-4" for="star-4-${beer.name}">4</label>
                    <input type="radio" name="star" class="star-5" id="star-5-${beer.name}"/>
                    <label class="star-5" for="star-5-${beer.name}">5</label>
                    <span></span>
                </div>
                <script>
                    function returnCheck(id, ranking) {
                        return (id == ranking);
                    }

                    document.getElementById('star-1-${beer.name}').checked = returnCheck(1, ${beer.ranking});
                    document.getElementById('star-2-${beer.name}').checked = returnCheck(2, ${beer.ranking});
                    document.getElementById('star-3-${beer.name}').checked = returnCheck(3, ${beer.ranking});
                    document.getElementById('star-4-${beer.name}').checked = returnCheck(4, ${beer.ranking});
                    document.getElementById('star-5-${beer.name}').checked = returnCheck(5, ${beer.ranking});
                </script>
            </form>
        </div>
        <div class="col-lg-6">
            <h2>${beer.name}</h2>
            <h4><code>${beer.price} &#8381;</code></h4>
            <p>${beer.description}</p>
        </div>
        <div class="col-lg-3">
            <button class="offset editB" onclick="editRow(${beer.id});">EDIT</button>
            <form action="beersPage/delete/${beer.id}">
                <button class="offset deleteB">DELETE</button>
            </form>
            </div>
        </div>
        <!-- /.row -->
        </c:forEach>
    </div>

    <%--Modal--%>
    <div class="modal fade" tabindex="-1" id="addRow">
        <div class="modal-dialog">
            <form method="post" action="beersPage/upload" autocomplete="off" id="detailsForm"
                  enctype="multipart/form-data">
                <div class="modal-content">

                    <div class="modal-header">
                        <h4 class="modal-title">Add new beer</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">
                        <label for="filePhoto" class="col-form-label">Photo</label>
                        <input type="file" name="filePhoto" id="filePhoto" class="input-file">
                        <label for="filePhoto" class="btn btn-tertiary js-labelFile">
                            <i class="icon fa fa-check"></i>
                            <span class="js-fileName">Choose a file</span>
                        </label>

                        <%--<div class="form-group">--%>
                            <%--<label for="filePhoto" class="col-form-label">Photo</label>--%>
                            <%--<input type="file" class="form-control" id="filePhoto" name="filePhoto"--%>
                                   <%--placeholder="filePhoto">--%>
                        <%--</div>--%>

                        <div class="form-group">
                            <label for="name" class="col-form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name"
                                   placeholder="Name">
                        </div>

                        <div class="form-group">
                            <label for="description" class="col-form-label">Description</label>
                            <input type="text" class="form-control" id="description" name="description"
                                   placeholder="Description">
                        </div>

                        <div class="form-group">
                            <label for="price" class="col-form-label">Price</label>
                            <input type="number" class="form-control" id="price" name="price"
                                   placeholder="Price">
                        </div>
                        <div class="form-group">
                            <label for="price" class="col-form-label">Ranking</label>
                            <input type="number" min="1" max="5" class="form-control" id="ranking" name="ranking"
                                   placeholder="Ranking">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                            <span class="fa fa-close"></span>
                            Cancel
                        </button>
                        <button type="submit" class="btn btn-primary">
                            <span class="fa fa-check"></span>
                            Create
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" tabindex="-1" id="editRow">
        <div class="modal-dialog">
            <form method="post" action="beersPage/edit" autocomplete="off" id="detailsFormEdit">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Edit beer info</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="idAdd" name="id">

                        <div class="col-lg-3 border-dark">
                            <img class="img-circle" id="EditphotoUrl" data-src="holder.js/140x140" alt="140x140">
                        </div>

                        <div hidden class="form-group">
                            <label for="name" class="col-form-label">Photo</label>
                            <input type="text" class="form-control" id="photoUrlAdd" name="photoUrl"
                                   placeholder="photoUrl">
                        </div>

                        <div class="form-group">
                            <label for="nameAdd" class="col-form-label">Name</label>
                            <input type="text" class="form-control" id="nameAdd" name="name"
                                   placeholder="Name">
                        </div>

                        <div class="form-group">
                            <label for="descriptionAdd" class="col-form-label">Description</label>
                            <input type="text" class="form-control" id="descriptionAdd" name="description"
                                   placeholder="Description">
                        </div>

                        <div class="form-group">
                            <label for="priceAdd" class="col-form-label">Price</label>
                            <input type="text" class="form-control" id="priceAdd" name="price"
                                   placeholder="Price">
                        </div>
                        <div class="form-group">
                            <label for="price" class="col-form-label">Ranking</label>
                            <input type="number" min="1" max="5" class="form-control" id="rankingAdd" name="ranking"
                                   placeholder="Price">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                            <span class="fa fa-close"></span>
                            Cancel
                        </button>
                        <button type="submit" class="btn btn-primary">
                            <span class="fa fa-check"></span>
                            Save Changes
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
