
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Page Not Found</title>
    </head>
    <body>
        <div class="container flex flex-col justify-center items-center">
            <img class="error-pic h-[650px] w-[600px] mx-auto" src="./3793096.jpg" alt="404 error image">
            <!--<p><%= exception %></p>-->
            <button class="home-btn bg-[#2196f3] text-white px-2 py-2 mb-5 rounded-lg"><a href="index.jsp">Go to Home</a></button>
        </div>
    </body>
</html>
