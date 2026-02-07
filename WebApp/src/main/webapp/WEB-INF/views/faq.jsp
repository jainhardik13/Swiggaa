<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ - Swiggaa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom-style.css" rel="stylesheet">
    <style>
        .faq-category {
            margin-bottom: 40px;
        }
        .faq-item {
            border: 1px solid #e9ecef;
            border-radius: 10px;
            margin-bottom: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
        }
        .faq-item:hover {
            box-shadow: 0 5px 15px rgba(0,0,0,0.08);
        }
        .faq-question {
            padding: 20px;
            cursor: pointer;
            background: white;
            transition: all 0.3s ease;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .faq-question:hover {
            background: #f8f9fa;
        }
        .faq-question.active {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        .faq-answer {
            padding: 0 20px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease, padding 0.3s ease;
            background: #f8f9fa;
        }
        .faq-answer.show {
            padding: 20px;
            max-height: 500px;
        }
        .faq-icon {
            transition: transform 0.3s ease;
        }
        .faq-question.active .faq-icon {
            transform: rotate(180deg);
        }
        .category-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            margin-right: 15px;
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
                    <h1 class="display-3 fw-bold mb-4">Frequently Asked Questions</h1>
                    <p class="lead mb-4">
                        Find answers to common questions about our food delivery service
                    </p>
                    <div class="input-group mb-3" style="max-width: 500px;">
                        <input type="text" class="form-control form-control-lg" id="faqSearch" 
                               placeholder="Search for answers..." aria-label="Search FAQs">
                        <button class="btn btn-light" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
                <div class="col-lg-6 text-center fade-in-down">
                    <i class="fas fa-question-circle float-animation" style="font-size: 15rem; opacity: 0.2;"></i>
                </div>
            </div>
        </div>
    </section>

    <div class="container my-5">
        <!-- Quick Links -->
        <div class="row mb-5">
            <div class="col-12 text-center">
                <h4 class="mb-4">Quick Categories</h4>
                <div class="d-flex flex-wrap justify-content-center gap-2">
                    <a href="#ordering" class="btn btn-outline-primary">Ordering</a>
                    <a href="#payment" class="btn btn-outline-primary">Payment</a>
                    <a href="#delivery" class="btn btn-outline-primary">Delivery</a>
                    <a href="#account" class="btn btn-outline-primary">Account</a>
                    <a href="#restaurants" class="btn btn-outline-primary">Restaurants</a>
                    <a href="#technical" class="btn btn-outline-primary">Technical</a>
                </div>
            </div>
        </div>

        <!-- Ordering FAQs -->
        <div class="faq-category" id="ordering">
            <div class="d-flex align-items-center mb-4">
                <div class="category-icon">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <h2 class="mb-0 gradient-text">Ordering</h2>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">How do I place an order?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Placing an order is simple:
                        <ol>
                            <li>Browse our menu and select your favorite items</li>
                            <li>Add items to your cart by clicking "Add to Cart"</li>
                            <li>Review your cart and proceed to checkout</li>
                            <li>Enter your delivery address and payment details</li>
                            <li>Confirm your order and wait for delicious food!</li>
                        </ol>
                    </p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">Can I modify my order after placing it?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>You can modify your order within 2 minutes of placing it. After that, the restaurant starts preparing your food. To modify an order, go to "My Orders" and click on the "Modify" button. If modification time has passed, please contact our customer support.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">What is the minimum order value?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>The minimum order value varies by restaurant and location. Typically, it ranges from ₹100 to ₹200. You'll see the minimum order requirement when browsing the restaurant menu.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">Can I schedule an order for later?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Yes! During checkout, you can select "Schedule for Later" and choose your preferred delivery time. Scheduled orders can be placed up to 24 hours in advance.</p>
                </div>
            </div>
        </div>

        <!-- Payment FAQs -->
        <div class="faq-category" id="payment">
            <div class="d-flex align-items-center mb-4">
                <div class="category-icon">
                    <i class="fas fa-credit-card"></i>
                </div>
                <h2 class="mb-0 gradient-text">Payment</h2>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">What payment methods do you accept?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>We accept multiple payment methods:
                        <ul>
                            <li>Credit/Debit Cards (Visa, Mastercard, RuPay)</li>
                            <li>UPI (Google Pay, PhonePe, Paytm, etc.)</li>
                            <li>Net Banking</li>
                            <li>Digital Wallets (Paytm, Amazon Pay)</li>
                            <li>Cash on Delivery (where available)</li>
                        </ul>
                    </p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">Is it safe to pay online?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Absolutely! We use industry-standard encryption and secure payment gateways. Your payment information is never stored on our servers. All transactions are PCI-DSS compliant.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">How do I get a refund?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Refunds are processed within 5-7 business days. If you're eligible for a refund, it will be credited to your original payment method. For digital payments, refunds are usually faster (2-3 days).</p>
                </div>
            </div>
        </div>

        <!-- Delivery FAQs -->
        <div class="faq-category" id="delivery">
            <div class="d-flex align-items-center mb-4">
                <div class="category-icon">
                    <i class="fas fa-shipping-fast"></i>
                </div>
                <h2 class="mb-0 gradient-text">Delivery</h2>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">How long does delivery take?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Typical delivery time is 30-45 minutes, depending on your location and the restaurant. You'll see an estimated delivery time when placing your order. You can track your order in real-time through the app.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">What are the delivery charges?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Delivery charges vary based on distance and demand. Generally, they range from ₹20 to ₹50. Free delivery is available on orders above ₹299 from participating restaurants. You'll see the exact delivery charge before confirming your order.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">Can I track my order?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Yes! Once your order is confirmed, you can track it in real-time. Go to "My Orders" and click on your active order to see the delivery partner's location and estimated arrival time.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">What if my order is delayed?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>We strive for on-time delivery. If your order is significantly delayed, please contact our support team. You may be eligible for a refund or discount on your next order.</p>
                </div>
            </div>
        </div>

        <!-- Account FAQs -->
        <div class="faq-category" id="account">
            <div class="d-flex align-items-center mb-4">
                <div class="category-icon">
                    <i class="fas fa-user"></i>
                </div>
                <h2 class="mb-0 gradient-text">Account</h2>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">How do I create an account?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Click on "Register" in the top navigation, fill in your details (name, email, phone number, password), and click "Sign Up". You'll receive a verification email. Click the link to activate your account.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">I forgot my password. What should I do?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Click on "Login" and then "Forgot Password". Enter your registered email address, and we'll send you a password reset link. Click the link and create a new password.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">Can I change my registered email or phone number?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Yes! Go to your profile page, click "Edit Profile", update your information, and save. You'll need to verify the new email/phone number.</p>
                </div>
            </div>
        </div>

        <!-- Restaurants FAQs -->
        <div class="faq-category" id="restaurants">
            <div class="d-flex align-items-center mb-4">
                <div class="category-icon">
                    <i class="fas fa-store"></i>
                </div>
                <h2 class="mb-0 gradient-text">Restaurants</h2>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">How do I become a restaurant partner?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>We'd love to partner with you! Click on "Restaurant Partnership" in the footer or contact us at partners@swiggaa.com. Our team will guide you through the onboarding process.</p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">How are restaurants rated?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Restaurant ratings are based on customer reviews and feedback. Customers can rate their experience on food quality, packaging, delivery time, and overall satisfaction on a 5-star scale.</p>
                </div>
            </div>
        </div>

        <!-- Technical FAQs -->
        <div class="faq-category" id="technical">
            <div class="d-flex align-items-center mb-4">
                <div class="category-icon">
                    <i class="fas fa-cog"></i>
                </div>
                <h2 class="mb-0 gradient-text">Technical Issues</h2>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">The website is not loading properly. What should I do?</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Try these steps:
                        <ol>
                            <li>Clear your browser cache and cookies</li>
                            <li>Try a different browser or device</li>
                            <li>Check your internet connection</li>
                            <li>Disable browser extensions temporarily</li>
                            <li>If the issue persists, contact our support team</li>
                        </ol>
                    </p>
                </div>
            </div>
            <div class="faq-item">
                <div class="faq-question">
                    <div>
                        <h5 class="mb-0">I'm not receiving order updates via email/SMS</h5>
                    </div>
                    <i class="fas fa-chevron-down faq-icon"></i>
                </div>
                <div class="faq-answer">
                    <p>Check your spam/junk folder. Ensure you've provided the correct email and phone number in your profile. You can also enable notifications in your account settings.</p>
                </div>
            </div>
        </div>

        <!-- Still Have Questions -->
        <div class="row mt-5">
            <div class="col-12">
                <div class="card card-glass p-5 text-center">
                    <h3 class="mb-3">Still Have Questions?</h3>
                    <p class="text-muted mb-4">
                        Can't find what you're looking for? Our customer support team is here to help!
                    </p>
                    <div>
                        <a href="${pageContext.request.contextPath}/contact" class="btn btn-gradient-primary me-3">
                            <i class="fas fa-envelope me-2"></i>Contact Support
                        </a>
                        <a href="tel:+919876543210" class="btn btn-outline-primary">
                            <i class="fas fa-phone me-2"></i>Call Us
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="common/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
    <script>
        // FAQ Accordion
        document.querySelectorAll('.faq-question').forEach(question => {
            question.addEventListener('click', function() {
                const answer = this.nextElementSibling;
                const isActive = this.classList.contains('active');
                
                // Close all other FAQs
                document.querySelectorAll('.faq-question').forEach(q => {
                    q.classList.remove('active');
                    q.nextElementSibling.classList.remove('show');
                });
                
                // Toggle current FAQ
                if (!isActive) {
                    this.classList.add('active');
                    answer.classList.add('show');
                }
            });
        });

        // Search functionality
        document.getElementById('faqSearch').addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            
            document.querySelectorAll('.faq-item').forEach(item => {
                const question = item.querySelector('.faq-question h5').textContent.toLowerCase();
                const answer = item.querySelector('.faq-answer').textContent.toLowerCase();
                
                if (question.includes(searchTerm) || answer.includes(searchTerm)) {
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        });

        // Smooth scroll to categories
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
    </script>
</body>
</html>
