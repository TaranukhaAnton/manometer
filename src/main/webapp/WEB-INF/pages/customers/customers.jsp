<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script type="text/javascript" src="../js/local/customerList.js"></script>
<script type="text/javascript" src="../js/jquery.deserialize.js"></script>

<a href="edit">Добавить предприятие</a><br>
<a href="javascript:void(openFilterWindow())">Фильтр</a><br>
<a href="javascript:void(printBookingList())">Печать</a><br>
<br>
<br>
<display:table name="listCustomer" id="row"
               requestURI="./"     keepStatus="true"
               excludedParams="method" requestURIcontext="false" pagesize="24"
               sort="list" class="simple" defaultsort="3">

    <display:column title="Ст" sortable="true" class="bool2">
        <c:if test="${row.status}">
            <img src="../images/bullet_done.png" />
        </c:if>
    </display:column>
    <display:column title="Нов" sortable="true" class="bool2"  >
        <c:if test="${row.actual}">
            <img src="../images/bullet_done.png" />
        </c:if>
    </display:column>

    <display:column property="shortName" title="кор название" url="/customers/edit" paramId="id" paramProperty="id" sortable="true"/>
    <display:column property="branchString" title="отр"/>
    <display:column property="person.login" title="спец. OCO"/>
    <display:column property="nomList" title="№ списка"/>
    <display:column property="prospect" title="Потенциал"/>
</display:table>


<div id="customers-filter-form" title="Фильтр">
    <form id="customerFilterForm" action="filter" method="post">
        <input type="hidden" name="id">
        <table>
            <tr>
                <td><input name="branches" value="1" type="checkbox"></td>
                <td>&nbsp;про</td>
                <td>&nbsp; &nbsp; </td>
                <td><input name="branches" value="2" type="checkbox"></td>
                <td>&nbsp;аэс</td>
            </tr>

            <tr>
                <td><input name="branches" value="3" type="checkbox"></td>
                <td>&nbsp;энр</td>
                <td>&nbsp; &nbsp; </td>
                <td><input name="branches" value="4" type="checkbox"></td>
                <td>&nbsp;мет</td>
            </tr>

            <tr>
                <td><input name="branches" value="5" type="checkbox"></td>
                <td>&nbsp;доб</td>
                <td>&nbsp; &nbsp;</td>
                <td><input name="branches" value="6" type="checkbox"></td>
                <td>&nbsp;нгу</td>
            </tr>

            <tr>
                <td><input name="branches" value="7" type="checkbox"></td>
                <td>&nbsp;хим</td>
                <td>&nbsp; &nbsp; </td>
                <td><input name="branches" value="8" type="checkbox"></td>
                <td>&nbsp;маш</td>
            </tr>

            <tr>
                <td><input name="branches" value="9" type="checkbox"></td>
                <td>&nbsp;стр</td>
                <td>&nbsp; &nbsp; </td>
                <td><input name="branches" value="10" type="checkbox"></td>
                <td>&nbsp;ком</td>
            </tr>


        </table>


    </form>
</div>


</body>
</html>