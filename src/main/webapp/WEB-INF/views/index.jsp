<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="/">이터널 리턴</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/characters">캐릭터</a></li>
                <li class="nav-item"><a class="nav-link" href="/posts">공략 게시판</a></li>

            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section (게임 소개 배너) -->
<header class="hero-section">
    <div class="container text-center">
        <h1 class="display-3">이터널 리턴</h1>
        <p class="lead">전략적 생존 배틀 아레나</p>
        <a href="/characters" class="btn btn-primary btn-lg">캐릭터 보기</a>
    </div>
</header>

<!-- 게임 특징 섹션 -->
<section class="container mt-5">
    <h2 class="text-center">이터널 리턴의 특징</h2>
    <div class="row text-center mt-4">
        <div class="col-md-4">
            <img src="/images/moba.png" class="feature-icon">
            <h4>MOBA + 배틀로얄</h4>
            <p>최대 18명의 플레이어가 싸우는 전투!</p>
        </div>
        <div class="col-md-4">
            <img src="/images/characters.png" class="feature-icon">
            <h4>50명 이상의 캐릭터</h4>
            <p>다양한 스킬과 전략적 플레이 가능</p>
        </div>
        <div class="col-md-4">
            <img src="/images/items.png" class="feature-icon">
            <h4>아이템 제작 시스템</h4>
            <p>필요한 아이템을 모아 무기를 강화하세요</p>
        </div>
    </div>
</section>

<!-- 게임 트레일러 -->
<section class="container mt-5 text-center">
    <h2>🎥 게임 트레일러</h2>
    <iframe width="80%" height="400" src="https://www.youtube.com/embed/YOUR_TRAILER_URL" frameborder="0" allowfullscreen></iframe>
</section>

<!-- 다운로드 섹션 -->
<section class="download-section text-center mt-5">
    <h2>🎮 게임 다운로드</h2>
    <p>이터널 리턴을 지금 바로 플레이하세요!</p>
    <a href="https://store.steampowered.com/app/1049590/Eternal_Return/" class="btn btn-success btn-lg">Steam에서 다운로드</a>
</section>

<!-- 푸터 -->
<footer class="footer mt-5 py-3 bg-dark text-light text-center">
    <p>© 2025 이터널 리턴 | 모든 권리 보유</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
