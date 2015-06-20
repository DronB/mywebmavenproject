<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="jumbotron">
                <h1>Мои объявления</h1>
                <h2>Текущий пользователь: ${current.name}</h2>
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
                                    
                                <form action="<c:url value="/announcements/delete" />" method="post" >    
                                    <input type="text" name="id" value="${item.id}" hidden="hidden" />
                                    <input class="btn btn-success" type="submit" value="Удалить"/>
                                </form>
                                    
                            </div>    
                        </c:forEach>             

                    </div>
                </div>
            </div>
        </div>

    </tiles:putAttribute>
</tiles:insertDefinition>