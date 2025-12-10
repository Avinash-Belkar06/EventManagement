<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event | Event Management</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

<style>
/* ---------- Modern Add Event Page ---------- */
:root {
  --bg-gradient: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
  --card-bg: rgba(255, 255, 255, 0.05);
  --accent: #38bdf8;
  --text-light: #f1f5f9;
  --muted: #94a3b8;
  --radius: 12px;
}

body {
  margin: 0;
  font-family: "Inter", sans-serif;
  background: var(--bg-gradient);
  color: var(--text-light);
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

/* Card container */
.event-container {
  width: 100%;
  max-width: 500px;
  padding: 20px;
}

.card {
  background: var(--card-bg);
  border-radius: var(--radius);
  padding: 30px 40px;
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
  backdrop-filter: blur(12px);
  text-align: left;
}

/* Title */
h1, h2 {
  text-align: center;
}

.title {
  font-size: 1.6rem;
  font-weight: 600;
  text-align: center;
  margin-bottom: 10px;
}

.subtitle {
  font-size: 1rem;
  color: var(--muted);
  text-align: center;
  margin-bottom: 25px;
}

/* Message */
.message {
  text-align: center;
  color: #f87171;
  font-weight: 600;
  margin-bottom: 15px;
}

/* Form styles */
form {
  display: flex;
  flex-direction: column;
  gap: 14px;
}

label {
  font-size: 14px;
  color: var(--muted);
}

input[type="text"],
input[type="date"] {
  padding: 12px 14px;
  border: none;
  border-radius: var(--radius);
  background: rgba(255, 255, 255, 0.1);
  color: var(--text-light);
  font-size: 15px;
  outline: none;
}

input::placeholder {
  color: var(--muted);
}

/* Button */
input[type="submit"] {
  background: var(--accent);
  color: #0f172a;
  padding: 12px;
  border: none;
  border-radius: var(--radius);
  font-weight: 600;
  cursor: pointer;
  transition: 0.2s ease;
  margin-top: 8px;
}

input[type="submit"]:hover {
  background: #0ea5e9;
  transform: translateY(-2px);
}

/* Link */
.back-link {
  display: block;
  text-align: center;
  margin-top: 16px;
  color: var(--accent);
  text-decoration: none;
  font-size: 14px;
}

.back-link:hover {
  text-decoration: underline;
}
</style>
</head>
<body>

<div class="event-container">
  <div class="card">
    <h2 class="title">Add Event</h2>
    <p class="subtitle">Welcome to Event Management System</p>

    <!-- ✅ Message display -->
    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>

    <form action="/addEvent" method="post">
      <label for="eventname">Event Name</label>
      <input type="text" id="eventname" name="eventname" value="${event.eventname}" placeholder="Enter event name" required>

      <label for="date">Date</label>
      <input type="date" id="date" name="date" value="${event.date}" required>

      <label for="location">Location</label>
      <input type="text" id="location" name="location" value="${event.location}" placeholder="Enter location" required>

      <label for="description">Description</label>
      <input type="text" id="description" name="description" value="${event.description}" placeholder="Enter short description" required>

      <input type="submit" value="Add Event">
    </form>

    <a href="/login" class="back-link">← Back to Login page</a>
  </div>
</div>

</body>
</html>
