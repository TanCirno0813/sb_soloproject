<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>게시글 수정</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .form-control:read-only {
            background-color: #e9ecef;
            cursor: not-allowed;
            color: #6c757d;
            border-color: #ced4da;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h2 class="card-title h4 mb-0">게시글 수정</h2>
                </div>
                <div class="card-body">
                    <form action="/posts/update" method="post">
                        <input type="hidden" name="id" value="${post.id}">
                        <input type="hidden" name="author" value="${post.author}">
                        <input type="hidden" name="createdAt" value="${post.createdAt}">
                        
                        <div class="mb-3">
                            <label for="title" class="form-label">제목</label>
                            <input type="text" class="form-control" id="title" name="title" value="${post.title}" required>
                        </div>
                        <div class="mb-3">
                            <label for="author" class="form-label">작성자</label>
                            <input type="text" class="form-control" id="author" value="${post.author}" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="content" class="form-label">내용</label>
                            <textarea class="form-control" id="content" name="content" rows="10" required>${post.content}</textarea>
                        </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <a href="/posts/${post.id}" class="btn btn-secondary me-2">취소</a>
                            <button type="submit" class="btn btn-primary">수정완료</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html> 