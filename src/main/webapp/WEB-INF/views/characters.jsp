<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>캐릭터 정보</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-4">
    <h2>이터널 리턴 캐릭터 목록</h2>
    <table class="table table-bordered">
        <tr>
            <th>이름</th>
            <th>역할</th>
            <th>난이도</th>
            <th>설명</th>
            <th>이미지</th>
            <th>관리</th>
        </tr>
        <c:forEach var="character" items="${characters}">
            <tr>
                <td>${character.name}</td>
                <td>${character.role}</td>
                <td>${character.difficulty}</td>
                <td>${character.description}</td>
                <td><img src="${character.imageUrl}" width="50"></td>
                <td>
                    <form action="/characters/delete" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${character.id}">
                        <button class="btn btn-danger btn-sm">삭제</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <!-- 캐릭터 추가 -->
    <h4>새로운 캐릭터 추가</h4>
    <form action="/characters/add" method="post">
        <input type="text" name="name" placeholder="캐릭터 이름">
        <input type="text" name="role" placeholder="역할">
        <input type="text" name="difficulty" placeholder="난이도">
        <input type="text" name="description" placeholder="설명">
        <input type="text" name="imageUrl" placeholder="이미지 URL">
        <button type="submit" class="btn btn-primary">추가</button>
    </form>
</div>

</body>
</html>
