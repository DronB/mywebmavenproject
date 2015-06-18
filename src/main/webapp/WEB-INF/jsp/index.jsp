<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="jumbotron">
                <h1>Добро пожаловать на сайт объявлений!</h1>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>