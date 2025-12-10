<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Event</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

<style>
:root {
  --bg-gradient: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
  --accent: #38bdf8;
  --text-light: #f1f5f9;
  --muted: #94a3b8;
  --radius: 10px;
}

body {
  margin: 0;
  font-family: "Inter", sans-serif;
  background: var(--bg-gradient);
  color: var(--text-light);
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

.container {
  background: rgba(255, 255, 255, 0.06);
  backdrop-filter: blur(12px);
  border-radius: var(--radius);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
  padding: 40px 50px;
  width: 400px;
  text-align: center;
  animation: fadeIn 0.6s ease-in-out;
}

h1 {
  color: var(--accent);
  font-size: 1.8rem;
  margin-bottom: 25px;
}

label {
  display: block;
  text-align: left;
  margin-bottom: 6px;
  color: var(--muted);
  font-size: 0.9rem;
  font-weight: 600;
}

input[type="text"],
input[type="date"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 16px;
  border-radius: var(--radius);
  border: none;
  background: rgba(255, 255, 255, 0.1);
  color: var(--text-light);
  font-size: 0.95rem;
  outline: none;
  transition: 0.3s ease;
}

input[type="text"]:focus,
input[type="date"]:focus {
  background: rgba(56, 189, 248, 0.15);
  border: 1px solid var(--accent);
}

input[type="submit"] {
  width: 100%;
  padding: 12px;
  background: var(--accent);
  color: #0f172a;
  border: none;
  border-radius: var(--radius);
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
}

input[type="submit"]:hover {
  background: #0ea5e9;
  transform: translateY(-2px);
  box-shadow: 0 6px 20px rgba(14, 165, 233, 0.4);
}

a {
  color: var(--accent);
  text-decoration: none;
  font-weight: 600;
  display: inline-block;
  margin-top: 15px;
}

a:hover {
  text-decoration: underline;
}

/* Smooth entry animation */
@keyframes fadeIn {
  0% { opacity: 0; transform: translateY(-20px); }
  100% { opacity: 1; transform: translateY(0); }
}
</style>
</head>

<body>
  <div class="container">
    <h1>Edit Event Details</h1>

    <form action="/update" method="post">
      <input type="hidden" name="id" value="${event.id}">

      <label for="eventname">Event Name</label>
      <input type="text" name="eventname" value="${event.eventname}" required>

      <label for="date">Date</label>
      <input type="date" name="date" value="${event.date}" required>

      <label for="location">Location</label>
      <input type="text" name="location" value="${event.location}" required>

      <label for="description">Description</label>
      <input type="text" name="description" value="${event.description}" required>

      <input type="submit" value="Update Event">
    </form>

    <a href="/admin">⬅ Back to Event List</a>
  </div>
</body>
</html>
