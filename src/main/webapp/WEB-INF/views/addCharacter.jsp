<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="common/header.jsp" %>

<style>
    .add-character-form {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
    }
    
    .form-preview-image {
        width: 122px;
        height: 160px;
        object-fit: contain;
        border: 1px solid #ddd;
        border-radius: 5px;
        margin-top: 10px;
    }
</style>

<div class="container my-5">
    <div class="add-character-form">
        <h2 class="text-center mb-4">새로운 캐릭터 추가</h2>
        
        <form action="/characters/add" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="name" class="form-label">캐릭터 이름</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            
            <div class="mb-3">
                <label for="role" class="form-label">역할</label>
                <select class="form-select" id="role" name="role" required>
                    <option value="">역할 선택</option>
                    <option value="전사">전사</option>
                    <option value="원거리딜러">원거리딜러</option>
                    <option value="암살자">암살자</option>
                    <option value="탱커">탱커</option>
                    <option value="서포터">서포터</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label for="difficulty" class="form-label">난이도</label>
                <select class="form-select" id="difficulty" name="difficulty" required>
                    <option value="">난이도 선택</option>
                    <option value="1">1 (쉬움)</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5 (어려움)</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label for="description" class="form-label">캐릭터 설명</label>
                <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
            </div>

            <div class="mb-3">
                <label for="imageUrl" class="form-label">캐릭터 이미지 URL</label>
                <input type="text" class="form-control" id="imageUrl" name="imageUrl" required 
                       placeholder="https://example.com/image.jpg">
                <small class="form-text text-muted">이미지의 URL을 입력해주세요 (122x160 권장)</small>
                <img id="imagePreview" class="form-preview-image mt-2" style="display: none;">
            </div>
            
            <div class="text-center mt-4">
                <button type="submit" class="btn btn-primary">캐릭터 추가</button>
                <a href="/characters" class="btn btn-secondary ms-2">취소</a>
            </div>
        </form>
    </div>
</div>

<script>
    // 이미지 URL 미리보기 기능
    document.getElementById('imageUrl').addEventListener('change', function(e) {
        const preview = document.getElementById('imagePreview');
        const imageUrl = this.value;
        
        if (imageUrl) {
            preview.src = imageUrl;
            preview.style.display = 'block';
        } else {
            preview.style.display = 'none';
        }
    });
</script>

<%@ include file="common/footer.jsp" %> 