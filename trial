<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Z2M Developer Portfolio - Showcasing projects and skills.">
    <title>Dev Portfolio | Z2M</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&family=Poppins:wght@500;700;800&display=swap" rel="stylesheet">

    <style>
        /* --- CSS VARIABLES & RESET --- */
        :root {
            /* Z2M Inspired Colors (Dark Theme) */
            --bg-color: #0b0d17;       /* Very dark blue/black */
            --card-bg: #15192b;        /* Slightly lighter for cards */
            --text-main: #e2e8f0;      /* Off-white */
            --text-muted: #94a3b8;     /* Greyish */
            --primary: #8b5cf6;        /* Violet/Purple (Z2M Accent) */
            --primary-hover: #7c3aed;
            --secondary: #0ea5e9;      /* Blue accent */
            --gradient: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
            
            --nav-height: 70px;
            --container-width: 1100px;
            --radius: 12px;
            --transition: all 0.3s ease;
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
            font-family: 'Inter', sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            line-height: 1.6;
            overflow-x: hidden;
        }

        h1, h2, h3, h4 {
            font-family: 'Poppins', sans-serif;
            color: #fff;
        }

        a {
            text-decoration: none;
            color: inherit;
            transition: var(--transition);
        }

        ul {
            list-style: none;
        }

        img {
            max-width: 100%;
            display: block;
        }

        /* --- UTILITY CLASSES --- */
        .container {
            max-width: var(--container-width);
            margin: 0 auto;
            padding: 0 20px;
        }

        .section-title {
            font-size: 2rem;
            text-align: center;
            margin-bottom: 1rem;
            position: relative;
            display: inline-block;
            left: 50%;
            transform: translateX(-50%);
        }

        .section-title::after {
            content: '';
            display: block;
            width: 60px;
            height: 4px;
            background: var(--gradient);
            margin: 10px auto 0;
            border-radius: 2px;
        }

        .section-subtitle {
            text-align: center;
            color: var(--text-muted);
            margin-bottom: 3rem;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn {
            display: inline-block;
            padding: 12px 28px;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            border: none;
            font-size: 1rem;
        }

        .btn-primary {
            background: var(--gradient);
            color: white;
            box-shadow: 0 4px 15px rgba(139, 92, 246, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(139, 92, 246, 0.6);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--primary);
            color: var(--primary);
            margin-left: 10px;
        }

        .btn-outline:hover {
            background: rgba(139, 92, 246, 0.1);
            color: white;
            border-color: white;
        }

        /* --- NAVIGATION --- */
        header {
            height: var(--nav-height);
            background: rgba(11, 13, 23, 0.95);
            backdrop-filter: blur(10px);
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            border-bottom: 1px solid rgba(255,255,255,0.05);
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 100%;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 800;
            background: var(--gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            letter-spacing: -0.5px;
        }

        .nav-links {
            display: flex;
            gap: 30px;
        }

        .nav-links a {
            font-size: 0.95rem;
            font-weight: 500;
            color: var(--text-muted);
            position: relative;
        }

        .nav-links a:hover, .nav-links a.active {
            color: white;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -4px;
            left: 0;
            background: var(--primary);
            transition: var(--transition);
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        /* --- HERO SECTION --- */
        #hero {
            padding-top: calc(var(--nav-height) + 60px);
            padding-bottom: 80px;
            min-height: 90vh;
            display: flex;
            align-items: center;
        }

        .hero-content {
            display: grid;
            grid-template-columns: 1.2fr 0.8fr;
            align-items: center;
            gap: 50px;
        }

        .hero-text h3 {
            font-size: 1.5rem;
            color: var(--primary);
            margin-bottom: 10px;
            font-weight: 500;
        }

        .hero-text h1 {
            font-size: 3.5rem;
            line-height: 1.1;
            margin-bottom: 20px;
        }

        .hero-text h1 span {
            color: var(--primary);
        }

        .hero-text p {
            font-size: 1.1rem;
            color: var(--text-muted);
            margin-bottom: 30px;
            max-width: 500px;
        }

        .hero-image {
            position: relative;
            display: flex;
            justify-content: center;
        }

        .hero-image img {
            width: 350px;
            height: 350px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid var(--card-bg);
            box-shadow: 0 0 50px rgba(139, 92, 246, 0.2);
            animation: float 6s ease-in-out infinite;
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
            100% { transform: translateY(0px); }
        }

        /* --- SKILLS SECTION --- */
        #skills {
            padding: 80px 0;
            background: #0f121f;
        }

        .skills-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
        }

        .skill-tag {
            background: var(--card-bg);
            padding: 12px 24px;
            border-radius: 8px;
            font-weight: 600;
            color: var(--text-main);
            border: 1px solid rgba(255,255,255,0.05);
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .skill-tag:hover {
            border-color: var(--primary);
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }

        .skill-tag i {
            color: var(--primary);
        }

        /* --- PROJECTS SECTION --- */
        #projects {
            padding: 100px 0;
        }

        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .project-card {
            background: var(--card-bg);
            border-radius: var(--radius);
            overflow: hidden;
            border: 1px solid rgba(255,255,255,0.05);
            transition: var(--transition);
            position: relative;
        }

        .project-card:hover {
            transform: translateY(-10px);
            border-color: rgba(139, 92, 246, 0.3);
            box-shadow: 0 20px 40px rgba(0,0,0,0.4);
        }

        .card-image {
            height: 200px;
            width: 100%;
            overflow: hidden;
        }

        .card-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .project-card:hover .card-image img {
            transform: scale(1.05);
        }

        .card-content {
            padding: 25px;
        }

        .card-content h3 {
            font-size: 1.4rem;
            margin-bottom: 10px;
        }

        .card-content p {
            color: var(--text-muted);
            font-size: 0.95rem;
            margin-bottom: 20px;
            line-height: 1.5;
        }

        .card-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-bottom: 20px;
        }

        .card-tag {
            font-size: 0.75rem;
            background: rgba(139, 92, 246, 0.1);
            color: var(--primary);
            padding: 4px 10px;
            border-radius: 4px;
            font-weight: 600;
        }

        .card-links {
            display: flex;
            gap: 15px;
        }

        .link-icon {
            font-size: 0.9rem;
            font-weight: 600;
            color: white;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .link-icon:hover {
            color: var(--primary);
            text-decoration: underline;
        }

        /* --- CONTACT SECTION --- */
        #contact {
            padding: 100px 0;
            background: linear-gradient(to top, #0b0d17, #0f121f);
        }

        .contact-wrapper {
            background: var(--card-bg);
            padding: 40px;
            border-radius: var(--radius);
            max-width: 800px;
            margin: 0 auto;
            border: 1px solid rgba(255,255,255,0.05);
            text-align: center;
        }

        .contact-wrapper p {
            color: var(--text-muted);
            margin-bottom: 30px;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }

        .social-btn {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: rgba(255,255,255,0.05);
            display: flex;
            justify-content: center;
            align-items: center;
            transition: var(--transition);
            font-size: 1.2rem;
        }

        .social-btn:hover {
            background: var(--primary);
            transform: scale(1.1);
        }

        /* --- FOOTER --- */
        footer {
            padding: 30px 0;
            text-align: center;
            color: var(--text-muted);
            font-size: 0.9rem;
            border-top: 1px solid rgba(255,255,255,0.05);
        }

        footer span {
            color: var(--primary);
        }

        /* --- RESPONSIVE MEDIA QUERIES --- */
        @media (max-width: 900px) {
            .hero-content {
                grid-template-columns: 1fr;
                text-align: center;
                gap: 30px;
            }

            .hero-text h1 {
                font-size: 2.8rem;
            }

            .hero-text p {
                margin: 0 auto 30px;
            }

            .hero-image img {
                width: 280px;
                height: 280px;
            }

            .nav-links {
                display: none; /* Simple hiding for mobile for this showcase, normally would use JS toggle */
            }
            
            /* Simple mobile menu substitute for CSS-only */
            nav {
                justify-content: center;
            }
        }

        @media (max-width: 480px) {
            .hero-text h1 {
                font-size: 2.2rem;
            }
            
            .btn {
                width: 100%;
                margin: 10px 0 0 0;
                text-align: center;
            }

            .btn-outline {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>

    <!-- NAVIGATION -->
    <header>
        <div class="container">
            <nav>
                <a href="#" class="logo">&lt;Z2M /&gt;</a>
                <ul class="nav-links">
                    <li><a href="#hero">Home</a></li>
                    <li><a href="#skills">Skills</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <!-- HERO SECTION -->
        <section id="hero">
            <div class="container">
                <div class="hero-content">
                    <div class="hero-text">
                        <h3>Hello, I'm a</h3>
                        <h1>Web <span>Developer</span> & <br> Designer</h1>
                        <p>I build accessible, pixel-perfect, and performant web experiences using modern technologies. Inspired by the Zero to Mastery community.</p>
                        <div class="cta-buttons">
                            <a href="#projects" class="btn btn-primary">View Work</a>
                            <a href="#contact" class="btn btn-outline">Contact Me</a>
                        </div>
                    </div>
                    <div class="hero-image">
                        <!-- Random tech/abstract image for avatar -->
                        <img src="https://picsum.photos/seed/z2mdev/400/400" alt="Developer Avatar">
                    </div>
                </div>
            </div>
        </section>

        <!-- SKILLS SECTION -->
        <section id="skills">
            <div class="container">
                <h2 class="section-title">Technical Skills</h2>
                <p class="section-subtitle">The technologies and tools I use to bring ideas to life.</p>
                
                <div class="skills-grid">
                    <!-- Core -->
                    <div class="skill-tag">HTML5</div>
                    <div class="skill-tag">CSS3</div>
                    <div class="skill-tag">JavaScript (ES6+)</div>
                    
                    <!-- Frameworks/Libs -->
                    <div class="skill-tag">React.js</div>
                    <div class="skill-tag">Tailwind CSS</div>
                    <div class="skill-tag">Node.js</div>
                    
                    <!-- Backend/Other -->
                    <div class="skill-tag">Python</div>
                    <div class="skill-tag">Git & GitHub</div>
                    <div class="skill-tag">Figma</div>
                    <div class="skill-tag">SQL</div>
                    <div class="skill-tag">REST APIs</div>
                </div>
            </div>
        </section>

        <!-- PROJECTS SECTION -->
        <section id="projects">
            <div class="container">
                <h2 class="section-title">Featured Projects</h2>
                <p class="section-subtitle">A selection of projects I've built during my coding journey.</p>

                <div class="projects-grid">
                    
                    <!-- Project 1 -->
                    <article class="project-card">
                        <div class="card-image">
                            <img src="https://picsum.photos/seed/crypto/600/400" alt="Crypto Dashboard">
                        </div>
                        <div class="card-content">
                            <h3>Crypto Dashboard</h3>
                            <p>A real-time cryptocurrency price tracker dashboard fetching data from a public API. Features dark mode and responsive charts.</p>
                            <div class="card-tags">
                                <span class="card-tag">JavaScript</span>
                                <span class="card-tag">API</span>
                                <span class="card-tag">CSS Grid</span>
                            </div>
                            <div class="card-links">
                                <a href="#" class="link-icon">Live Demo &nearr;</a>
                                <a href="#" class="link-icon">GitHub &lt;/&gt;</a>
                            </div>
                        </div>
                    </article>

                    <!-- Project 2 -->
                    <article class="project-card">
                        <div class="card-image">
                            <img src="https://picsum.photos/seed/movie/600/400" alt="Movie App">
                        </div>
                        <div class="card-content">
                            <h3>Movie Discovery App</h3>
                            <p>Browse trending movies, view details, and create a watchlist. Integrated with The Movie Database (TMDB) API.</p>
                            <div class="card-tags">
                                <span class="card-tag">React</span>
                                <span class="card-tag">Axios</span>
                                <span class="card-tag">Hooks</span>
                            </div>
                            <div class="card-links">
                                <a href="#" class="link-icon">Live Demo &nearr;</a>
                                <a href="#" class="link-icon">GitHub &lt;/&gt;</a>
                            </div>
                        </div>
                    </article>

                    <!-- Project 3 -->
                    <article class="project-card">
                        <div class="card-image">
                            <img src="https://picsum.photos/seed/task/600/400" alt="Task Manager">
                        </div>
                        <div class="card-content">
                            <h3>Task Master</h3>
                            <p>A productivity app to manage daily tasks. Includes drag-and-drop functionality, local storage persistence, and category filtering.</p>
                            <div class="card-tags">
                                <span class="card-tag">Vanilla JS</span>
                                <span class="card-tag">Local Storage</span>
                                <span class="card-tag">DOM Manipulation</span>
                            </div>
                            <div class="card-links">
                                <a href="#" class="link-icon">Live Demo &nearr;</a>
                                <a href="#" class="link-icon">GitHub &lt;/&gt;</a>
                            </div>
                        </div>
                    </article>

                </div>
            </div>
        </section>

        <!-- CONTACT SECTION -->
        <section id="contact">
            <div class="container">
                <h2 class="section-title">Get In Touch</h2>
                <div class="contact-wrapper">
                    <p>I'm currently looking for new opportunities. Whether you have a question or just want to say hi, I'll try my best to get back to you!</p>
                    <a href="mailto:your-email@example.com" class="btn btn-primary">Say Hello</a>
                    
                    <div class="social-links">
                        <a href="#" class="social-btn" aria-label="GitHub">GH</a>
                        <a href="#" class="social-btn" aria-label="LinkedIn">IN</a>
                        <a href="#" class="social-btn" aria-label="Twitter">TW</a>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <p>&copy; 2023 Z2M Developer. Built with <span>&hearts;</span> and Code.</p>
        </div>
    </footer>

</body>
</html>
