<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/views/common/allcss.html" %>

</head>
<body>
<%@include file="/views/common/navbar.html" %>
<style>
/* Importing fonts from Google */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

/* Reseting */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    min-height: 100vh;
    background: linear-gradient(to bottom, #000428, #004683);
}

.wrapper {
    max-width: 450px;
    margin: 50px auto;
    padding: 20px 30px;
    min-height: 300px;
    background-color: #ffffff27;
    border-top: 1px solid #ffffff6e;
    border-left: 1px solid #ffffff6e;
    border-radius: 15px;
}

.wrapper .h5 {
    color: #ddd;
}

.wrapper .form-group {
    border-bottom: 1px solid #ccc;
    margin-bottom: 1.5rem;
}

.wrapper .form-group:hover {
    border-bottom: 1px solid #eee;
}

.wrapper .form-group .icon {
    color: #e8e8e8;
}

.wrapper .form-group .form-control {
    background: inherit;
    border: none;
    border-radius: 0px;
    box-shadow: none;
    color: #e9e9e9;
}

.wrapper .form-group input::placeholder {
    color: #ccc;
}

.wrapper .form-group input:focus::placeholder {
    opacity: 0;
}

.wrapper .form-group .fa-phone {
    transform: rotate(90deg);
}


.wrapper .option {
    color: #ccc;
    display: block;
    position: relative;
    padding-left: 25px;
    margin-bottom: 12px;
    cursor: pointer;
    user-select: none
}

.wrapper .option:hover {
    color: #eee;
}

.wrapper .option input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
    height: 0;
    width: 0
}

.wrapper .checkmark {
    position: absolute;
    top: 3px;
    left: 0;
    height: 18px;
    width: 18px;
    background-color: inherit;
    border: 2px solid #ccc;
    border-radius: 2px
}

.wrapper .option input:checked~.checkmark {
    transition: 300ms ease-in-out all
}

.wrapper .checkmark:after {
    content: "\2713";
    position: absolute;
    display: none;
    font-weight: 600;
    color: #FFF;
    font-size: 0.9rem;
}

.wrapper .option input:checked~.checkmark:after {
    display: block
}

.wrapper .option .checkmark:after {
    left: 2px;
    top: -4px;
    width: 5px;
    height: 10px
}

.wrapper .btn.btn-primary {
    position: relative;
    color: #eee;
    padding: 0.3rem 1rem;
    border-radius: 20px;
    border: 1px solid #ddd;
    background-color: inherit;
    box-shadow: none;
    overflow: hidden;
}

.wrapper .btn.btn-primary:hover {
    background-color: #b4b4b433;
    color: #fff;
}

.wrapper .terms {
    color: #bbb;
    font-size: 0.85rem;
    text-align: center;
}

.wrapper .terms a {
    text-decoration: none;
    color: #eee;
}

.wrapper .terms a:hover {
    color: #fff;
}

.wrapper .connect {
    position: relative;
}

.wrapper .connect::after {
    content: "or";
    position: absolute;
    top: -12px;
    width: 80px;
    left: 39%;
    text-align: center;
    color: #eee;
    z-index: 100;
    background-color: rgba(255, 255, 255, 0.315);
    background-color: #1f5588;
}

.wrapper .social-links {
    margin-top: 50px;
    position: relative;
    list-style: none;
    display: flex;
    justify-content: space-around;
}

.wrapper .social-links li a {
    font-size: 1.2rem;
    width: 50px;
    height: 50px;
    background-color: #ffffff17;
    border: 1px solid #ffffff66;
    border-right: 1px solid #ffffff33;
    border-bottom: 1px solid #ffffff33;
    display: flex;
    text-decoration: none;
    justify-content: center;
    align-items: center;
    color: #fff;
    border-radius: 6px;
    box-shadow: 0 5px 30px #004683e0;
    transition: 0.5s;
    overflow: hidden;
}

.wrapper .social-links li a:hover {
    transform: translateY(-20px);
}

.wrapper .social-links li a::before,
.wrapper .btn.btn-primary::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 25px;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.6);
    transform: skew(45deg) translateX(130px);
    transition: .5s;
    opacity: 0;
}

.wrapper .social-links li a:hover:before,
.wrapper .btn.btn-primary:hover::before {
    opacity: 1;
    transform: skew(45deg) translateX(-130px);
}

@media(max-width: 460px) {
    .wrapper {
        margin: 15px;
        padding: 20px;
    }

    .wrapper .connect::after {
        left: 38%;
    }
}

@media(max-width: 345px) {
    .wrapper .connect::after {
        left: 32%;
    }
}
</style>
<div class="wrapper">
<div class="h5 font-weight-bold text-center mb-3">Course Payment</div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="accountid" placeholder="AccountId" required="required">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="ifsccode" placeholder="Ifsccode" required="required">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="bankname" placeholder="bankname" required="required">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="branchname" placeholder="branchname" required="required">
            </div>
            <button type="submit" class="btn btn-primary mb-3">Submit</button>
</div>

<div class="wrapper">

        
            <div class="h5 font-weight-bold text-center mb-3">Course Payment</div>
            <form action="/student_payment/${st}" method="post">
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="accountid" placeholder="AccountId" required="required">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="ifsccode" placeholder="Ifsccode" required="required">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="bankname" placeholder="bankname" required="required">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" name="branchname" placeholder="branchname" required="required">
            </div>
            <button type="submit" class="btn btn-primary mb-3">Submit</button>
      
    </form>
    </div>
    <%@include file="/views/common/alljs.html" %>

</body>
</html>