<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko_KR" data-locale="ko_KR">
<head>
    <title>이터널 리턴</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        .hero-section {
            position: relative;
            height: 100vh;
            overflow: hidden;
            color: white;
            display: flex;
            align-items: center;
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5));
        }
        
        .hero-section video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }
        
        .feature-icon {
            width: 80px;
            height: 80px;
            margin-bottom: 1rem;
        }
        
        .navbar {
            background: rgba(0,0,0,0.8) !important;
        }
        
        .download-section {
            background: #1a1a1a;
            padding: 4rem 0;
            color: white;
        }
        
        .footer {
            background: #0a0a0a;
            color: #666;
            padding: 3rem 0;
        }
        
        .social-media {
            background: #1a1a1a;
            padding: 2rem 0;
        }
        
        .social-media-icon {
            font-size: 2rem;
            color: white;
            margin: 0 1rem;
            transition: color 0.3s;
        }
        
        .social-media-icon:hover {
            color: #007bff;
        }
    </style>
</head>
<body>

<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/">
            <img src="https://cdn.playeternalreturn.com/images/frontpage/er-logo-white.png" height="30" alt="이터널 리턴">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">

                <li class="nav-item"><a class="nav-link" href="/characters">캐릭터</a></li>
                <li class="nav-item"><a class="nav-link" href="/posts">공략 게시판</a></li>

            </ul>
            <ul class="navbar-nav">
                <c:choose>
                    <c:when test="${empty sessionScope.loginMember}">
                        <li class="nav-item">
                            <a class="nav-link" href="/login">로그인</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/signup">회원가입</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <span class="nav-link">${sessionScope.loginMember}님 환영합니다</span>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/logout">로그아웃</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <div class="ms-auto">
                <a href="https://store.steampowered.com/app/1049590" class="btn btn-primary" target="_blank">지금 플레이하기</a>
            </div>
        </div>
    </div>
</nav>

<!-- 히어로 섹션 -->
<header class="hero-section">
    <video autoplay muted loop playsinline>
        <source src="https://cdn.playeternalreturn.com/video/210930/intro.mp4" type="video/mp4">
    </video>
    <div class="container text-center">
        <h1 class="display-2">이터널 리턴</h1>
        <p class="lead mb-4">Do Whatever It Takes To Survive</p>
        <a href="/about" class="btn btn-primary btn-lg">자세히 보기</a>
    </div>
</header>

<!-- 게임 특징 섹션 -->
<section class="container my-5 py-5">
    <h2 class="text-center mb-5">이터널 리턴의 특징</h2>
    <div class="row text-center">
        <div class="col-md-4 mb-4">
            <img src="/images/moba.png" class="feature-icon">
            <h4>MOBA + 배틀로얄</h4>
            <p>최대 18명의 플레이어가 싸우는 전투!</p>
        </div>
        <div class="col-md-4 mb-4">
            <img src="/images/characters.png" class="feature-icon">
            <h4>70명 이상의 캐릭터</h4>
            <p>다양한 스킬과 전략적 플레이 가능</p>
        </div>
        <div class="col-md-4 mb-4">
            <img src="/images/items.png" class="feature-icon">
            <h4>아이템 제작 시스템</h4>
            <p>필요한 아이템을 모아 무기를 강화하세요</p>
        </div>
    </div>
</section>
<!-- 게임 트레일러 섹션 -->
<section class="container mt-5 text-center">
    <h2>🎥 게임 트레일러</h2>
    <iframe width="80%" height="400" src="https://www.youtube.com/embed/YsqAkgk2XGo?si=ynMavyqhgIdV7ItL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</section>

<!-- 다운로드 섹션 -->
<section class="download-section text-center">
    <div class="container">
        <h2 class="mb-4">이터널 리턴을 플레이해보세요</h2>
        <p class="mb-4">쿼터뷰 형식의 전투 스타일과 배틀로얄, 독특한 크래프팅 시스템이 합쳐진 새로운 형태의 서바이벌 MOBA 게임</p>
        <a href="https://store.steampowered.com/app/1049590" class="btn btn-primary btn-lg" target="_blank">
            <i class="fab fa-steam me-2"></i>STEAM에서 다운로드
        </a>
    </div>
</section>

<!-- 소셜 미디어 섹션 -->
<section class="social-media text-center">
    <div class="container">
        <h4 class="text-white mb-4">소셜 미디어</h4>
        <div>
            <a href="https://discord.com/invite/eternalreturn" class="social-media-icon" target="_blank"><i class="fab fa-discord"></i></a>
            <a href="https://twitter.com/EternalReturnKR" class="social-media-icon" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="https://www.facebook.com/EternalReturnGame" class="social-media-icon" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="https://www.youtube.com/channel/UCEOaB76vS9RfiAwEzxB8QGw" class="social-media-icon" target="_blank"><i class="fab fa-youtube"></i></a>
        </div>
    </div>
</section>

<!-- 푸터 -->
<footer class="footer text-center">
    <div class="container">
        <img src="https://cdn.playeternalreturn.com/images/logo/logo-nimbleneuron.png" alt="Nimble Neuron" class="mb-4" height="30">
        <p class="mb-3">KDT 교육과정 이태하 포트폴리오</p>
        <p class="mb-3">본 웹페이지는 공식 페이지가 아니며, 모든 게임의 저작권 및 관련 지식재산권은 (주)님블뉴런(이하 “회사”)에 있습니다.</p>
        <p class="mb-3">COPYRIGHT ©2020 NIMBLE NEURON CORPORATION. ALL RIGHTS RESERVED.</p>
        <p class="small">PARTNERSHIP INQUIRIES: <a href="mailto:eternalreturn@nimbleneuron.com" class="text-white">eternalreturn@nimbleneuron.com</a></p>

    </div>
</footer>
</body>
</html>
