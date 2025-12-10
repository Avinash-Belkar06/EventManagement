<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register | Event Management</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

<style>
/* -------- Modern Register Page CSS -------- */
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
.register-container {
  width: 100%;
  max-width: 400px;
  padding: 20px;
}

.card {
  background: var(--card-bg);
  border-radius: var(--radius);
  padding: 30px;
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
  backdrop-filter: blur(12px);
  text-align: center;
}

/* Title */
.title {
  font-size: 1.6rem;
  font-weight: 600;
  margin-bottom: 20px;
}

/* Form styles */
.form {
  display: flex;
  flex-direction: column;
  gap: 14px;
  text-align: left;
}

.form label {
  font-size: 14px;
  color: var(--muted);
}

.form input {
  padding: 12px 14px;
  border: none;
  border-radius: var(--radius);
  background: rgba(255, 255, 255, 0.1);
  color: var(--text-light);
  font-size: 15px;
  outline: none;
}

.form input::placeholder {
  color: var(--muted);
}

.form button {
  background: var(--accent);
  color: #0f172a;
  padding: 12px;
  border: none;
  border-radius: var(--radius);
  font-weight: 600;
  cursor: pointer;
  transition: 0.2s ease;
  margin-top: 4px;
}

.form button:hover {
  background: #0ea5e9;
  transform: translateY(-2px);
}

/* Footer link */
.footer {
  margin-top: 16px;
  font-size: 14px;
  color: var(--muted);
}

.footer a {
  color: var(--accent);
  text-decoration: none;
  font-weight: 500;
}

.footer a:hover {
  text-decoration: underline;
}
</style>
</head>
<body>

<div class="register-container">
  <div class="card">
    <h2 class="title">Create an Account</h2>

    <form action="register" method="post" class="form">
      <label for="participantName">Participant Name</label>
      <input type="text" id="participantName" name="participantName" placeholder="Enter your name" required>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="Enter your email" required>

      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required>

      <button type="submit">Register</button>
    </form>

    <div class="footer">
      <p>Already have an account? <a href="/login">Login here</a></p>
    </div>
  </div>
</div>

</body>
</html>
