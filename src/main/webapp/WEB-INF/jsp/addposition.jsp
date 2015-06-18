<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="row">
                <div class="text-center center-block" style="width: 300px">
                    <div >
                        <form action="<c:url value="/announcements/newposition" />" method="post" accept-charset="utf-8"  >
                           
                            <div class="form-group">
                                <label for="category_id">Категории: </label><br/>
                                <select name="category_id" class="form-control">
                                    <c:forEach items="${allcategory}" var="cat">
                                       <option value="${cat.id}">${cat.name}</option>
                                    </c:forEach> 
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="name">Наименование позиции: </label><input class="form-control" type="text" name="name" />
                            </div>
                            
                            <div class="form-group">
                                <label for="description">Описание: </label>
                                <%--<input class="form-control" type="text" name="description" /> --%>
                                <textarea class="form-control" rows="10" name="description"></textarea>
                            </div>
                            
                            <div class="form-group">
                                <label for="price">Стоимость: </label><input class="form-control" type="text" name="price" />
                            </div>
                                                        
                            <div class="form-group">
                                <label for="address">Адрес(контакты): </label><input class="form-control" type="text" name="address" />
                            </div>
                            <div class="form-group" hidden="hidden">
                                <label for="user">User: </label><input class="form-control" type="text" name="user" value="${current.name}"  />
                            </div>
                            <div class="form-group" hidden="hidden">
                                <label for="user_id">User_id: </label><input class="form-control" type="text" name="user_id" value="${current.id}" />
                            </div>
                            
                            <input class="btn btn-success" type="submit" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>