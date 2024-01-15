<%-- 
    Document   : registration
    Created on : 12-Jan-2024, 3:42:15 am
    Author     : KIIT
--%>

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
    <link href="./mystyle.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.3/dist/sweetalert2.min.css" rel="stylesheet">
    
    <style>
        .registration-page{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 68% 95%, 28% 100%, 0 94%, 0 0);
        }
    </style>
    <title>Registration Page</title>
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

        <main>
        <div class="registration-page flex flex-col w-screen h-[650px] items-center z-30 bg-[#2196f3]">
                <div class="z-20 w-[400px] border border-white bg-slate-50 mt-4">
                    <div class="bg-[#2196f3] py-2 text-center text-lg h-20 text-white">
                        <span class="fa fa-user-plus text-3xl"></span><br>Register here
                    </div>
                    <hr>
                    <form id="reg-form"action="RegisterServlet"  method="POST" class="flex flex-col px-4">
                        <div class="form-group0 flex flex-col py-2">
                            <label>User Name</label>
                            <input name="username" type="text" class="username border border-gray-400 rounded-sm mt-1 h-8 px-1" placeholder="Enter username">
                        </div>
                        <div class="form-group1 flex flex-col pb-2 pt-3">
                            <label>Email address</label>
                            <input name="user_email" type="email" class="email border border-gray-400 rounded-sm mt-1 h-8 px-1" placeholder="Enter email">
                            <span class="text-xs text-gray-500">We'll never share your email with anyone else.</span>
                        </div>
                        <div class="form-group2 flex flex-col py-2">
                            <label>Password</label>
                            <input name="user_password" type="password" class="password border border-gray-400 rounded-sm mt-1 h-8 px-1" placeholder="Enter password">
                        </div>
                        <div class="form-group3 py-2">
                            <input type="checkbox" class="form-check-input-1" id="gen1" name="user_gender" onclick="return myFunc()">
                            <label class="form-check-label" for="gen1">Male</label>
                            <input type="checkbox" class="form-check-input-2" id="gen2" name="user_gender" onclick="return myFunc()">
                            <label class="form-check-label" for="gen2">Female</label>
                        </div>
                        <div class="form-group4 py-2">
                            <textarea name="user_about" class="border border-gray-400 rounded-sm" id="usertext" rows="4" cols="40" placeholder="Enter something about yourself"></textarea>
                            <br>
                            <input name="user_check" type="checkbox" class="form-check-input-3" id="exampleCheck2">
                            <label class="form-check-label" for="exampleCheck2">agree to terms and conditions</label>
                        </div>
                        <div class="container" id="loader" style="display: none;">
                            <p><span class="fa fa-refresh fa-spin px-2"></span>Please wait...</p>
                        </div>
                        <div class="form-button pt-2 pb-4" id="submit-btn">
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

        function myFunc(){
            let a = document.getElementsByName('user_gender');
            let count = 0;
            let newVar = 0;
            for(count = 0; count < a.length; count++){
                if(a[count].checked === true)
                    newVar = newVar + 1;

                if(newVar > 1)
                    return false;
            }
        }
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="./JS/myjs.js" type="text/javascript"></script>
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.3/dist/sweetalert2.all.min.js"></script>

        <script>
            
            //document when ready
            $(document).ready(function(){
                console.log('loaded....');
                
                //form id reg-form on being submitted
                $('#reg-form').on('submit', function (event){
                    event.preventDefault();
                    
                    let form = new FormData(this); //copy data of the form into the variable form
                    
                    $('#submit-btn').hide();
                    $('#loader').show();
                    
                    //sending to Register Servlet
                    $.ajax({
                        url: "RegisterServlet",
                        type:'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR){
                            console.log(data);
                            
                            $('#submit-btn').delay(1000).show();
                            $('#loader').delay(1000).hide();
                            
                            /*if(data.trim() === 'done'){
                            swal("registered successfully.. redirecting to login page")
                                .then((value) => {
                                window.location = "loginpage.jsp";
                            });
                            }
                            else{
                                swal(data);
                            }*/
                            
                            if(data.trim() === 'done'){
                                Swal.fire({
                                    title: "Registered Successfully",
                                    text: "Redirecting you to login page",
                                    icon: "success"
                                }).then(function() {
                                    window.location.href = "loginpage.jsp";
                                });
                            }
                            else{
                                Swal.fire({
                                    title: "Error Occurred!!!",
                                    text: "Please agree to terms and conditions",
                                    icon: "error"
                                }).then(function() {
                                    window.location.href = "registration.jsp";
                                });

                            }
                            
                        },
                        failure: function(jqXHR, textStatus, errorThrown){
                            console.log(jqXHR);
                            $('#submit-btn').delay(2000).show();
                            $('#loader').delay(2000).hide();
                            
                            //swal("Something went wrong.. Please try again");
                        },
                        processData: false,
                        contentType: false
                    });
                    
                });
            });
        </script>
    </body>
</html>

