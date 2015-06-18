<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
    <div class="container">

        <ul class="nav navbar-nav">
            <c:if test = "${pageContext.request.userPrincipal.name == null}" >
                <li><a href="<c:url value="/user/registration" />">Registration</a></li>
                <li><a href="<c:url value="/user/login" />"> Login</a> </li>  
            </c:if> 

            <c:if test = "${pageContext.request.userPrincipal.name !=null}" >
                <li><a href="<c:url value="/announcements/allcategory" />">Все объявления</a></li>
                <li><a href="<c:url value="/announcements/myannouncement" />">Мои объявления</a></li>
                <li><a href="<c:url value="/announcements/addposition" />">Добавить позицию</a></li>
                <li><a href="<c:url value="/user/show" />">Профайл</a></li>
                <li><a href="<c:url value="/user/logout" />">Выйти</a></li>
            </c:if> 
         
        </ul>
    </div>
</nav>