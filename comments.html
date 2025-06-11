<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    // 处理表单提交（移动到页面顶部）
    request.setCharacterEncoding("UTF-8");
    if ("POST".equalsIgnoreCase(request.getMethod())){
        String comment = request.getParameter("comment");
        if (comment != null && !comment.trim().isEmpty()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/life_story?useSSL=false&serverTimezone=UTC",
                    "root", "021001");
                 PreparedStatement stmt = conn.prepareStatement(
                         "INSERT INTO comments (author, content, date) VALUES (?, ?, NOW())")) {

                stmt.setString(1, "访客");
                stmt.setString(2, comment);
                stmt.executeUpdate();

                // 插入后立即重定向，防止重复提交
                response.sendRedirect("comments.jsp");
                return; // 终止后续执行
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 查询所有评论（每次页面加载都执行）
    Class.forName("com.mysql.cj.jdbc.Driver");
    List<Map<String, String>> comments = new ArrayList<>();
    try (Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/life_story?useSSL=false&serverTimezone=UTC",
            "root", "021001");
         PreparedStatement stmt = conn.prepareStatement("SELECT * FROM comments ORDER BY date DESC");
         ResultSet rs = stmt.executeQuery()) {

        while (rs.next()) {
            Map<String, String> comment = new HashMap<>();
            comment.put("author", rs.getString("author"));
            comment.put("date", rs.getString("date"));
            comment.put("content", rs.getString("content"));
            comments.add(comment);
        }
        request.setAttribute("comments", comments);
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>留言板</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Microsoft YaHei', sans-serif;
        }

        .header {
            background: linear-gradient(135deg, #5f2c82 0%, #49a09d 100%);
            color: white;
            padding: 3rem 0;
            text-align: center;
            margin-bottom: 3rem;
        }

        .container {
            max-width: 800px;
        }

        .comment-form {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            margin-bottom: 40px;
        }

        .comment-form h3 {
            margin-top: 0;
            color: #5f2c82;
        }

        textarea {
            width: 100%;
            height: 120px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            resize: vertical;
            font-family: inherit;
            margin-bottom: 20px;
        }

        .submit-btn {
            background: #5f2c82;
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 50px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: all 0.3s;
        }

        .submit-btn:hover {
            background: #4a2267;
            transform: translateY(-2px);
        }

        .comments-section h3 {
            color: #5f2c82;
            margin-bottom: 25px;
            padding-bottom: 15px;
            border-bottom: 2px solid #eee;
        }

        .comment-card {
            background: white;
            border-radius: 10px;
            padding: 25px;
            margin-bottom: 25px;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.05);
            position: relative;
            transition: transform 0.3s;
        }

        .comment-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        }

        .comment-header {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: #5f2c82;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            margin-right: 15px;
        }

        .comment-info {
            flex: 1;
        }

        .comment-author {
            font-weight: bold;
            margin: 0;
            color: #333;
        }

        .comment-date {
            color: #888;
            font-size: 0.9rem;
            margin: 0;
        }

        .comment-content {
            color: #444;
            line-height: 1.6;
        }

        .empty-comments {
            text-align: center;
            padding: 40px;
            color: #888;
            background: white;
            border-radius: 10px;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.05);
        }

        .footer {
            text-align: center;
            padding: 30px 0;
            margin-top: 50px;
            color: #666;
            border-top: 1px solid #eee;
        }

        .continue-btn {
            display: block;
            margin: 50px auto;
            padding: 12px 40px;
            background: #49a09d;
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1.2rem;
            cursor: pointer;
            transition: all 0.3s;
        }

        .continue-btn:hover {
            background: #3a8a85;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<div class="header">
    <div class="container">
        <h1><i class="fas fa-comments"></i>留言板</h1>
        <p class="lead">分享您的祝福与回忆</p>
    </div>
</div>

<div class="container">
    <div class="comment-form">
        <h3>留下您的祝福</h3>
        <form id="commentForm" method="post">
            <textarea name="comment" placeholder="请输入您的评价、祝福或者回忆..." required></textarea>
            <button type="submit" class="submit-btn">提交留言</button>
        </form>
    </div>

    <div class="comments-section">
        <h3>留言板</h3>

        <c:choose>
            <c:when test="${not empty comments}">
                <c:forEach items="${comments}" var="comment">
                    <div class="comment-card">
                        <div class="comment-header">
                            <div class="avatar">
                                <c:out value="${comment.author.charAt(0)}" />
                            </div>
                            <div class="comment-info">
                                <h4 class="comment-author"><c:out value="${comment.author}" /></h4>
                                <p class="comment-date"><c:out value="${comment.date}" /></p>
                            </div>
                        </div>
                        <div class="comment-content">
                            <c:out value="${comment.content}" />
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div class="empty-comments">
                    <i class="fas fa-comment-slash" style="font-size: 3rem; margin-bottom: 20px;"></i>
                    <h4>暂无留言</h4>
                    <p>成为第一个分享祝福的人吧</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<div class="footer">
    <p>© 2023 胜仙的人生纪念网站 | 记录平凡而伟大的一生</p>
</div>

<script>
    document.getElementById('commentForm').addEventListener('submit', function() {
        setTimeout(function() {
            document.querySelector('.comments-section').scrollIntoView({ behavior: 'smooth' });
        }, 100);
    });
</script>

</body>
</html>