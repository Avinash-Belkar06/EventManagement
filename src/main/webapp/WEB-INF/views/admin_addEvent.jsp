<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event - Admin</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

<style>
:root {
  --bg-gradient: linear-gradient(135deg, #0f172a, #1e293b);
  --accent: #38bdf8;
  --text-light: #f8fafc;
  --muted: #94a3b8;
  --radius: 12px;
}

body {
  margin: 0;
  font-family: "Inter", sans-serif;
  background: var(--bg-gradient);
  color: var(--text-light);
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

h1 {
  color: var(--accent);
  margin-bottom: 20px;
  text-align: center;
}

/* Form Card */
form {
  background: rgba(255, 255, 255, 0.05);
  backdrop-filter: blur(12px);
  padding: 30px 40px;
  border-radius: var(--radius);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
  width: 350px;
}

label {
  display: block;
  margin-top: 10px;
  color: var(--muted);
  font-weight: 500;
  font-size: 14px;
}

input[type="text"], input[type="date"] {
  width: 100%;
  padding: 10px;
  margin-top: 5px;
  border: none;
  border-radius: var(--radius);
  background: rgba(255, 255, 255, 0.1);
  color: white;
  outline: none;
}

input[type="text"]::placeholder {
  color: #cbd5e1;
}

input[type="submit"] {
  margin-top: 20px;
  width: 100%;
  padding: 12px;
  background: var(--accent);
  color: #0f172a;
  border: none;
  border-radius: var(--radius);
  font-weight: 600;
  cursor: pointer;
  transition: 0.3s ease;
}

input[type="submit"]:hover {
  background: #0ea5e9;
  transform: translateY(-2px);
}

/* Messages */
.message {
  color: #22c55e;
  font-weight: bold;
  text-align: center;
  margin-bottom: 15px;
}

.error {
  color: #ef4444;
  font-weight: bold;
  text-align: center;
  margin-bottom: 15px;
}

/* Back link */
a {
  display: inline-block;
  margin-top: 20px;
  text-decoration: none;
  color: var(--accent);
  font-weight: 600;
  transition: 0.3s;
}

a:hover {
  color: #0ea5e9;
}
</style>
</head>
<body>

<h1>Admin Panel - Add Event</h1>

<c:if test="${not empty message}">
  <p class="message">${message}</p>
</c:if>

<c:if test="${not empty error}">
  <p class="error">${error}</p>
</c:if>

<form action="/admin/addEvent" method="post">
  <label>Event Name:</label>
  <input type="text" name="eventname" placeholder="Enter event name" required>

  <label>Date:</label>
  <input type="date" name="date" required>

  <label>Location:</label>
  <input type="text" name="location" placeholder="Enter event location" required>

  <label>Description:</label>
  <input type="text" name="description" placeholder="Enter event description" required>

  <input type="submit" value="Add Event">
</form>

<a href="/admin">← Back to Admin Dashboard</a>

</body>
</html>
