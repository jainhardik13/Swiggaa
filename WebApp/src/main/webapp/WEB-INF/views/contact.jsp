<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Swiggaa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom-style.css" rel="stylesheet">
    <style>
        .contact-info-card {
            text-align: center;
            padding: 30px 20px;
            border-radius: 15px;
            background: white;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            transition: all 0.3s ease;
            height: 100%;
        }
        .contact-info-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }
        .contact-icon {
            width: 70px;
            height: 70px;
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 50%;
            font-size: 1.8rem;
            color: white;
        }
        .map-container {
            height: 400px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
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
                    <h1 class="display-3 fw-bold mb-4">Get in Touch</h1>
                    <p class="lead mb-4">
                        Have questions or feedback? We'd love to hear from you. 
                        Our team is here to help 24/7.
                    </p>
                </div>
                <div class="col-lg-6 text-center fade-in-down">
                    <i class="fas fa-headset float-animation" style="font-size: 15rem; opacity: 0.2;"></i>
                </div>
            </div>
        </div>
    </section>

    <div class="container my-5">
        <!-- Contact Information Cards -->
        <div class="row mb-5">
            <div class="col-md-4 mb-4">
                <div class="contact-info-card">
                    <div class="contact-icon">
                        <i class="fas fa-phone-alt"></i>
                    </div>
                    <h4 class="mb-3">Call Us</h4>
                    <p class="text-muted mb-2">Customer Support</p>
                    <a href="tel:+919876543210" class="h5 text-decoration-none">+91 98765 43210</a>
                    <p class="text-muted small mt-3">Mon-Sun: 9:00 AM - 11:00 PM</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="contact-info-card">
                    <div class="contact-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <h4 class="mb-3">Email Us</h4>
                    <p class="text-muted mb-2">General Inquiries</p>
                    <a href="mailto:support@swiggaa.com" class="h6 text-decoration-none">support@swiggaa.com</a>
                    <p class="text-muted small mt-3">We'll respond within 24 hours</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="contact-info-card">
                    <div class="contact-icon">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <h4 class="mb-3">Visit Us</h4>
                    <p class="text-muted mb-2">Main Office</p>
                    <p class="h6">123 Food Street<br>Tech City, Bangalore<br>Karnataka - 560001</p>
                </div>
            </div>
        </div>

        <!-- Contact Form Section -->
        <div class="row mb-5">
            <div class="col-lg-8 mx-auto">
                <div class="card card-enhanced">
                    <div class="card-body p-5">
                        <h2 class="mb-4 text-center">
                            <span class="gradient-text">Send us a Message</span>
                        </h2>
                        <div class="section-divider"></div>

                        <!-- Success Message -->
                        <c:if test="${not empty success}">
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <i class="fas fa-check-circle me-2"></i>${success}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        </c:if>

                        <!-- Error Message -->
                        <c:if test="${not empty error}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <i class="fas fa-exclamation-circle me-2"></i>${error}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        </c:if>

                        <form action="${pageContext.request.contextPath}/contact/submit" method="post" class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <label class="form-label-enhanced">
                                        <i class="fas fa-user me-2 text-primary"></i>Your Name *
                                    </label>
                                    <input type="text" class="form-control form-control-enhanced" 
                                           name="name" placeholder="Enter your full name" required>
                                    <div class="invalid-feedback">Please provide your name.</div>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label class="form-label-enhanced">
                                        <i class="fas fa-envelope me-2 text-primary"></i>Email Address *
                                    </label>
                                    <input type="email" class="form-control form-control-enhanced" 
                                           name="email" placeholder="your.email@example.com" required>
                                    <div class="invalid-feedback">Please provide a valid email.</div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <label class="form-label-enhanced">
                                        <i class="fas fa-phone me-2 text-primary"></i>Phone Number
                                    </label>
                                    <input type="tel" class="form-control form-control-enhanced" 
                                           name="phone" placeholder="+91 98765 43210">
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label class="form-label-enhanced">
                                        <i class="fas fa-list me-2 text-primary"></i>Subject *
                                    </label>
                                    <select class="form-select form-control-enhanced" name="subject" required>
                                        <option value="">Select a subject</option>
                                        <option value="general">General Inquiry</option>
                                        <option value="support">Customer Support</option>
                                        <option value="partnership">Restaurant Partnership</option>
                                        <option value="delivery">Delivery Issue</option>
                                        <option value="payment">Payment Issue</option>
                                        <option value="feedback">Feedback</option>
                                        <option value="other">Other</option>
                                    </select>
                                    <div class="invalid-feedback">Please select a subject.</div>
                                </div>
                            </div>
                            <div class="mb-4">
                                <label class="form-label-enhanced">
                                    <i class="fas fa-comment me-2 text-primary"></i>Message *
                                </label>
                                <textarea class="form-control form-control-enhanced" name="message" 
                                          rows="6" placeholder="Tell us how we can help you..." required></textarea>
                                <div class="invalid-feedback">Please provide a message.</div>
                            </div>
                            <div class="mb-4 form-check">
                                <input type="checkbox" class="form-check-input" id="consent" required>
                                <label class="form-check-label" for="consent">
                                    I agree to the <a href="${pageContext.request.contextPath}/terms" target="_blank">Terms & Conditions</a> 
                                    and <a href="${pageContext.request.contextPath}/privacy" target="_blank">Privacy Policy</a>
                                </label>
                                <div class="invalid-feedback">You must agree before submitting.</div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-gradient-primary btn-lg px-5">
                                    <i class="fas fa-paper-plane me-2"></i>Send Message
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Map Section -->
        <div class="row mb-5">
            <div class="col-12">
                <h2 class="text-center mb-4">
                    <span class="gradient-text">Find Us on Map</span>
                </h2>
                <div class="section-divider"></div>
                <div class="map-container">
                    <!-- Embedded Google Maps -->
                    <iframe 
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248849.90089959393!2d77.46612883857644!3d12.953945613538687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1670c9b44e6d%3A0xf8dfc3e8517e4fe0!2sBengaluru%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1234567890123!5m2!1sen!2sin" 
                        width="100%" 
                        height="400" 
                        style="border:0;" 
                        allowfullscreen="" 
                        loading="lazy" 
                        referrerpolicy="no-referrer-when-downgrade">
                    </iframe>
                </div>
            </div>
        </div>

        <!-- FAQ Quick Links -->
        <div class="row">
            <div class="col-12">
                <div class="card card-glass p-5 text-center">
                    <h3 class="mb-3">Looking for Quick Answers?</h3>
                    <p class="text-muted mb-4">
                        Check out our FAQ section for commonly asked questions
                    </p>
                    <div>
                        <a href="${pageContext.request.contextPath}/faq" class="btn btn-gradient-primary me-3">
                            <i class="fas fa-question-circle me-2"></i>View FAQs
                        </a>
                        <a href="${pageContext.request.contextPath}/menu" class="btn btn-outline-primary">
                            <i class="fas fa-utensils me-2"></i>Browse Menu
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Additional Contact Methods -->
        <div class="row mt-5">
            <div class="col-12 text-center">
                <h4 class="mb-4">Connect With Us</h4>
                <div class="d-flex justify-content-center gap-3">
                    <a href="#" class="btn btn-outline-primary btn-lg rounded-circle" style="width: 60px; height: 60px; display: flex; align-items: center; justify-content: center;">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="btn btn-outline-primary btn-lg rounded-circle" style="width: 60px; height: 60px; display: flex; align-items: center; justify-content: center;">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="btn btn-outline-primary btn-lg rounded-circle" style="width: 60px; height: 60px; display: flex; align-items: center; justify-content: center;">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#" class="btn btn-outline-primary btn-lg rounded-circle" style="width: 60px; height: 60px; display: flex; align-items: center; justify-content: center;">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a href="#" class="btn btn-outline-primary btn-lg rounded-circle" style="width: 60px; height: 60px; display: flex; align-items: center; justify-content: center;">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="common/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
    <script>
        // Form validation
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByClassName('needs-validation');
                Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</body>
</html>
