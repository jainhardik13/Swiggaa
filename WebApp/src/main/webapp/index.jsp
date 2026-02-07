<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swiggaa - Food Delivery Made Easy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom-style.css" rel="stylesheet">
    <style>
        .hero-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 120px 0;
            position: relative;
            overflow: hidden;
        }
        .hero-section::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -10%;
            width: 50%;
            height: 150%;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            transform: rotate(-15deg);
        }
        .feature-card {
            transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
        }
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.15) !important;
        }
        .category-card {
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .category-card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <%@ include file="WEB-INF/views/common/navbar.jsp" %>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container" style="position: relative; z-index: 1;">
            <div class="row align-items-center">
                <div class="col-lg-6 fade-in-up">
                    <h1 class="display-3 fw-bold mb-4 text-shadow">Delicious Food Delivered Fast</h1>
                    <p class="lead mb-4 fs-4">Order your favorite meals from the best restaurants in town. Fresh, fast, and delivered right to your door!</p>
                    <c:choose>
                        <c:when test="${not empty loggedInUser}">
                            <a href="${pageContext.request.contextPath}/menu" class="btn btn-light btn-lg me-3">
                                <i class="fas fa-utensils me-2"></i>Browse Menu
                            </a>
                            <a href="${pageContext.request.contextPath}/orders" class="btn btn-outline-light btn-lg">
                                <i class="fas fa-history me-2"></i>My Orders
                            </a>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/auth/register" class="btn btn-light btn-lg px-5 me-3 btn-modern">
                                <i class="fas fa-user-plus me-2"></i>Get Started
                            </a>
                            <a href="${pageContext.request.contextPath}/auth/login" class="btn btn-outline-light btn-lg px-5 btn-modern">
                                <i class="fas fa-sign-in-alt me-2"></i>Login
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="col-lg-6 text-center fade-in-down">
                    <i class="fas fa-pizza-slice float-animation" style="font-size: 15rem; opacity: 0.3;"></i>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5 my-5">
        <div class="container">
            <div class="row text-center mb-5">
                <div class="col">
                    <h2 class="display-5 fw-bold">
                        <span class="gradient-text">Why Choose Swiggaa?</span>
                    </h2>
                    <div class="section-divider"></div>
                    <p class="lead text-muted">Experience the best food delivery service in town</p>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="feature-card-enhanced">
                        <div class="icon">
                            <i class="fas fa-shipping-fast"></i>
                        </div>
                        <h5 class="mb-3">Lightning Fast Delivery</h5>
                        <p class="text-muted">Get your food delivered in 30 minutes or less with our efficient delivery network and real-time tracking.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card-enhanced">
                        <div class="icon">
                            <i class="fas fa-utensils"></i>
                        </div>
                        <h5 class="mb-3">Premium Quality</h5>
                        <p class="text-muted">Fresh ingredients and top-rated restaurants ensure the best dining experience every single time.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card-enhanced">
                        <div class="icon">
                            <i class="fas fa-mobile-alt"></i>
                        </div>
                        <h5 class="mb-3">Easy Ordering</h5>
                        <p class="text-muted">Simple and intuitive interface makes ordering your favorite food a delightful breeze.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card-enhanced">
                        <div class="icon">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <h5 class="mb-3">Secure Payments</h5>
                        <p class="text-muted">Multiple payment options with industry-standard security ensuring safe transactions.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card-enhanced">
                        <div class="icon">
                            <i class="fas fa-headset"></i>
                        </div>
                        <h5 class="mb-3">24/7 Support</h5>
                        <p class="text-muted">Round-the-clock customer service ready to assist you with any queries or concerns.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-card-enhanced">
                        <div class="icon">
                            <i class="fas fa-percent"></i>
                        </div>
                        <h5 class="mb-3">Great Offers</h5>
                        <p class="text-muted">Exciting deals, discounts, and loyalty rewards to make every order more affordable.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="py-5 my-5 bg-light">
        <div class="container">
            <div class="row text-center mb-5">
                <div class="col">
                    <h2 class="display-5 fw-bold">
                        <span class="gradient-text">Popular Categories</span>
                    </h2>
                    <div class="section-divider"></div>
                    <p class="lead text-muted">Explore our most loved food categories</p>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6">
                    <a href="${pageContext.request.contextPath}/menu/category/Pizza" class="text-decoration-none">
                        <div class="card category-card card-enhanced text-center border-0">
                            <div class="card-body p-4">
                                <i class="fas fa-pizza-slice mb-3" style="font-size: 3.5rem; color: #ff6b35;"></i>
                                <h6 class="card-title fw-bold">Pizza</h6>
                                <p class="text-muted small mb-0">Cheesy & Delicious</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a href="${pageContext.request.contextPath}/menu/category/Burger" class="text-decoration-none">
                        <div class="card category-card card-enhanced text-center border-0">
                            <div class="card-body p-4">
                                <i class="fas fa-hamburger mb-3" style="font-size: 3.5rem; color: #ffc107;"></i>
                                <h6 class="card-title fw-bold">Burgers</h6>
                                <p class="text-muted small mb-0">Juicy & Tasty</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a href="${pageContext.request.contextPath}/menu/category/Indian" class="text-decoration-none">
                        <div class="card category-card card-enhanced text-center border-0">
                            <div class="card-body p-4">
                                <i class="fas fa-pepper-hot mb-3" style="font-size: 3.5rem; color: #dc3545;"></i>
                                <h6 class="card-title fw-bold">Indian</h6>
                                <p class="text-muted small mb-0">Spicy & Flavorful</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a href="${pageContext.request.contextPath}/menu/category/Dessert" class="text-decoration-none">
                        <div class="card category-card card-enhanced text-center border-0">
                            <div class="card-body p-4">
                                <i class="fas fa-ice-cream mb-3" style="font-size: 3.5rem; color: #17a2b8;"></i>
                                <h6 class="card-title fw-bold">Desserts</h6>
                                <p class="text-muted small mb-0">Sweet & Divine</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="${pageContext.request.contextPath}/menu" class="btn btn-gradient-primary btn-lg px-5">
                    <i class="fas fa-utensils me-2"></i>View Full Menu
                </a>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="py-5 my-5">
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

    <!-- Call to Action -->
    <section class="py-5 my-5">
        <div class="container">
            <div class="card card-enhanced bg-gradient-primary text-white text-center">
                <div class="card-body py-5">
                    <h2 class="display-6 mb-4">Ready to Order?</h2>
                    <p class="lead mb-4">Join thousands of happy customers and enjoy delicious food delivered to your doorstep!</p>
                    <c:choose>
                        <c:when test="${not empty loggedInUser}">
                            <a href="${pageContext.request.contextPath}/menu" class="btn btn-light btn-lg px-5">
                                <i class="fas fa-utensils me-2"></i>Order Now
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/auth/register" class="btn btn-light btn-lg px-5">
                                <i class="fas fa-user-plus me-2"></i>Sign Up Now
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <%@ include file="WEB-INF/views/common/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
    <script>
        // Counter animation (already in custom-scripts.js, but adding here for standalone)
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