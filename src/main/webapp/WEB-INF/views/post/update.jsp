<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ include file="../base/top.jsp" %>
<%@ include file="../base/navbar.jsp" %>
<%@ include file="../base/title.jsp" %>
<%@ include file="../base/message.jsp" %>

<%-- 페이지 내용 --%>
<div class="row">
    <div class="col-12">
        <%-- 게시글 수정 --%>
        <form id="updateForm" action="/posts/${post.id}/update" method="POST" enctype="multipart/form-data">
            <div class="card mb-3">
                <%-- card-header --%>
                <div class="card-header">
                    <span class="text-danger">*</span> 표시는 필수항목입니다.
                </div>
                <%--// card-header --%>

                <%-- card-body --%>
                <div class="card-body">   
                    <%-- 제목 --%>           
                    <div class="mb-3">
                        <label for="title" class="form-label">제목<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required value="${post.title}">
                    </div>
                    <%--// 제목 --%>

                    <%-- 내용 --%>
                    <div class="mb-3">
                        <label for="content" class="form-label">내용<span class="text-danger">*</span></label>
                        <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요" required>${post.content}</textarea>
                    </div>
                    <%--// 내용 --%>

                    <%-- 작성자 --%>
                    <div class="mb-3">
                        <label for="username" class="form-label">작성자<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="작성자를 입력하세요" required value="${post.username}">
                    </div>
                    <%--// 작성자 --%>

                    <%-- 비밀번호 --%>
                    <div class="mb-3">
                        <label for="password" class="form-label">비밀번호<span class="text-danger">*</span></label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
                    </div>     
                    <%--// 비밀번호 --%>     
                    
                    <%-- 첨부파일 --%>
                    <c:if test="${not empty post.fileName}">
                        <div class="mb-3"> 
                            <div class="mb-2">  
                                <span>현재 파일: <a href="/posts/${post.id}/download">${post.originalFileName}</a></span>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="deleteFile" id="deleteFile" value="true">
                                <label class="form-check-label text-danger" for="deleteFile">
                                    파일 삭제
                                </label>
                            </div>
                        </div>
                    </c:if>
                    <div class="mb-3">
                        <label for="uploadFile" class="form-label">첨부 파일</label>
                        <input type="file" class="form-control" id="uploadFile" name="uploadFile" accept="*/*">
                        <small class="form-text text-muted">새 파일을 선택하면 기존 파일은 자동으로 삭제됩니다. 파일 크기는 10MB 이하만 가능합니다.</small>
                    </div>
                    <%--// 첨부파일 --%>
                </div>
                <%-- card-body --%>

                <%-- card-footer --%>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">수정</button>
                    <a href="/posts/${post.id}" class="btn btn-secondary">취소</a>
                </div>
                <%--// card-footer --%>
            </div>
        </form>
        <%--// 게시글 수정 --%>
    </div>
</div>
<%--// 페이지 내용 --%>

<%@ include file="../base/script.jsp" %>

<%-- script --%>
<script>
    /* 자바스크립트 */
</script>
<%--// script --%>

<%@ include file="../base/bottom.jsp" %>
