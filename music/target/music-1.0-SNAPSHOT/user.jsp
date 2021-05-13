<%@ page import="kz.javaee.music.model.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.javaee.music.model.Music" %>
<%@ page import="kz.javaee.music.DBconnection.DBConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="kz.javaee.music.DBconnection.DBConnection" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User profile</title>
    <style>
        .name{
            color: red;
            text-align: center;
            font-family: Montserrat;
        }

        table {
            font-family: Montserrat;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        .welAdmin{
            background: white;
            margin-right: 45%;
            height: 550px;
        }

        #welToPage{
            font-family: Montserrat;
            color: red;
            margin-left: 3%;
            font-size: 40px;
            margin-top: 15%;
        }

        .welAdmin img{
            margin-left: 15%;
        }

        #Nemo{
            color: red;
            font-size: 20px;
            font-family: Montserrat;
            margin-left: 5%;
            margin-right: 10%;
        }

        .welcomeAdmin{
            background: white;
            display: inline-block;
        }

        .adminOpp{
            background: red;
            width: 40%;
            margin-left: 55%;
            height: 450px;
            border-radius: 3px;
            margin-top: -38%;
        }

        .adminOpp img{
            margin-top: 8%;
            margin-left: 23%;
        }

        .adminOpp h1{
            font-family: Montserrat;
            color: white;
            font-size: 25px;
            margin-left: 10%;
        }

        .adminOpp p{
            font-family: Montserrat;
            color: white;
            margin-left: 10%;
            margin-right: 10%;
        }
    </style>
</head>
<body>

    <%@ include file = "header.jsp" %>

    <%!
        String name = "";
    %>

    <%
        String name = (String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);

        if (name != null) {
    %>

    <div class="welcomeAdmin">
        <div class="welAdmin">
            <p id="welToPage">Welcome to user page "<%
                out.print(name);
            %>"</p>
            <br><br>
            <img src="assets/IMG_1678.PNG" width="100px" height="100px">
            <img src="assets/IMG_1678.PNG" width="100px" height="100px">
            <img src="assets/IMG_1678.PNG" width="100px" height="100px">
            <br><br>
            <p id="Nemo">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
        </div>
        <div class="adminOpp">
            <img src="assets/pic1.PNG" width="300px" height="200px">
            <h1>Your opportunity</h1>
            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
        </div>
        <br><br><br><br>
    </div>
    <h1 style="color: red; text-align: center; font-family: Montserrat">Music list only for you</h1>
    <%
    } else {%>
        <jsp:forward page="error.jsp" />
    <% } %>

    <table>
        <tr>
            <th>ID</th>
            <th>Music</th>
            <th>Year of publish</th>
            <th>min</th>
        </tr>

        <%
            DBConnection dbConnection = new DBConnection();
            ResultSet resultSet = dbConnection.getMusic();
            try{
                while (resultSet.next()) {
        %>
        <tr>
            <td><%= resultSet.getInt("id") %></td>
            <td><%= resultSet.getString("name") %></td>
            <td><%= resultSet.getInt("yearofpublish") %></td>
            <td><%= resultSet.getString("min") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                    System.out.println(e.getMessage());
            }
        %>
    </table>

    <%@ include file = "footer.jsp" %>

</body>
</html>
