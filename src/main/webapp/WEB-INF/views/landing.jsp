<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Management System</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600;700&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background: #0b0b0b;
        color: #fff;
        overflow-x: hidden;
    }

    /* Header */
    header {
        position: fixed;
        top: 0;
        width: 100%;
        background: rgba(0, 0, 0, 0.85);
        backdrop-filter: blur(10px);
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 18px 60px;
        z-index: 1000;
        border-bottom: 1px solid rgba(255,255,255,0.1);
        box-shadow: 0 5px 15px rgba(0,0,0,0.5);
    }

    header h1 {
        font-size: 28px;
        font-weight: 700;
        color: #00d0ff;
        letter-spacing: 1px;
    }

    nav a {
        color: #fff;
        margin: 0 18px;
        text-decoration: none;
        font-weight: 500;
        transition: all 0.3s ease;
        position: relative;
    }

    nav a:hover {
        color: #00d0ff;
        text-shadow: 0 0 10px #00d0ff;
    }

    /* Hero Section */
    .hero {
        position: relative;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
        overflow: hidden;
    }

    .hero video {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        filter: brightness(55%);
        z-index: -2;
    }

    .overlay {
        position: absolute;
        width: 100%;
        height: 100%;
        background: linear-gradient(120deg, rgba(0,200,255,0.35), rgba(255,0,150,0.35));
        z-index: -1;
        animation: bgshift 6s infinite alternate ease-in-out;
    }

    @keyframes bgshift {
        0% { opacity: 0.8; }
        100% { opacity: 1; }
    }

    .hero-content {
        background: rgba(255,255,255,0.12);
        padding: 60px 80px;
        border-radius: 20px;
        backdrop-filter: blur(15px);
        box-shadow: 0 0 30px rgba(0,0,0,0.5);
        animation: fadeUp 2s ease;
    }

    @keyframes fadeUp {
        0% { opacity: 0; transform: translateY(50px); }
        100% { opacity: 1; transform: translateY(0); }
    }

    .hero h2 {
        font-size: 58px;
        font-weight: 700;
        margin-bottom: 20px;
        color: #fff;
        text-shadow: 0 0 20px rgba(0,195,255,0.7);
    }

    .hero p {
        font-size: 20px;
        color: #e0e0e0;
        max-width: 700px;
        margin: 0 auto 35px;
        line-height: 1.6;
    }

    .btn {
        background: linear-gradient(45deg, #00e0ff, #ff00b8);
        color: #fff;
        padding: 14px 40px;
        border: none;
        border-radius: 40px;
        font-size: 18px;
        font-weight: 600;
        text-decoration: none;
        box-shadow: 0 0 25px rgba(0,195,255,0.7);
        transition: all 0.4s ease;
    }

    .btn:hover {
        transform: scale(1.1);
        box-shadow: 0 0 40px rgba(255,0,180,0.9);
    }

    /* Featured Events */
    .featured-events {
        background: #0d0d0d;
        padding: 100px 80px;
        text-align: center;
    }

    .featured-events h2 {
        font-size: 36px;
        color: #00e0ff;
        text-transform: uppercase;
        margin-bottom: 60px;
        position: relative;
    }

    .featured-events h2::after {
        content: '';
        position: absolute;
        width: 100px;
        height: 4px;
        background: linear-gradient(45deg, #00e0ff, #ff00b8);
        left: 50%;
        transform: translateX(-50%);
        bottom: -15px;
        border-radius: 2px;
    }

    .event-cards {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 40px;
    }

    .event-card {
        background: rgba(255,255,255,0.1);
        border-radius: 20px;
        overflow: hidden;
        width: 330px;
        box-shadow: 0 0 25px rgba(0,0,0,0.5);
        transition: all 0.4s ease-in-out;
        backdrop-filter: blur(6px);
    }

    .event-card img {
        width: 100%;
        height: 220px;
        object-fit: cover;
        transition: transform 0.5s ease;
    }

    .event-card:hover img {
        transform: scale(1.1);
    }

    .event-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 0 35px rgba(0,195,255,0.8);
    }

    .event-info {
        padding: 20px;
    }

    .event-info h3 {
        color: #00e0ff;
        font-size: 22px;
        margin-bottom: 10px;
    }

    .event-info p {
        color: #ccc;
        font-size: 15px;
        line-height: 1.6;
    }

    /* About Section */
    .about {
        background: #101010;
        padding: 100px 60px;
        text-align: center;
    }

    .about h2 {
        font-size: 34px;
        color: #00e0ff;
        margin-bottom: 25px;
        text-transform: uppercase;
    }

    .about p {
        font-size: 18px;
        color: #ccc;
        line-height: 1.8;
        max-width: 800px;
        margin: 0 auto;
    }

    /* Footer */
    footer {
        background: #000;
        color: #aaa;
        text-align: center;
        padding: 25px 0;
        border-top: 1px solid rgba(255,255,255,0.1);
    }

    footer span {
        color: #00e0ff;
        font-weight: 600;
    }

    @media (max-width: 768px) {
        header {
            flex-direction: column;
            padding: 15px 20px;
        }
        nav a {
            display: block;
            margin: 10px 0;
        }
        .hero h2 {
            font-size: 36px;
        }
        .hero-content {
            padding: 40px 25px;
        }
        .event-cards {
            flex-direction: column;
            align-items: center;
        }
    }
</style>
</head>
<body>

    <header>
        <h1>Event Management System</h1>
        <nav>
            <a href="/">Home</a>
            <a href="/login">Login</a>
            <a href="/register">Register</a>
        </nav>
    </header>

    <section class="hero">
        <video autoplay muted loop>
            <source src="https://videos.pexels.com/video-files/3195394/3195394-hd_1920_1080_25fps.mp4" type="video/mp4">
        </video>
        <div class="overlay"></div>
        <div class="hero-content">
            <h2>Plan. Organize. Celebrate.</h2>
            <p>Turn your vision into reality — from weddings, corporate events, to live concerts. Let’s make it unforgettable together!</p>
            <a href="/login" class="btn">Book Your Event</a>
        </div>
    </section>

    <section class="featured-events">
        <h2>Featured Events</h2>
        <div class="event-cards">
            <div class="event-card">
                <img src="https://images.pexels.com/photos/3171837/pexels-photo-3171837.jpeg?auto=compress&cs=tinysrgb&w=800" alt="Wedding">
                <div class="event-info">
                    <h3>Weddings</h3>
                    <p>Make your dream day perfect with elegant décor, catering, and venue coordination.</p>
                </div>
            </div>

            <div class="event-card">
                <img src="https://images.pexels.com/photos/1181396/pexels-photo-1181396.jpeg?auto=compress&cs=tinysrgb&w=800" alt="Corporate">
                <div class="event-info">
                    <h3>Corporate Events</h3>
                    <p>Host professional conferences, meetings, and product launches with our expert team.</p>
                </div>
            </div>

            <div class="event-card">
                <img src="https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&w=800" alt="Concert">
                <div class="event-info">
                    <h3>Concerts & Festivals</h3>
                    <p>Bring energy and excitement to the crowd with perfectly organized live events.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="about">
        <h2>About Our System</h2>
        <p>Our Event Management System simplifies event planning with user-friendly tools to book, manage, and track events effortlessly. Whether it’s a small gathering or a large festival, we’ve got you covered!</p>
    </section>

    <footer>
        <p>© 2025 <span>Event Management System</span> | Developed by Avinash Belkar</p>
    </footer>

</body>
</html>
