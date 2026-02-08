<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio | Future Developer</title>
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        /* --- CSS VARIABLES & RESET --- */
        :root {
            --bg-color: #0a192f;       /* Deep Navy Background */
            --light-navy: #112240;     /* Lighter Navy for Cards */
            --text-primary: #ccd6f6;   /* Light White/Grey text */
            --text-secondary: #8892b0; /* Muted Grey text */
            --accent: #64ffda;         /* Neon Green/Cyan Accent */
            --font-main: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            --transition: all 0.3s ease-in-out;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background-color: var(--bg-color);
            color: var(--text-primary);
            font-family: var(--font-main);
            line-height: 1.6;
            overflow-x: hidden;
        }

        a {
            text-decoration: none;
            color: inherit;
            transition: var(--transition);
        }

        ul {
            list-style: none;
        }

        /* --- NAVIGATION --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            position: fixed;
            width: 100%;
            top: 0;
            background: rgba(10, 25, 47, 0.95);
            z-index: 1000;
            backdrop-filter: blur(10px);
            box-shadow: 0 2px 10px rgba(0,0,0,0.3);
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--accent);
            letter-spacing: 1px;
        }

        .nav-links {
            display: flex;
            gap: 30px;
        }

        .nav-links a {
            color: var(--text-primary);
            font-size: 0.9rem;
        }

        .nav-links a:hover {
            color: var(--accent);
        }

        .resume-btn {
            border: 1px solid var(--accent);
            padding: 8px 16px;
            border-radius: 4px;
            color: var(--accent) !important;
        }

        .resume-btn:hover {
            background: rgba(100, 255, 218, 0.1);
        }

        /* Mobile Menu Toggle */
        .menu-toggle {
            display: none;
            font-size: 1.5rem;
            color: var(--accent);
            cursor: pointer;
        }

        /* --- SECTIONS COMMON --- */
        section {
            padding: 100px 150px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-title {
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            margin-bottom: 40px;
            color: var(--text-primary);
            font-weight: bold;
        }

        .section-title::after {
            content: "";
            display: block;
            width: 300px;
            height: 1px;
            background: var(--light-navy);
            margin-left: 20px;
        }

        .section-title span {
            color: var(--accent);
            margin-right: 10px;
            font-family: monospace;
        }

        /* --- HERO SECTION --- */
        #hero {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            padding-top: 0;
        }

        .hero-greeting {
            color: var(--accent);
            font-family: monospace;
            font-size: 1rem;
            margin-bottom: 20px;
        }

        .hero-name {
            font-size: 4rem;
            line-height: 1.1;
            color: var(--text-primary);
            margin-bottom: 10px;
        }

        .hero-role {
            font-size: 3rem;
            color: var(--text-secondary);
            margin-bottom: 20px;
        }

        .hero-desc {
            max-width: 500px;
            color: var(--text-secondary);
            margin-bottom: 50px;
            font-size: 1.1rem;
        }

        .cta-btn {
            padding: 15px 30px;
            border: 2px solid var(--accent);
            color: var(--accent);
            border-radius: 5px;
            font-size: 1rem;
            background: transparent;
            cursor: pointer;
        }

        .cta-btn:hover {
            background: rgba(100, 255, 218, 0.1);
        }

        /* --- ABOUT SECTION --- */
        .about-content {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 50px;
        }

        .about-text p {
            margin-bottom: 15px;
            color: var(--text-secondary);
        }

        .skills-list {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
            margin-top: 20px;
            font-family: monospace;
            font-size: 0.9rem;
        }

        .skills-list li::before {
            content: "▹";
            color: var(--accent);
            margin-right: 10px;
        }

        .profile-img-wrapper {
            position: relative;
            border-radius: 10px;
        }

        .profile-img-wrapper img {
            width: 100%;
            border-radius: 10px;
            filter: grayscale(100%) contrast(1);
            transition: var(--transition);
            box-shadow: 20px 20px 0px rgba(100, 255, 218, 0.2);
        }

        .profile-img-wrapper:hover img {
            filter: none;
            transform: translate(-5px, -5px);
            box-shadow: 25px 25px 0px rgba(100, 255, 218, 0.4);
        }

        /* --- PROJECTS SECTION --- */
        .projects-grid {
            display: flex;
            flex-direction: column;
            gap: 80px;
        }

        .project-card {
            display: grid;
            grid-template-columns: repeat(12, 1fr);
            align-items: center;
        }

        .project-content {
            grid-column: 7 / -1;
            text-align: right;
            z-index: 2;
        }

        .project-card:nth-of-type(even) .project-content {
            grid-column: 1 / 7;
            text-align: left;
        }

        .project-overline {
            color: var(--accent);
            font-family: monospace;
            font-size: 0.9rem;
            margin-bottom: 10px;
        }

        .project-title {
            font-size: 1.7rem;
            color: var(--text-primary);
            margin-bottom: 20px;
        }

        .project-description {
            background: var(--light-navy);
            padding: 25px;
            border-radius: 5px;
            color: var(--text-secondary);
            box-shadow: 0 10px 30px -15px rgba(2,12,27,0.7);
            margin-bottom: 20px;
        }

        .project-tech-list {
            display: flex;
            justify-content: flex-end;
            gap: 20px;
            font-family: monospace;
            font-size: 0.8rem;
            color: var(--text-secondary);
            margin-bottom: 20px;
        }

        .project-card:nth-of-type(even) .project-tech-list {
            justify-content: flex-start;
        }

        .project-links {
            display: flex;
            justify-content: flex-end;
            gap: 20px;
            font-size: 1.3rem;
        }

        .project-card:nth-of-type(even) .project-links {
            justify-content: flex-start;
        }

        .project-links a:hover {
            color: var(--accent);
        }

        .project-image {
            grid-column: 1 / 8;
            grid-row: 1 / -1;
            position: relative;
            z-index: 1;
            border-radius: 5px;
            overflow: hidden;
        }

        .project-card:nth-of-type(even) .project-image {
            grid-column: 6 / -1;
        }

        .project-image img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            filter: grayscale(100%) opacity(0.7);
            transition: var(--transition);
        }

        .project-image:hover img {
            filter: none;
            transform: scale(1.03);
        }

        /* --- CONTACT SECTION --- */
        #contact {
            text-align: center;
            max-width: 600px;
            margin-bottom: 100px;
        }

        #contact .section-title {
            justify-content: center;
        }

        #contact .section-title::after {
            display: none;
        }

        .contact-text {
            color: var(--text-secondary);
            font-size: 1.1rem;
            margin-bottom: 50px;
        }

        /* --- FOOTER --- */
        footer {
            text-align: center;
            padding: 20px;
            color: var(--text-secondary);
            font-family: monospace;
            font-size: 0.8rem;
            margin-bottom: 20px;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 15px;
        }

        .social-links a {
            font-size: 1.2rem;
        }

        .social-links a:hover {
            color: var(--accent);
            transform: translateY(-3px);
        }

        /* --- RESPONSIVE DESIGN --- */
        @media (max-width: 768px) {
            section {
                padding: 80px 30px;
            }
            
            .navbar {
                padding: 20px 30px;
            }

            .menu-toggle {
                display: block;
            }

            .nav-links {
                display: none; /* In a real site, use JS to toggle */
            }

            .hero-name {
                font-size: 3rem;
            }

            .hero-role {
                font-size: 2rem;
            }

            .about-content {
                grid-template-columns: 1fr;
            }

            .profile-img-wrapper {
                display: none; /* Hide image on small screens to save space */
            }

            .project-card {
                display: block; /* Stack projects */
            }

            .project-content, .project-card:nth-of-type(even) .project-content {
                grid-column: auto;
                text-align: left;
                margin-bottom: 20px;
            }

            .project-image, .project-card:nth-of-type(even) .project-image {
                grid-column: auto;
                display: none; /* Simplify on mobile */
            }
            
            .project-tech-list, .project-card:nth-of-type(even) .project-tech-list {
                justify-content: flex-start;
            }

            .project-links, .project-card:nth-of-type(even) .project-links {
                justify-content: flex-start;
            }
        }
    </style>
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar">
        <div class="logo">PORTFOLIO.</div>
        <div class="menu-toggle"><i class="fas fa-bars"></i></div>
        <ul class="nav-links">
            <li><a href="#about"><span>01.</span>About</a></li>
            <li><a href="#projects"><span>02.</span>Projects</a></li>
            <li><a href="#contact"><span>03.</span>Contact</a></li>
            <li><a href="#" class="resume-btn">Resume</a></li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <section id="hero">
        <p class="hero-greeting">Hi, my name is</p>
        <h1 class="hero-name">Harshil Kachlia.</h1>
        <h2 class="hero-role">I build things for the web.</h2>
        <p class="hero-desc">
            I am a 7th-grade student passionate about coding and technology. I'm currently learning HTML, CSS, and exploring how to build cool websites.
        </p>
        <a href="#projects" class="cta-btn">Check out my work</a>
    </section>

    <!-- About Section -->
    <section id="about">
        <h2 class="section-title"><span>01.</span> About Me</h2>
        <div class="about-content">
            <div class="about-text">
                <p>Hello! My name is Harshil and I enjoy creating things that live on the internet. My interest in web development started recently when I joined my school's computer club.</p>
                <p>I am currently in 7th Standard. I spend my free time learning how to code, watching sci-fi movies, and playing video games.</p>
                <p>Here are a few technologies I've been working with recently:</p>
                <ul class="skills-list">
                    <li>HTML5</li>
                    <li>CSS3</li>
                    <li>JavaScript (Basic)</li>
                    <li>Python</li>
                    <li>Git & GitHub</li>
                    <li>VS Code</li>
                </ul>
            </div>
            <div class="profile-img-wrapper">
                <!-- Placeholder image - Replace with your photo -->
                <img src="https://picsum.photos/seed/harshil/400/400" alt="Harshil Profile">
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects">
        <h2 class="section-title"><span>02.</span> Some Things I've Built</h2>
        
        <div class="projects-grid">
            
            <!-- Project 1 -->
            <div class="project-card">
                <div class="project-image">
                    <img src="https://picsum.photos/seed/proj1/600/350" alt="Project One">
                </div>
                <div class="project-content">
                    <p class="project-overline">Featured Project</p>
                    <h3 class="project-title">Personal Portfolio Website</h3>
                    <div class="project-description">
                        <p>A website to showcase my skills and projects. It is built using pure HTML and CSS and is fully responsive for mobile phones.</p>
                    </div>
                    <ul class="project-tech-list">
                        <li>HTML</li>
                        <li>CSS</li>
                        <li>GitHub Pages</li>
                    </ul>
                    <div class="project-links">
                        <a href="#" aria-label="GitHub Link"><i class="fab fa-github"></i></a>
                        <a href="#" aria-label="External Link"><i class="fas fa-external-link-alt"></i></a>
                    </div>
                </div>
            </div>

            <!-- Project 2 -->
            <div class="project-card">
                <div class="project-image">
                    <img src="https://picsum.photos/seed/proj2/600/350" alt="Project Two">
                </div>
                <div class="project-content">
                    <p class="project-overline">School Project</p>
                    <h3 class="project-title">Science Calculator</h3>
                    <div class="project-description">
                        <p>A simple calculator web app that helps calculate physics formulas like speed and distance. It uses basic JavaScript to calculate results.</p>
                    </div>
                    <ul class="project-tech-list">
                        <li>JavaScript</li>
                        <li>Math</li>
                        <li>CSS Flexbox</li>
                    </ul>
                    <div class="project-links">
                        <a href="#" aria-label="GitHub Link"><i class="fab fa-github"></i></a>
                        <a href="#" aria-label="External Link"><i class="fas fa-external-link-alt"></i></a>
                    </div>
                </div>
            </div>

            <!-- Project 3 -->
            <div class="project-card">
                <div class="project-image">
                    <img src="https://picsum.photos/seed/proj3/600/350" alt="Project Three">
                </div>
                <div class="project-content">
                    <p class="project-overline">Learning</p>
                    <h3 class="project-title">Tic Tac Toe Game</h3>
                    <div class="project-description">
                        <p>A classic Tic Tac Toe game created to practice logic in programming. Two players can play on the same screen.</p>
                    </div>
                    <ul class="project-tech-list">
                        <li>HTML</li>
                        <li>CSS Grid</li>
                        <li>JS Logic</li>
                    </ul>
                    <div class="project-links">
                        <a href="#" aria-label="GitHub Link"><i class="fab fa-github"></i></a>
                        <a href="#" aria-label="External Link"><i class="fas fa-external-link-alt"></i></a>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <h2 class="section-title"><span>03.</span> What's Next?</h2>
        <h1 style="font-size: 3rem; color: var(--text-primary); margin-bottom: 20px;">Get In Touch</h1>
        <p class="contact-text">
            I am currently looking for more opportunities to learn and build projects. Whether you have a question or just want to say hi, my inbox is always open!
        </p>
        <a href="mailto:youremail@example.com" class="cta-btn">Say Hello</a>
    </section>

    <!-- Footer -->
    <footer>
        <div class="social-links">
            <a href="#"><i class="fab fa-github"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
        <p>Designed & Built by Harshil Kachlia</p>
    </footer>

    <!-- Simple Script for Mobile Menu -->
    <script>
        const menuToggle = document.querySelector('.menu-toggle');
        const navLinks = document.querySelector('.nav-links');

        menuToggle.addEventListener('click', () => {
            if (navLinks.style.display === 'flex') {
                navLinks.style.display = 'none';
            } else {
                navLinks.style.display = 'flex';
                navLinks.style.flexDirection = 'column';
                navLinks.style.position = 'absolute';
                navLinks.style.top = '70px';
                navLinks.style.right = '0';
                navLinks.style.width = '100%';
                navLinks.style.background = '#112240';
                navLinks.style.padding = '20px';
                navLinks.style.textAlign = 'center';
            }
        });
    </script>
</body>
</html>
