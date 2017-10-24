<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="common/header.jspf" %>
<section id="categories" class= "centeredPanel">

        <section class="category">
            <h2>Dairy</h2>
            <c:url var="dairyImgSrc" value="/img/dairy.png" />
            <c:url var="dairyUrl" value="/productList?categoryId=1"/>
            <a href="${dairyUrl}"><img src="${dairyImgSrc}" alt="Dairy"></a>
        </section>
        
        <section class="category">
            <h2>Meat</h2>
            <c:url var="vegetablesImgSrc" value="/img/vegetables.png" />
            <c:url var="vegetablesUrl" value="/productList?categoryId=3"/>
            <a href="${vegetablesUrl}"><img src="${vegetablesImgSrc}" alt="Vegetables"></a>    
        </section>

        <section class="category">
            <h2>Fruit/Vegetable</h2>
            <c:url var="fruitImgSrc" value="/img/fruit.png" />
            <c:url var="fruitUrl" value="/productList?categoryId=2"/>
            <a href="${fruitUrl}"><img src="${fruitImgSrc}" alt="Fruit"></a>
        </section>

        <section class="category">
            <h2>Bread</h2>
            <c:url var="breadImgSrc" value="/img/bread.png" />
            <c:url var="breadUrl" value="/productList?categoryId=5"/>
            <a href="${breadUrl}"><img src="${breadImgSrc}" alt="Bread"></a>
        </section>

        <section class="category">
            <h2>Other</h2>
            <c:url var="otherImgSrc" value="/img/other.png" />
            <c:url var="otherUrl" value="/productList?categoryId=4"/>
            <a href="${otherUrl}"><img src="${otherImgSrc}" alt="PicnicSupplies"></a>
        </section>
        
    </section>

<%@include file="common/footer.jspf" %>