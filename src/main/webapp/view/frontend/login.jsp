<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href= "${pageContext.request.contextPath}/css/login.css">

<style>
	*{
	  margin: 0px;
	  padding: 0px;
	}
	.login__form__container {
	  background-image: linear-gradient(65deg, #9bbce1, #b9473d);
	  display: flex;
	  align-items: center;
	  justify-content: space-around;
	  height: 800px;
	}
	.login__form {
	  z-index: 100;
	  padding: 10px;
	  margin: 30px;
	  border-radius: 10px;
	  display: flex;
	  align-items: center;
	  background-image: linear-gradient(45deg, #9bbce1, #07041d);
	  box-shadow: 3px 10px 30px #07041d;
	}
	.side__image{
	  transition-duration: 0.5s;
	}
	.side__image > img {
	  width: 380px;
	  height: 560px;
	  transition-duration: 0.5s;
	  object-fit: cover;
	}
	.side__form {
	  display: flex;
	  flex-direction: column;
	  padding: 0px 30px;
	  align-items: center;
	}
	.form__input {
	  background-color: rgba(0, 0, 0, 0);
	  border: none;
	  margin-bottom: 20px;
	  width: 80%;
	  flex-basis: 30px;
	  border-bottom: 2px solid black;
	  font-family: "Nanum Gothic", sans-serif;
	  font-family: "Noto Serif", serif;
	  font-family: "Oswald", sans-serif;
	  font-family: "Roboto", sans-serif;
	  color: #9bbce1;
	}
	.form__input::placeholder {
	  font-family: "Nanum Gothic", sans-serif;
	  font-family: "Noto Serif", serif;
	  font-family: "Oswald", sans-serif;
	  font-family: "Roboto", sans-serif;
	  color: #9bbce1;
	  opacity: 0.4;
	}
	.form__header {
	  margin-bottom: 30px;
	}
	.big__text_style1 {
	  font-family: "Nanum Gothic", sans-serif;
	  font-family: "Noto Serif", serif;
	  font-family: "Oswald", sans-serif;
	  font-family: "Roboto", sans-serif;
	  color: #9bbce1;
	  font-size: 50px;
	}
	.big__text_style2 {
	  font-family: "Nanum Gothic", sans-serif;
	  font-family: "Noto Serif", serif;
	  font-family: "Oswald", sans-serif;
	  font-family: "Roboto", sans-serif;
	  text-align: right;
	  margin-left: 50px;
	  color: #b9473d;
	  font-size: 50px;
	}
	.login__button {
	  font-family: "Nanum Gothic", sans-serif;
	  font-family: "Noto Serif", serif;
	  font-family: "Oswald", sans-serif;
	  font-family: "Roboto", sans-serif;
	  background-image: linear-gradient(130deg, #9bbce1, #b9473d);
	  border: none;
	  margin-bottom: 20px;
	  width: 80%;
	  flex-basis: 30px;
	  border-bottom: 2px solid black;
	  font-weight: bold;
	  transition-duration: 0.8s;
	  cursor: pointer;
	}
	.login__button:hover {
	  color: white;
	  opacity: 0.7;
	}
</style>

</head>
<body>
<div class="login__form__container">
  <div class="login__form">
    <div class="side__image" onclick = "">
      <img id="#img01" src="https://cdn.pixabay.com/photo/2020/02/23/15/34/vietnam-4873680_960_720.jpg" alt="">
  </div>
    <form class="side__form" method ="POST" action ="#">
      <div class="form__header">
        <span class="big__text_style1">Welcome</span><br>
        <span class="big__text_style2">Customers !</span>
      </div>
    <input type="text" placeholder="Email or phone number" class="form__input">
    <input type="password" placeholder="Password" class ="form__input">
    <input type="submit" value="Login" class="login__button">
    <a href="">Create account</a>
 </form>
  </div>
</div>
</body>
</html>