<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="ko_KR" data-locale="ko_KR">
<head>
    <title>이터널 리턴</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="Eternal Return 무료로 플레이하기! 이터널 리턴은 쿼터뷰 형식의 전투스타일과 배틀로얄, 그리고 독특한 크래프팅 시스템이 합쳐진 신감각 서바이벌게임입니다.">
    <meta name="keywords" content="ERBS, ER, 이터널 리턴, 블랙서바이벌, 카카오 게임, 스팀, Steam"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
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

        .main-content {
            padding-top: 76px; /* 네비게이션 바 높이만큼 여백 추가 */
            min-height: calc(100vh - 200px); /* 푸터 높이를 제외한 최소 높이 */
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
            <div class="ms-auto">
                <a href="https://store.steampowered.com/app/1049590" class="btn btn-primary" target="_blank">지금 플레이하기</a>
            </div>
        </div>
    </div>
</nav>

<div class="main-content"/>