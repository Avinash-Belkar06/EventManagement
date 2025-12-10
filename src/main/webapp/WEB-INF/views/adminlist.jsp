<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Event List</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

<style>
:root {
  --bg-gradient: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
  --accent: #38bdf8;
  --text-light: #f8fafc;
  --muted: #94a3b8;
  --radius: 10px;
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
  padding: 40px 20px;
}

h1 {
  text-align: center;
  color: var(--accent);
  margin-bottom: 10px;
}

h2 {
  color: var(--muted);
  margin-bottom: 30px;
}

/* Table Styles */
table {
  width: 90%;
  border-collapse: collapse;
  background: rgba(255, 255, 255, 0.05);
  backdrop-filter: blur(10px);
  border-radius: var(--radius);
  overflow: hidden;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
}

th, td {
  padding: 14px 18px;
  text-align: center;
}

th {
  background: rgba(56, 189, 248, 0.2);
  color: var(--accent);
  font-weight: 600;
}

tr:nth-child(even) {
  background: rgba(255, 255, 255, 0.05);
}

tr:hover {
  background: rgba(56, 189, 248, 0.15);
  transition: 0.3s ease;
}

/* Action Buttons */
a {
  text-decoration: none;
  padding: 6px 14px;
  border-radius: var(--radius);
  font-weight: 600;
  transition: all 0.3s ease;
}

a[href*="edit"] {
  background: #38bdf8;
  color: #0f172a;
}

a[href*="edit"]:hover {
  background: #0ea5e9;
}

a[href*="delete"] {
  background: #ef4444;
  color: white;
  margin-left: 5px;
}

a[href*="delete"]:hover {
  background: #dc2626;
}

/* Add Event Box */
.add-box {
  margin-top: 40px;
  padding: 25px 40px;
  background: rgba(255, 255, 255, 0.06);
  border-radius: var(--radius);
  backdrop-filter: blur(12px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
  text-align: center;
  animation: fadeIn 0.6s ease-in-out;
}

.add-box h3 {
  margin-bottom: 15px;
  color: var(--muted);
}

.add-btn {
  display: inline-block;
  background: var(--accent);
  color: #0f172a;
  padding: 12px 24px;
  font-weight: 600;
  border-radius: var(--radius);
  text-decoration: none;
  box-shadow: 0 4px 15px rgba(56, 189, 248, 0.3);
  transition: all 0.3s ease;
}

.add-btn:hover {
  background: #0ea5e9;
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(14, 165, 233, 0.4);
}

/* Smooth entry animation */
@keyframes fadeIn {
  0% { opacity: 0; transform: translateY(20px); }
  100% { opacity: 1; transform: translateY(0); }
}
</style>
</head>

<body>
  <h1>Admin Dashboard</h1>
  <h2>All Events</h2>

  <table>
      <tr>
          <th>ID</th>
          <th>Event Name</th>
          <th>Date</th>
          <th>Location</th>
          <th>Description</th>
          <th>Actions</th>
      </tr>

      <c:forEach var="e" items="${eventlist}">
          <tr>
              <td>${e.id}</td>
              <td>${e.eventname}</td>   
              <td>${e.date}</td>
              <td>${e.location}</td>
              <td>${e.description}</td>
              <td>
                  <a href="/edit/${e.id}">Edit</a>
                  <a href="/delete/${e.id}" onclick="return confirm('Are you sure you want to delete this event?')">Delete</a>
              </td>
          </tr>
      </c:forEach>
  </table>

  <!-- Add New Event Box -->
  <div class="add-box">
    <h3>Want to create a new event?</h3>
    <a href="/admin/addEventForm" class="add-btn">➕ Add New Event</a>
  </div>
</body>
</html>
