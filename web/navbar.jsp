<%-- 
    Document   : neavbar
    Created on : 22-Dec-2023, 9:47:01 pm
    Author     : KIIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Navbar Page</title>
    </head>
    <body>
        <nav>
        <div class="p-2 flex justify-between bg-[#2196f3] text-white">
            <div class="left-side flex justify-between items-center">
            <a class="navbar-name px-4 text-lg" href="#"><span class="fa fa-bookmark-o px-2"></span>Tech Blog</a>
                <ul class="flex justify-around">
                    <li><a class="nav-home px-3" href="#"><span class="fa fa-bell-o px-1"></span>Learn Code With Durgesh</a></li>
                    <li class="px-3 relative" id="dropDownButton">
            
                        <div class="flex items-center cursor-pointer"><span class="fa fa-book px-1"></span>
                            Categories
                            <img onclick="toggleDropdown()" class="pt-1 h-4" src="./downicon-removebg-preview.png" alt="arrow icon">
                        </div>
                        <div id="dropDown" class="hidden z-40 rounded border-[1px] border-gray-300 bg-white text-black p-2 top-[30px] w-[250px] shadow-md absolute">
                            <div class="my-1 cursor-pointer hover:text-blue-500">Programming Language</div>
                            <div class="my-2 cursor-pointer hover:text-blue-500">Project Implementation</div>
                            <hr class="">
                            <div class="my-1 cursor-pointer hover:text-blue-500">Data Structure</div>
                        </div>

                    </li>
                    <li><a class="nav-link px-2" href="#"><span class="fa fa-address-book-o px-1"></span>Contact</a></li> 
                    <li class="px-3 cursor-pointer"><span class="fa fa-user-o px-2"></span><a href="./loginpage.jsp" target="blank">Login</a></li>
                    <li class="px-3 cursor-pointer"><span class="fa fa-user-plus px-2"></span><a href="./registration.jsp" target="blank">Sign Up</a></li>
                </ul>
            </div>
            <div class="right-side">
            <form class="flex flex-row justify-center items-center">
                <input class="h-8 mx-2 text-black border rounded" type="search" placeholder="Search" aria-label="Search">
                <button class="p-1 border rounded hover:bg-blue-500"><span><img class="h-[22px] w-[24px]" src="./search_icon.png" alt="search icon"/></span></button>       
            </form>
            </div>
        </div>
    </nav>

    <script>
        function toggleDropdown(){
            let dropdown = document.querySelector('#dropDownButton #dropDown');
            dropdown.classList.toggle("hidden");
        }
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="./JS/myjs.js" type="text/javascript"></script>
    </body>
</html>
