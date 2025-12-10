<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Added Successfully</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

<style>
:root {
  --bg-gradient: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
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

.container {
  background: rgba(255, 255, 255, 0.06);
  backdrop-filter: blur(12px);
  padding: 40px 60px;
  border-radius: var(--radius);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
  text-align: center;
  max-width: 450px;
  width: 90%;
}

h1 {
  font-size: 1.8rem;
  margin-bottom: 10px;
  color: var(--accent);
}

p {
  font-size: 1rem;
  color: var(--muted);
  margin-bottom: 30px;
}

/* Button design */
a {
  display: inline-block;
  background: var(--accent);
  color: #0f172a;
  text-decoration: none;
  font-weight: 600;
  padding: 12px 24px;
  border-radius: var(--radius);
  transition: all 0.3s ease;
  box-shadow: 0 4px 15px rgba(56, 189, 248, 0.3);
}

a:hover {
  background: #0ea5e9;
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(14, 165, 233, 0.4);
}

/* Success animation */
@keyframes success-pop {
  0% { transform: scale(0.8); opacity: 0; }
  100% { transform: scale(1); opacity: 1; }
}

.container {
  animation: success-pop 0.6s ease-out;
}
</style>
</head>
<body>

<div class="container">
  <h1>🎉 Event Added Successfully!</h1>
  <p>Your event has been saved in the system.</p>

  <a href="/addEventForm">➕ Add Another Event</a>
</div>

</body>
</html>
