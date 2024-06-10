<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FIFA 26™ Qualifiers</title>
<link rel="stylesheet" href="matches.css">
<script src="script.js" defer></script>
</head>
<body>
	<jsp:include page="header.jsp"/>	
	<div class="matches">
        <h1>FIFA World Cup 26™ Qualifiers</h1>
        <div class="carousel" data-carousel>
            <button class="carousel-button prev" data-carousel-button="prev">&#129168;</button>
            <button class="carousel-button next" data-carousel-button="next">&#129170;</button>
            <nav data-slides>
                <a class="slide" data-active><img src="Pictures/ENGvsARG.png"></a>
                <a class="slide" ><img src="Pictures/FRAvsSPA.png"></a>
                <a class="slide" ><img src="Pictures/PORvsGER.png"></a>
                <a class="slide" ><img src="Pictures/BRAvsCRO.png"></a>
            </nav>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>	
</body>
</html>