</main>

    <!-- Enhanced Footer -->
    <footer class="footer-enhanced">
        <div class="container">
            <div class="row">
                <!-- Brand Section -->
                <div class="col-lg-4 col-md-6 mb-4">
                    <h5 class="mb-3">
                        <i class="fas fa-utensils me-2 text-primary"></i>Swiggaa
                    </h5>
                    <p class="text-muted">
                        Your favorite food delivery platform. Order delicious meals from the best restaurants 
                        in town and get them delivered fresh to your doorstep in minutes!
                    </p>
                    <div class="d-flex gap-3 mt-4">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>

                <!-- Company Links -->
                <div class="col-lg-2 col-md-6 mb-4">
                    <h6 class="text-uppercase mb-3 fw-bold">Company</h6>
                    <ul class="list-unstyled">
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/about">
                                <i class="fas fa-info-circle me-1"></i>About Us
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/contact">
                                <i class="fas fa-envelope me-1"></i>Contact Us
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/faq">
                                <i class="fas fa-question-circle me-1"></i>FAQ
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/">
                                <i class="fas fa-briefcase me-1"></i>Careers
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Quick Links -->
                <div class="col-lg-2 col-md-6 mb-4">
                    <h6 class="text-uppercase mb-3 fw-bold">Quick Links</h6>
                    <ul class="list-unstyled">
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/">
                                <i class="fas fa-home me-1"></i>Home
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/menu">
                                <i class="fas fa-utensils me-1"></i>Menu
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/orders">
                                <i class="fas fa-receipt me-1"></i>My Orders
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="${pageContext.request.contextPath}/cart">
                                <i class="fas fa-shopping-cart me-1"></i>Cart
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Contact Info -->
                <div class="col-lg-4 col-md-6 mb-4">
                    <h6 class="text-uppercase mb-3 fw-bold">Contact Us</h6>
                    <div class="mb-2">
                        <i class="fas fa-map-marker-alt me-2 text-primary"></i>
                        <span class="text-muted">123 Food Street, Tech City, Bangalore - 560001</span>
                    </div>
                    <div class="mb-2">
                        <i class="fas fa-phone me-2 text-primary"></i>
                        <a href="tel:+919876543210" class="text-decoration-none">
                            +91 98765 43210
                        </a>
                    </div>
                    <div class="mb-2">
                        <i class="fas fa-envelope me-2 text-primary"></i>
                        <a href="mailto:support@swiggaa.com" class="text-decoration-none">
                            support@swiggaa.com
                        </a>
                    </div>
                    <div class="mb-3">
                        <i class="fas fa-clock me-2 text-primary"></i>
                        <span>24/7 Customer Support</span>
                    </div>

                    <!-- Download App -->
                    <div class="mt-4">
                        <p class="mb-2 text-uppercase fw-bold">Download Our App</p>
                        <div class="d-flex gap-2">
                            <a href="#" class="text-decoration-none">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/7/78/Google_Play_Store_badge_EN.svg" 
                                     alt="Get it on Google Play" style="height: 40px;">
                            </a>
                            <a href="#" class="text-decoration-none">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/3/3c/Download_on_the_App_Store_Badge.svg" 
                                     alt="Download on the App Store" style="height: 40px;">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <hr class="my-4" style="border-color: rgba(255,255,255,0.1);">

            <!-- Bottom Footer -->
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <p class="mb-2 mb-md-0">
                        &copy; 2026 Swiggaa Food Delivery. All rights reserved.
                    </p>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <div class="d-flex justify-content-center justify-content-md-end gap-3 flex-wrap">
                        <a href="${pageContext.request.contextPath}/terms" class="text-decoration-none small">Terms of Service</a>
                        <a href="${pageContext.request.contextPath}/terms#privacy" class="text-decoration-none small">Privacy Policy</a>
                        <a href="${pageContext.request.contextPath}/terms#cookies" class="text-decoration-none small">Cookie Policy</a>
                        <a href="${pageContext.request.contextPath}/faq" class="text-decoration-none small">Help Center</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Include custom scripts -->
    <link href="${pageContext.request.contextPath}/css/custom-style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
</body>
</html>