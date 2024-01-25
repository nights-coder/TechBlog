<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("error.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 70% 89%, 33% 100%, 0 88%, 0 0);
            }
        </style>
        <link rel="stylesheet" href="./CSS/mystyle.css">
        <title>Profile Page</title>
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

                    </ul>
                </div>
                <div class="right-side">
                    <ul class="flex flex-row justify-center items-center mt-1">
                        <li class="log-out px-2 cursor-pointer hover:underline"><span class="fa fa-user-circle px-2"></span><%= user.getName()%></a></li>
                        <li class="px-2 cursor-pointer hover:underline"><span class="px-2"></span><a href="LogoutServlet" target="blank">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--navbar-->

        <%
            Message m = (Message) session.getAttribute("msg");
            if (m != null && m.getType().equals("error")) {

        %>

        <div id="popup" class="alert bg-red-100 border border-red-400 text-red-700 px-4 py-2 rounded relative" role="alert">
            <strong class="font-bold">Error!</strong>
            <span class="block sm:inline">Profile picture not updated</span>
            <span class="absolute top-0 bottom-0 right-0 px-4 py-3" onclick="hideThis()">
                <svg class="fill-current h-4 w-6 text-red-500"  role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
            </span>
        </div>

        <%                            session.removeAttribute("msg");
            }

            if (m != null && m.getType().equals("success")) {


        %>

        <div id="popup2" class="alert bg-green-100 border border-green-400 text-green-700 px-4 py-2 rounded relative" role="alert">
            <strong class="font-bold">Updated</strong>
            <span class="block sm:inline">Successfully..</span>
            <span class="absolute top-0 bottom-0 right-0 px-4 py-3" onclick="hideThis2()">
                <svg class="fill-current h-4 w-6 text-green-500"  role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
            </span>
        </div>

        <%                            session.removeAttribute("msg");
            }
        %>


        <!--profile modal -->
        <div class="h-screen w-full fixed left-0 top-0 flex justify-center items-center bg-black bg-opacity-50 hidden" id="modal">

            <div class="bg-white rounded shadow-lg w-1/3">
                <div class="border-b px-4 pb-2 pt-4 text-center bg-[#2196f3]">
                    <img class="h-[100px] m-auto rounded-full" src="./pics/<%= user.getProfile()%>" alt="default"/>
                    <p class="mt-2 text-xl"><%= user.getName()%></p>
                </div>

                <!--profile page-->
                <div id="profile-page" class="p-3">
                    <table class="table-auto m-auto">
                        <tbody>
                            <tr class="border-b">
                                <td class="font-semibold py-2">ID : </td>
                                <td class="py-2"><%= user.getId()%></td>

                            </tr>
                            <tr class="border-b">
                                <td class="font-semibold py-2">Email : </td>
                                <td class="py-2"><%= user.getEmail()%></td>

                            </tr>
                            <tr class="border-b">
                                <td class="font-semibold py-2">Gender : &nbsp;</td>
                                <td class="py-2"><%= user.getGender()%></td>

                            </tr>
                            <tr class="border-b">
                                <td class="font-semibold py-2">Status : </td>
                                <td class="py-2"><%= user.getAbout()%></td>

                            </tr>
                            <tr>
                                <td class="font-semibold py-2">Registered : &nbsp;</td>
                                <td class="py-2"><%= user.getDateTime().toString()%></td>

                            </tr>

                        </tbody>
                    </table>
                </div>
                <!--profile page end-->

                <!--profile edit-->                
                <div id="profile-edit" class="p-3 hidden">
                    <form action="EditServlet" method="post" enctype="multipart/form-data">
                        <table class="table-auto m-auto">
                            <tbody>
                                <tr class="border-b">
                                    <td class="font-semibold py-2">ID : </td>
                                    <td class="py-2"><%= user.getId()%></td>

                                </tr>
                                <tr class="border-b">
                                    <td class="font-semibold py-2">Name : </td>
                                    <td class="py-2"><%= user.getName()%></td>

                                </tr>

                                <tr class="border-b">
                                    <td class="font-semibold py-2">Email : </td>
                                    <td class="py-2"><input type="email" required name="user_email" value="<%= user.getEmail()%>"></td>

                                </tr>

                                <tr class="border-b">
                                    <td class="font-semibold py-2">Password : </td>
                                    <td class="py-2"><input type="password" required name="user_password" value="<%= user.getPassword()%>"></td>

                                </tr>

                                <tr class="border-b">
                                    <td class="font-semibold py-2">Gender : &nbsp;</td>
                                    <td class="py-2"><%= user.getGender()%></td>

                                </tr>

                                <tr class="border-b">
                                    <td class="font-semibold py-2">Profile Pic : </td>
                                    <td class="py-2"><input type="file" name="image"></td>

                                </tr>

                                <tr>
                                    <td class="font-semibold py-2">Status : </td>
                                    <td class="py-2"><textarea class="border" name="user_about" rows="3" cols="35"><%= user.getAbout()%></textarea></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="text-center">
                            <button id="save-btn" type="submit" class="bg-blue-500 hover:bg-blue-600 px-2 py-1 rounded text-white">Save Changes</button><span class="px-2 fa fa-pencil"></span>
                        </div>
                    </form>
                </div>                           
                <!--profile edit end-->                

                <div class="flex justify-end items-center w-100 border-t p-3">
                    <button id="cancelBtn" class="bg-red-600 hover:bg-red-700 px-3 py-1 rounded text-white mr-1">Close</button>
                    <button id="edit-profile-btn" class="bg-blue-600 hover:bg-blue-700 px-3 py-1 rounded text-white">Edit</button>
                </div>
            </div>
        </div>

        <!--End of profile modal -->









        <script>
            function toggleDropdown() {
                let dropdown = document.querySelector('#dropDownButton #dropDown');
                dropdown.classList.toggle("hidden");
            }

            let logout = document.querySelector(".log-out");
            let modal = document.getElementById('modal');
            let cancelBtn = document.getElementById('cancelBtn');

            logout.addEventListener('click', function () {
                modal.classList.remove('hidden');
            });

            cancelBtn.addEventListener('click', function () {
                modal.classList.add('hidden');
            });

        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="./JS/myjs.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                let editStatus = false;
                $('#edit-profile-btn').click(function () {
                    if (editStatus === false) {
                        $('#profile-page').hide();
                        $('#profile-edit').show();
                        editStatus = true;
                        $(this).text("Back");
                    } else {
                        $('#profile-edit').hide();
                        $('#profile-page').show();
                        editStatus = false;
                        $(this).text("Edit");
                    }
                });
            });
        </script>
        <script>
            function toggleDropdown() {
                let dropdown = document.querySelector('#dropDownButton #dropDown');
                dropdown.classList.toggle("hidden");
            }
            
            function hideThis(){
                let pop = document.querySelector('#popup');
                pop.classList.toggle("hidden");
            }
            
            function hideThis2(){
                let pop = document.querySelector('#popup2');
                pop.classList.toggle("hidden");
            }
        </script>
    </body>
</html>
