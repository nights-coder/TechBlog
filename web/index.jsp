
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><!-- css -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Karla:wght@200&family=Mukta:wght@500&display=swap" rel="stylesheet">
        <style>
        .banner{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 95%, 67% 90%, 32% 96%, 0 91%, 0 0);
        }
        </style>
        <link rel="stylesheet" href="./CSS/mystyle.css">
        <title>Home Page</title>
    </head>
    <body>
        
        <!-- navbar -->
        <%@include file="navbar.jsp" %>
        
        <!-- banner -->
        <section> 
        <div class="banner z-30 bg-[#2196f3] text-white">
            <div class="container mx-auto w-1/2 pt-12 pb-16">
                <p class=" text-6xl font-serif font-thin py-3">Welcome to TechBlog</p>
                <p>Welcome to Tech Blog, a world of technology. A programming language is usually described in terms of its syntax and semantics. These are usually defined by a formal language.</p>
                <br>
                <p>Programming languages usually contain abstractions for defining and manipulating data structures or controlling the flow of execution.</p>
                <button class="border border-white rounded-md py-1 px-2 mt-2 hover:bg-blue-500"><span class="fa fa-external-link pr-1"></span>Start! Its Free</button>
                <button class="border border-white rounded-md py-1 px-2 mt-2 mx-1 hover:bg-blue-500"><span class="fa fa-user-circle-o pl-2 fa-spin"></span><a href="./loginpage.jsp" target="_blank">Login</a></button>
            </div>
        </div>
        </section>
        
        
        
        <!-- cards -->
        <div class="row1 mt-8 flex flex-row gap-8 justify-center">
        <div class="card bg-white border-gray-300 h-[200px] w-[280px] border rounded-lg">
            <div class="card1 p-4">
                <h3 class="font-semibold">Java Programming</h3>
                <p class="py-3 ">Some quick example text to build on the card title and make up the bulk of the card's content</p>
                <button class="bg-[#2196f3] text-white border border-white rounded-md py-1 px-3 mt-2 mx-1 hover:bg-blue-500">Read more..</button>
            </div>
        </div>
        <div class="card bg-white border-gray-300 h-[200px] w-[280px] border rounded-lg">
            <div class="card1 p-4">
                <h3 class="font-semibold">Python Programming</h3>
                <p class="py-3">Some quick example text to build on the card title and make up the bulk of the card's content</p>
                <button class="bg-[#2196f3] text-white border border-white rounded-md py-1 px-3 mt-2 mx-1 hover:bg-blue-500">Read more..</button>
            </div>
        </div>
        <div class="card bg-white border-gray-300 h-[200px] w-[280px] border rounded-lg">
            <div class="card1 p-4">
                <h3 class="font-semibold">Android Development</h3>
                <p class="py-3">Some quick example text to build on the card title and make up the bulk of the card's content</p>
                <button class="bg-[#2196f3] text-white border border-white rounded-md py-1 px-3 mt-2 mx-1 hover:bg-blue-500">Read more..</button>
            </div>
        </div>
        </div>

        <div class="row2 mt-5 mb-10 flex flex-row gap-8 justify-center">
        <div class="card bg-white border-gray-300 h-[200px] w-[280px] border rounded-lg">
            <div class="card1 p-4">
                <h3 class="font-semibold">Java Programming</h3>
                <p class="py-3 ">Some quick example text to build on the card title and make up the bulk of the card's content</p>
                <button class="bg-[#2196f3] text-white border border-white rounded-md py-1 px-3 mt-2 mx-1 hover:bg-blue-500">Read more..</button>
            </div>
        </div>
        <div class="card bg-white border-gray-300 h-[200px] w-[280px] border rounded-lg">
            <div class="card1 p-4">
                <h3 class="font-semibold">Python Programming</h3>
                <p class="py-3">Some quick example text to build on the card title and make up the bulk of the card's content</p>
                <button class="bg-[#2196f3] text-white border border-white rounded-md py-1 px-3 mt-2 mx-1 hover:bg-blue-500">Read more..</button>
            </div>
        </div>
        <div class="card bg-white border-gray-300 h-[200px] w-[280px] border rounded-lg">
            <div class="card1 p-4">
                <h3 class="font-semibold">Android Development</h3>
                <p class="py-3">Some quick example text to build on the card title and make up the bulk of the card's content</p>
                <button class="bg-[#2196f3] text-white border border-white rounded-md py-1 px-3 mt-2 mx-1 hover:bg-blue-500">Read more..</button>
            </div>
        </div>
        </div>

        
        
        <script src="./JS/myjs.js" type="javascript"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
 
    </body>
</html>
