<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">6 Shoppers Shop</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="/">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Shop</p>
        </div>
    </div>
</div>
<!-- Page Header End -->


<!-- Shop Start -->
<div class="container-fluid pt-5" style="display:flex; justify-content: center">
    <!-- Shop Product Start -->
    <div class="col-lg-9 col-md-12">
        <div class="row pb-3">
            <div class="col-12 pb-1">
                <div class="d-flex align-items-center justify-content-between mb-4">
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search by name">
                            <div class="input-group-append">
                                        <span class="input-group-text bg-transparent text-primary">
                                            <i class="fa fa-search"></i>
                                        </span>
                            </div>
                        </div>
                    </form>
                    <div class="dropdown ml-4">
                        <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false">
                            Sort by
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                            <a class="dropdown-item" href="#">Latest</a>
                            <a class="dropdown-item" href="#">Popularity</a>
                            <a class="dropdown-item" href="#">Best Rating</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <table id="datatablesSimple">
                        <tbody>
                        <c:forEach var="obj" items="${clist}">
                            <tr>
                                <td>
                                    <a href="#" data-toggle="modal" data-target="#target${obj.id}">
                                        <img id="item_img" src="/uimg/${obj.imgname}">
                                    </a>
                                </td>
                                <td>${obj.id}</td>
                                <td>${obj.name}</td>
                                <td><fmt:formatNumber type="number" pattern="###,###원" value="${obj.price}"/></td>
                                <td>${obj.category}</td>
                                <td>${obj.size_s}</td>
                                <td>${obj.size_m}</td>
                                <td>${obj.size_l}</td>
                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${obj.rdate}"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                    <%--                                        <c:forEach var="obj" items="${cpage.getlist()}">--%>
                    <%--                                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">--%>
                    <%--                                                <img class="img-fluid w-100" src="/uimg/${obj.imgname}" alt="">--%>
                    <%--                                            </div>--%>
                    <%--                                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">--%>
                    <%--                                                <a href="/item/get?id=${obj.id}">${obj.id}</a>--%>
                    <%--                                                <h6 class="text-truncate mb-3">${obj.name}</h6>--%>
                    <%--                                                <div class="d-flex justify-content-center">--%>
                    <%--                                                    <h6><fmt:formatNumber value="${obj.price}" type="currency" currencyCode="KRW"--%>
                    <%--                                                                          pattern="###,###원"/></h6>--%>
                    <%--                                                </div>--%>
                    <%--                                                <a><fmt:formatDate value="${obj.rdate}" pattern="yyyy-MM-dd"/></a>--%>
                    <%--                                            </div>--%>
                    <%--                                        </c:forEach>--%>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="/detail" class="btn btn-sm text-dark p-0"><i
                                class="fas fa-eye text-primary mr-1"></i>View
                            Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i
                                class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/product-2.jpg" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                        <div class="d-flex justify-content-center">
                            <h6>$123.00</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="/detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View
                            Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i
                                class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/product-3.jpg" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                        <div class="d-flex justify-content-center">
                            <h6>$123.00</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="/detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View
                            Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i
                                class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-12 pb-1">
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center mb-3">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- pagination start -->
                <div class="col text-center">
                    <ul class="pagination ">
                        <c:choose>
                            <c:when test="${cpage.getPrePage() != 0}">
                                <li>
                                    <a href="/item/allpage?pageNo=${cpage.getPrePage()}">Previous</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="disabled">
                                    <a href="#">Previous</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <c:forEach begin="${cpage.getNavigateFirstPage() }" end="${cpage.getNavigateLastPage() }"
                                   var="page">
                            <c:choose>
                                <c:when test="${cpage.getPageNum() == page}">
                                    <li class="active">
                                        <a href="/item/allpage?pageNo=${page}">${page }</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <a href="/item/allpage?pageNo=${page}">${page }</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>
                        <c:choose>
                            <c:when test="${cpage.getNextPage() != 0}">
                                <li>
                                    <a href="/item/allpage?pageNo=${cpage.getNextPage()}">Next</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="disabled">
                                    <a href="#">Next</a>
                                </li>
                            </c:otherwise>
                        </c:choose>

                    </ul>
                </div>
                <!-- pagination end -->
            </div>
        </div>
    </div>
    <!-- Shop Product End -->
</div>
</div>
<!-- Shop End -->
