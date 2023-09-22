<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>

<div class="modal fade" id="forgotModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel">아이디/비밀번호 찾기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#ID" role="tab" aria-controls="pills-home" aria-selected="true">아이디 찾기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#Password" role="tab" aria-controls="pills-profile" aria-selected="false">비밀번호 찾기</a>
          </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
          <div class="tab-pane fade show active" id="ID" role="tabpanel" aria-labelledby="pills-home-tab">
            <!-- content for ID find -->
            <form action="${path}/forgotID.do" method="post">
              <div class="form-group">
              	<input type="radio" class="memChoice" name="choice" value="seller">판매자
			  	<input type="radio" class="memChoice" name="choice" value="user" checked>구매자
                <label for="name">이름:</label>
                <input type="text" class="form-control" id="name" placeholder="이름 입력" name="name" required>
              </div>
              <div class="form-group">
                <label for="contact">연락처:</label>
                <input type="text" class="form-control" id="contact" placeholder="연락처 입력" name="contact" required>
              </div>
              <button type="submit" class="btn btn-primary">아이디 찾기</button>
            </form>
          </div>
          <div class="tab-pane fade" id="Password" role="tabpanel" aria-labelledby="pills-profile-tab">
            <!-- content for password find -->
            <form action="${path}/forgotPWD.do" method="post">
              <div class="form-group">
                <input type="radio" class="memChoice" name="choice" value="seller">판매자
			  	<input type="radio" class="memChoice" name="choice" value="user" checked>구매자
                <label for="name">이름:</label>
                <input type="text" class="form-control" id="name" placeholder="이름 입력" name="name" required>
              </div>
              <div class="form-group">
                <label for="id">아이디:</label>
                <input type="text" class="form-control" id="id" placeholder="아이디 입력" name="id" required>
              </div>
              <div class="form-group">
                <label for="contact">연락처:</label>
                <input type="text" class="form-control" id="contact" placeholder="연락처 입력" name="contact" required>
              </div>
              <button type="submit" class="btn btn-primary">비밀번호 찾기</button>
            </form>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>