<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Swiggaa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom-style.css" rel="stylesheet">
    <style>
        .team-member {
            text-align: center;
            margin-bottom: 30px;
        }
        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 5px solid #f8f9fa;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        .timeline {
            position: relative;
            padding: 20px 0;
        }
        .timeline-item {
            padding: 20px 0;
            position: relative;
        }
        .timeline-item::before {
            content: '';
            position: absolute;
            left: 50%;
            top: 0;
            bottom: 0;
            width: 2px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .value-card {
            text-align: center;
            padding: 40px 20px;
            border-radius: 20px;
            background: white;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            transition: all 0.3s ease;
            margin-bottom: 30px;
        }
        .value-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 45px rgba(0,0,0,0.15);
        }
        .value-icon {
            font-size: 3rem;
            margin-bottom: 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <%@ include file="common/navbar.jsp" %>

    <!-- Hero Section -->
    <section class="hero-enhanced text-white">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 fade-in-up">
                    <h1 class="display-3 fw-bold mb-4">About Swiggaa</h1>
                    <p class="lead mb-4">
                        We're on a mission to revolutionize food delivery and bring delicious meals 
                        from the best restaurants right to your doorstep.
                    </p>
                    <a href="${pageContext.request.contextPath}/menu" class="btn btn-light btn-lg me-3">
                        <i class="fas fa-utensils me-2"></i>Browse Menu
                    </a>
                    <a href="${pageContext.request.contextPath}/contact" class="btn btn-outline-light btn-lg">
                        <i class="fas fa-envelope me-2"></i>Contact Us
                    </a>
                </div>
                <div class="col-lg-6 text-center fade-in-down">
                    <i class="fas fa-pizza-slice float-animation" style="font-size: 15rem; opacity: 0.2;"></i>
                </div>
            </div>
        </div>
    </section>

    <div class="container my-5">
        <!-- Our Story Section -->
        <section class="mb-5">
            <div class="row">
                <div class="col-lg-6 mb-4 fade-in-left">
                    <h2 class="display-6 mb-4">
                        <span class="gradient-text">Our Story</span>
                    </h2>
                    <div class="section-divider" style="margin-left: 0;"></div>
                    <p class="lead text-muted">
                        Founded in 2024, Swiggaa started with a simple idea: making quality food delivery 
                        accessible to everyone, everywhere.
                    </p>
                    <p class="text-muted">
                        What began as a small operation in a single city has grown into a thriving platform 
                        connecting thousands of restaurants with millions of hungry customers. Our journey has 
                        been fueled by innovation, customer satisfaction, and an unwavering commitment to quality.
                    </p>
                    <p class="text-muted">
                        Today, we partner with the best local restaurants and delivery heroes to ensure that 
                        every meal is delivered fresh, fast, and with a smile. We're not just delivering food; 
                        we're delivering happiness, one order at a time.
                    </p>
                </div>
                <div class="col-lg-6 mb-4 fade-in-right">
                    <div class="card card-enhanced">
                        <div class="card-body">
                            <img src="https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=800" 
                                 class="img-fluid rounded" alt="Restaurant Kitchen">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Mission & Vision Section -->
        <section class="my-5 py-5">
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="card card-glass h-100 p-4">
                        <div class="card-body text-center">
                            <i class="fas fa-bullseye value-icon"></i>
                            <h3 class="mb-3">Our Mission</h3>
                            <p class="text-muted">
                                To connect people with the best food experiences by providing a seamless, 
                                reliable, and delightful delivery service that supports local businesses 
                                and brings communities together.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card card-glass h-100 p-4">
                        <div class="card-body text-center">
                            <i class="fas fa-eye value-icon"></i>
                            <h3 class="mb-3">Our Vision</h3>
                            <p class="text-muted">
                                To be the most trusted and loved food delivery platform globally, where 
                                every meal is an opportunity to create memorable moments and foster 
                                connections between restaurants and customers.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Core Values -->
        <section class="my-5">
            <div class="text-center mb-5">
                <h2 class="display-6 mb-3">
                    <span class="gradient-text">Our Core Values</span>
                </h2>
                <div class="section-divider"></div>
                <p class="lead text-muted">The principles that guide everything we do</p>
            </div>
            
            <div class="row">
                <div class="col-md-4">
                    <div class="value-card">
                        <i class="fas fa-heart value-icon"></i>
                        <h4 class="mb-3">Customer First</h4>
                        <p class="text-muted">
                            Every decision we make starts and ends with our customers. Your satisfaction 
                            is our top priority.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-card">
                        <i class="fas fa-shield-alt value-icon"></i>
                        <h4 class="mb-3">Quality Assured</h4>
                        <p class="text-muted">
                            We partner only with the best restaurants and maintain strict quality standards 
                            for every delivery.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-card">
                        <i class="fas fa-bolt value-icon"></i>
                        <h4 class="mb-3">Fast & Reliable</h4>
                        <p class="text-muted">
                            Speed matters. We ensure your food arrives hot, fresh, and exactly when you 
                            expect it.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-card">
                        <i class="fas fa-lightbulb value-icon"></i>
                        <h4 class="mb-3">Innovation</h4>
                        <p class="text-muted">
                            We constantly innovate to improve our platform, making food delivery easier 
                            and more enjoyable.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-card">
                        <i class="fas fa-handshake value-icon"></i>
                        <h4 class="mb-3">Partnership</h4>
                        <p class="text-muted">
                            We build strong relationships with restaurants and delivery partners to create 
                            win-win outcomes.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-card">
                        <i class="fas fa-leaf value-icon"></i>
                        <h4 class="mb-3">Sustainability</h4>
                        <p class="text-muted">
                            We're committed to reducing our environmental impact through eco-friendly 
                            packaging and practices.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Statistics Section -->
        <section class="my-5 py-5 bg-light rounded">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-3 mb-4">
                        <div class="stats-card">
                            <div class="stats-number counter" data-target="500">0</div>
                            <h5 class="mt-2 text-muted">Restaurants</h5>
                        </div>
                    </div>
                    <div class="col-md-3 mb-4">
                        <div class="stats-card">
                            <div class="stats-number counter" data-target="10000">0</div>
                            <h5 class="mt-2 text-muted">Happy Customers</h5>
                        </div>
                    </div>
                    <div class="col-md-3 mb-4">
                        <div class="stats-card">
                            <div class="stats-number counter" data-target="50000">0</div>
                            <h5 class="mt-2 text-muted">Orders Delivered</h5>
                        </div>
                    </div>
                    <div class="col-md-3 mb-4">
                        <div class="stats-card">
                            <div class="stats-number">4.8</div>
                            <h5 class="mt-2 text-muted">Average Rating</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Team Section (Optional) -->
        <section class="my-5">
            <div class="text-center mb-5">
                <h2 class="display-6 mb-3">
                    <span class="gradient-text">Meet Our Team</span>
                </h2>
                <div class="section-divider"></div>
                <p class="lead text-muted">The passionate people behind Swiggaa</p>
            </div>
            
            <div class="row">
                <div class="col-md-3">
                    <div class="team-member">
                        <div class="card card-enhanced">
                            <div class="card-body">
                                <i class="fas fa-user-circle" style="font-size: 100px; color: #667eea;"></i>
                                <h5 class="mt-3 mb-1">Rajesh Kumar</h5>
                                <p class="text-muted small">Founder & CEO</p>
                                <div class="social-links mt-3">
                                    <a href="#" class="text-muted me-2"><i class="fab fa-linkedin"></i></a>
                                    <a href="#" class="text-muted me-2"><i class="fab fa-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="team-member">
                        <div class="card card-enhanced">
                            <div class="card-body">
                                <i class="fas fa-user-circle" style="font-size: 100px; color: #764ba2;"></i>
                                <h5 class="mt-3 mb-1">Priya Sharma</h5>
                                <p class="text-muted small">Chief Technology Officer</p>
                                <div class="social-links mt-3">
                                    <a href="#" class="text-muted me-2"><i class="fab fa-linkedin"></i></a>
                                    <a href="#" class="text-muted me-2"><i class="fab fa-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="team-member">
                        <div class="card card-enhanced">
                            <div class="card-body">
                                <i class="fas fa-user-circle" style="font-size: 100px; color: #667eea;"></i>
                                <h5 class="mt-3 mb-1">Amit Patel</h5>
                                <p class="text-muted small">Head of Operations</p>
                                <div class="social-links mt-3">
                                    <a href="#" class="text-muted me-2"><i class="fab fa-linkedin"></i></a>
                                    <a href="#" class="text-muted me-2"><i class="fab fa-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="team-member">
                        <div class="card card-enhanced">
                            <div class="card-body">
                                <i class="fas fa-user-circle" style="font-size: 100px; color: #764ba2;"></i>
                                <h5 class="mt-3 mb-1">Sneha Reddy</h5>
                                <p class="text-muted small">Customer Experience Lead</p>
                                <div class="social-links mt-3">
                                    <a href="#" class="text-muted me-2"><i class="fab fa-linkedin"></i></a>
                                    <a href="#" class="text-muted me-2"><i class="fab fa-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Call to Action -->
        <section class="my-5 py-5 text-center">
            <div class="card card-enhanced bg-gradient-primary text-white">
                <div class="card-body py-5">
                    <h2 class="display-6 mb-4">Join the Swiggaa Family</h2>
                    <p class="lead mb-4">
                        Whether you're a food lover, restaurant owner, or delivery partner, 
                        there's a place for you with us.
                    </p>
                    <a href="${pageContext.request.contextPath}/auth/register" class="btn btn-light btn-lg me-3">
                        <i class="fas fa-user-plus me-2"></i>Sign Up Now
                    </a>
                    <a href="${pageContext.request.contextPath}/contact" class="btn btn-outline-light btn-lg">
                        <i class="fas fa-envelope me-2"></i>Get in Touch
                    </a>
                </div>
            </div>
        </section>
    </div>

    <!-- Footer -->
    <%@ include file="common/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
    <script>
        // Counter animation
        document.addEventListener('DOMContentLoaded', function() {
            const counters = document.querySelectorAll('.counter');
            
            counters.forEach(counter => {
                const target = parseInt(counter.getAttribute('data-target'));
                const duration = 2000;
                const increment = target / (duration / 16);
                let current = 0;
                
                const updateCounter = () => {
                    current += increment;
                    if (current < target) {
                        counter.textContent = Math.floor(current).toLocaleString();
                        requestAnimationFrame(updateCounter);
                    } else {
                        counter.textContent = target.toLocaleString();
                    }
                };
                
                // Start animation when element is in viewport
                const observer = new IntersectionObserver(entries => {
                    entries.forEach(entry => {
                        if (entry.isIntersecting) {
                            updateCounter();
                            observer.unobserve(entry.target);
                        }
                    });
                });
                
                observer.observe(counter);
            });
        });
    </script>
</body>
</html>
