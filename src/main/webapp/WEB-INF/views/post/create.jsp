<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ include file="../base/top.jsp" %>
<%@ include file="../base/navbar.jsp" %>
<%@ include file="../base/title.jsp" %>
<%@ include file="../base/message.jsp" %>

<%-- 페이지 내용 --%>
<div class="row">
    <div class="col-12">
        <%-- 게시글 등록 --%>
        <form id="createForm" action="/posts/create" method="POST" enctype="multipart/form-data">
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
                        <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
                    </div>
                    <%--// 제목 --%>

                    <%-- 내용 --%>
                    <div class="mb-3">
                        <label for="content" class="form-label">내용<span class="text-danger">*</span></label>
                        <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요" required></textarea>
                    </div>
                    <%--// 내용 --%>

                    <%-- 작성자 --%>
                    <div class="mb-3">
                        <label for="username" class="form-label">작성자<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="작성자를 입력하세요" required>
                    </div>
                    <%--// 작성자 --%>

                    <%-- 비밀번호 --%>
                    <div class="mb-3">
                        <label for="password" class="form-label">비밀번호<span class="text-danger">*</span></label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
                    </div>     
                    <%--// 비밀번호 --%>  
                    
                    <%-- 첨부파일 --%>
                    <div class="mb-3">
                        <label for="uploadFile" class="form-label">첨부 파일</label>
                        <input type="file" class="form-control" id="uploadFile" name="uploadFile" accept="*/*">
                        <small class="form-text text-muted">파일 크기는 10MB 이하만 가능합니다.</small>
                    </div>
                    <%--// 첨부파일 --%>
                </div>
                <%-- card-body --%>

                <%-- card-footer --%>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">등록</button>
                    <a href="/posts" class="btn btn-secondary">취소</a>
                </div>
                <%--// card-footer --%>
            </div>
        </form>
        <%--// 게시글 등록 --%>
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
