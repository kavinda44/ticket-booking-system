<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home of Football</title>
	<script src="script.js" defer></script>
</head>
<body>
	<jsp:include page="header.jsp"/>	
    <div class="carousel-container">
        <div class="qualifier">
            <h1>FIFA World Cup 26™ Qualifiers</h1>
            <p>Find out which nations from the world will qualify for 2026’s showpiece tournament.</p>
            <a href="seats.jsp">FOLLOW THE ACTION</a>
        </div>
        <div class="carousel" data-carousel>
            <button class="carousel-button prev" data-carousel-button="prev">&#129168;</button>
            <button class="carousel-button next" data-carousel-button="next">&#129170;</button>
            <nav data-slides>
                <a class="slide" href="https://www.fifa.com/fifaplus/en/tournaments/mens/fifa-club-world-cup/saudi-arabia-2023" data-active><img src="Pictures/FIFA_Club_World_Cup.png"></a>
                <a class="slide" href="https://www.fifa.com/fifaplus/en/the-best-fifa-football-awards/articles/the-best-2023-voting-opens-september-14"><img src="Pictures/THE BEST.png"></a>
                <a class="slide" href="https://www.fifa.com/legal/media-releases/fifa-international-transfer-snapshot-confirms-record-breaking-figures"><img src="Pictures/ITSS.png"></a>
            </nav>
        </div>
    </div>
    <div class="countries">
        <h1>32 TEAMS, ONE DREAM</h1>
        <div class="country">
            <img src="Countries/Argentina.png">
            <img src="Countries/Australia.png">
            <img src="Countries/Belgium.png">
            <img src="Countries/Brazil.png">
            <img src="Countries/Cameroon.png">
            <img src="Countries/Canada.png">
            <img src="Countries/Costa_Rica.png">
            <img src="Countries/Croatia.png">
            <img src="Countries/Denmark.png">
            <img src="Countries/Ecuador.png">
            <img src="Countries/England.png">
            <img src="Countries/France.png">
            <img src="Countries/Germany.png">
            <img src="Countries/Ghana.png">
            <img src="Countries/Iran.png">
            <img src="Countries/Japan.png">
            <img src="Countries/Mexico.png">
            <img src="Countries/Morocco.png">
            <img src="Countries/Netherlands.png">
            <img src="Countries/Poland.png">
            <img src="Countries/Portugal.png">
            <img src="Countries/Qatar.png">
            <img src="Countries/Saudi_Arabia.png">
            <img src="Countries/Senegal.png">
            <img src="Countries/Serbia.png">
            <img src="Countries/South_Korea.png">
            <img src="Countries/Spain.png">
            <img src="Countries/Switzerland.png">
            <img src="Countries/Tunisia.png">
            <img src="Countries/United_States.png">
            <img src="Countries/Uruguay.png">
            <img src="Countries/Wales.png">
        </div>
    </div>
    <div class="mechandise">
        <h1>FIFA Store</h1>
        <p>Explore our new home for everything associated with FIFA Classics. Here you can find apparel from some of the most beloved World Cups of all time. Embroided FIFA Classic clothing ranges with t-shirts, jackets and more...</p>
        <a href="https://store.fifa.com/en-us?utm_source=partner&utm_medium=fifa-plus&utm_campaign=top+navigation">SHOP NOW</a>
    </div>
    <jsp:include page="footer.jsp"/>	
</body>
</html>