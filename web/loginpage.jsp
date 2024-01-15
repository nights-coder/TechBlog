
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Karla:wght@200&family=Mukta:wght@500&display=swap" rel="stylesheet">
    <link href="./CSS/mystyle.css" rel="stylesheet">
    <style>
        .banner{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 95%, 67% 90%, 32% 96%, 0 91%, 0 0);
        }

        .login-page{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 87%, 69% 78%, 33% 89%, 0 79%, 0 0);
        }
    </style>
    <title>Login Page</title>
    </head>
    <body>
        <!-- navbar -->
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
                    <li><a class="nav-link px-3" href="#"><span class="fa fa-address-book-o px-1"></span>Contact</a></li>
                </ul>
            </div>
            <div class="right-side">
            <form>
                <input class="h-8 text-black border rounded" type="search" placeholder="Search" aria-label="Search">
                <button class="p-1 border rounded bg-[#2196f3] hover:bg-blue-500">Search</button>       
            </form>
            </div>
        </div>
        </nav>
        
        <!--login-->
        <main>
        <div class="login-page flex flex-col w-screen h-[650px] items-center z-30 bg-[#2196f3]">
                <div class="z-20 w-[300px] border border-white bg-slate-50 mt-28">
                    <div class="bg-[#2196f3] py-2 text-center text-lg h-20 text-white">
                        <span class="fa fa-user-o text-3xl"></span><br>Login here
                    </div>
                    <hr>
                    <form class="flex flex-col px-4">
                        <div class="form-group1 flex flex-col pb-2 pt-3">
                            <label>Email address</label>
                            <input type="email" class="email border border-gray-400 rounded-sm mt-1 h-8 px-1" placeholder="Enter email">
                            <span class="text-xs text-gray-500">We'll never share your email with anyone else.</span>
                        </div>
                        <div class="form-group2 flex flex-col py-2">
                            <label>Password</label>
                            <input type="password" class="password border border-gray-400 rounded-sm mt-1 h-8 px-1" placeholder="Enter password">
                        </div>
                        <div class="form-group3 py-2">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        <div class="form-button pt-2 pb-4">
                            <button class="px-2 py-1 text-white bg-[#2196f3] border rounded hover:bg-blue-500">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </main>
        
        
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
