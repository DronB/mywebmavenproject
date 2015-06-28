<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="jumbotron">
                <h1>${current.name}'s Profile</h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Выбранный пользователь</h3>
                        </div>
                        <c:forEach items="${user}" var="item">
                        <div class="panel-body">
                            <div>${item.name}</div>
                            <div>${item.email}</div>
                        </div>
                        <form action="<c:url value="/user/delete" />" method="post" >    
                                    <input type="text" name="id" value="${item.id}" hidden="hidden" />
                                    <input class="btn btn-success" type="submit" value="Удалить"/>
                        </form>
                        </c:forEach>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Текущий пользователь</h3>
                        </div>
                        <div class="panel-body">
                            <div>${current.name}</div>
                            <div>${current.email}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>