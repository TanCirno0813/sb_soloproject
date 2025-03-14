<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="common/header.jsp" %>

<style>
    .character-card {
        cursor: pointer;
        transition: transform 0.2s;
        margin-bottom: 2rem;
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        overflow: hidden;
        width: 122px; /* 이미지 너비에 맞춤 */
        margin: 10px;
        display: inline-block;
        vertical-align: top;
    }
    
    .character-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }
    
    .character-image {
        width: 122px; /* 이미지 실제 너비 */
        height: 160px; /* 이미지 실제 높이 */
        object-fit: contain; /* 이미지 비율 유지 */
        border-radius: 10px 10px 0 0;
        background-color: #f8f9fa; /* 이미지 배경색 */
    }
    
    .character-name {
        margin-top: 0.5rem;
        font-size: 0.9rem;
        font-weight: bold;
        text-align: center;
        color: #333;
        padding: 0 5px;
    }
    
    .role-badge {
        position: absolute;
        top: 5px;
        right: 5px;
        background: rgba(0,0,0,0.7);
        color: white;
        padding: 3px 6px;
        border-radius: 10px;
        font-size: 0.7rem;
    }
    
    .difficulty-stars {
        text-align: center;
        color: #ffd700;
        margin-bottom: 0.5rem;
        font-size: 0.8rem;
    }

    .no-characters {
        text-align: center;
        padding: 3rem;
        background: #f8f9fa;
        border-radius: 10px;
        margin: 2rem 0;
    }

    .character-info {
        padding: 0.5rem;
    }

    .characters-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 20px;
    }

    /* 모달 내 이미지 스타일 수정 */
    .modal-character-image {
        width: 122px;
        height: 160px;
        object-fit: contain;
        margin: 0 auto;
        display: block;
    }

    .modal-body .row {
        align-items: center;
    }
</style>

<!-- 메인 컨텐츠 -->
<div class="container my-5">
    <h1 class="text-center mb-5">캐릭터</h1>
    
    <!-- 캐릭터 그리드 -->
    <div class="characters-container">
        <c:choose>
            <c:when test="${empty characters}">
                <div class="no-characters">
                    <h3>등록된 캐릭터가 없습니다</h3>
                    <p class="text-muted">아직 캐릭터가 등록되지 않았습니다.</p>
                    <p>
                        <a href="/characters/add" class="btn btn-primary mt-3">새로운 캐릭터 추가</a>
                    </p>
                </div>
            </c:when>
            <c:otherwise>
                <c:forEach var="character" items="${characters}">
                    <div class="character-card" data-bs-toggle="modal" data-bs-target="#characterModal${character.getId()}">
                        <div class="position-relative">
                            <img src="${character.imageUrl}" class="character-image" alt="${character.name}">
                            <span class="role-badge">${character.role}</span>
                        </div>
                        <div class="character-info">
                            <div class="character-name">${character.name}</div>
                            <div class="difficulty-stars">
                                <c:forEach begin="1" end="5" var="i">
                                    <i class="fas fa-star${i <= character.difficulty ? '' : '-o'}" aria-hidden="true"></i>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 캐릭터 상세 모달 -->
                    <div class="modal fade" id="characterModal${character.id}" tabindex="-1">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">${character.name}</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-4 text-center">
                                            <img src="${character.imageUrl}" class="modal-character-image" alt="${character.name}">
                                        </div>
                                        <div class="col-md-8">
                                            <h6 class="mb-3">역할: <span class="badge bg-primary">${character.role}</span></h6>
                                            <h6 class="mb-3">난이도: 
                                                <c:forEach begin="1" end="5" var="i">
                                                    <i class="fas fa-star${i <= character.difficulty ? '' : '-o'}" aria-hidden="true"></i>
                                                </c:forEach>
                                            </h6>
                                            <h6 class="mb-2">캐릭터 설명:</h6>
                                            <p>${character.description}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <c:if test="${isAdmin}">
                                        <form action="/characters/delete" method="post" style="display:inline;">
                                            <input type="hidden" name="id" value="${character.id}">
                                            <button class="btn btn-danger">삭제</button>
                                        </form>
                                    </c:if>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>

    <p>
        <div class="text-center mt-4">
            <a href="/characters/add" class="btn btn-primary">새로운 캐릭터 추가</a>
        </div>
    </p>
</div>

<%@ include file="common/footer.jsp" %>
