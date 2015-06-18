<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate"> 
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="jumbotron">
                <h1>Доска объявлений</h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Категории</h3>
                        </div>
                        <div class="panel-body">
                            <ul>
                                <c:forEach items="${allcategory}" var="cat">
                                    <li><a class="button" href="<c:url value="/announcements/category/${cat.id}" />"> ${cat.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Объявления</h3>
                        </div>
                        <div class="panel-body">

                            <c:forEach items="${announcements}" var="item">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">${item.name}</h3>
                                    </div>
                                    <div class="panel-body">
                                        <span>${item.user}</span>
                                        <hr>
                                        <ul>
                                            <li>  <span>Стоимость:  ${item.price}</span> </li> 
                                            <li>  Описание: <textarea class="form-control" rows="5"  name="description">${item.description}</textarea> </li>
                                            <li>  Адрес(контакты): <textarea class="form-control" rows="3"  name="address">${item.address}</textarea> </li>
                                        </ul>   
                                    </div>
                                </div>    
                            </c:forEach>             

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </tiles:putAttribute>
</tiles:insertDefinition>
