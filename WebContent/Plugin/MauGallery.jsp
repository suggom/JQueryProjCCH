<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
      rel="stylesheet"
      href="<c:url value='/css/bootstrap.min.css'/>"
    />
<script>
	$(function(){});
</script>
</head>
<body>
	<div class="jumbotron jumbotron-fluid bg-info mb-0">
      <div class="container py-5 text-light">
        <h1 class="display-4">Mau Gallery</h1>
        <p class="lead">
          A simple images gallery, built with jQuery and bootstrap 4
        </p>
        <a
          class="btn btn-outline-light btn-lg"
          href="https://github.com/bakedbird/mauGallery"
          >GitHub</a
        >
      </div>
    </div>
    <div class="container py-3">
      <div class="gallery" style="display:none;">
        <img
          data-gallery-tag="women"
          class="gallery-item"
          src="https://images.pexels.com/photos/413727/pexels-photo-413727.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <div class="gallery-item h-100">
          <div
            class="bg-danger d-flex flex-column text-warning justify-content-center align-items-center h-100 w-100 p-3"
          >
            <p class="lead m-0">I have no tag!</p>
          </div>
        </div>
        <img
          data-gallery-tag="men"
          class="gallery-item"
          src="https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="coffee"
          class="gallery-item"
          src="https://images.pexels.com/photos/539432/pexels-photo-539432.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="men"
          class="gallery-item"
          src="https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="dogs"
          class="gallery-item"
          src="https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="women"
          class="gallery-item"
          src="https://images.pexels.com/photos/428338/pexels-photo-428338.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="dogs"
          class="gallery-item"
          src="https://images.pexels.com/photos/160846/french-bulldog-summer-smile-joy-160846.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <div class="gallery-item h-100">
          <div
            class="bg-warning d-flex flex-column text-dark justify-content-center align-items-center h-100 w-100 p-3"
          >
            <p class="lead m-0">You can't filter me!</p>
          </div>
        </div>
        <img
          data-gallery-tag="coffee"
          class="gallery-item"
          src="https://images.pexels.com/photos/434213/pexels-photo-434213.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="men"
          class="gallery-item"
          src="https://images.pexels.com/photos/373899/pexels-photo-373899.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="women"
          class="gallery-item"
          src="https://images.pexels.com/photos/1036621/pexels-photo-1036621.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="coffee"
          class="gallery-item"
          src="https://images.pexels.com/photos/272887/pexels-photo-272887.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="dogs"
          class="gallery-item"
          src="https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <div class="gallery-item h-100">
          <div
            class="bg-info d-flex flex-column text-warning justify-content-center align-items-center h-100 w-100 p-3"
          >
            <p class="lead m-0">Me neigher.</p>
          </div>
        </div>
        <img
          data-gallery-tag="women"
          class="gallery-item"
          src="https://images.pexels.com/photos/247204/pexels-photo-247204.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
        <img
          data-gallery-tag="dogs"
          class="gallery-item"
          src="https://images.pexels.com/photos/59523/pexels-photo-59523.jpeg?auto=compress&cs=tinysrgb&h=350"
        />
      </div>
      <hr />
      <i>more to come here...</i>
    </div>
   
    <script src="<c:url value='/js/maugallery.js'/>"></script>
    <script src="<c:url value='/js/scripts.js'/>"></script>
</body>
</html>