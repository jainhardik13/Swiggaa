<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms & Privacy - Swiggaa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom-style.css" rel="stylesheet">
    <style>
        .nav-pills .nav-link {
            border-radius: 50px;
            padding: 15px 30px;
            transition: all 0.3s ease;
        }
        .nav-pills .nav-link.active {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .section-heading {
            color: #667eea;
            font-weight: 700;
            margin-top: 30px;
            margin-bottom: 15px;
        }
        .content-section {
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <%@ include file="common/navbar.jsp" %>

    <div class="container my-5">
        <!-- Tab Navigation -->
        <div class="row mb-4">
            <div class="col-12 text-center">
                <h1 class="display-5 mb-4">
                    <span class="gradient-text">Legal Information</span>
                </h1>
                <div class="section-divider"></div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="nav flex-column nav-pills sticky-top" style="top: 100px;">
                    <button class="nav-link active mb-2" data-bs-toggle="pill" data-bs-target="#terms">
                        <i class="fas fa-file-contract me-2"></i>Terms of Service
                    </button>
                    <button class="nav-link mb-2" data-bs-toggle="pill" data-bs-target="#privacy">
                        <i class="fas fa-shield-alt me-2"></i>Privacy Policy
                    </button>
                    <button class="nav-link mb-2" data-bs-toggle="pill" data-bs-target="#refund">
                        <i class="fas fa-undo me-2"></i>Refund Policy
                    </button>
                    <button class="nav-link" data-bs-toggle="pill" data-bs-target="#cookies">
                        <i class="fas fa-cookie-bite me-2"></i>Cookie Policy
                    </button>
                </div>
            </div>
            
            <div class="col-md-9">
                <div class="tab-content">
                    <!-- Terms of Service -->
                    <div class="tab-pane fade show active" id="terms">
                        <div class="content-section">
                            <h2 class="mb-4">Terms of Service</h2>
                            <p class="text-muted"><strong>Last Updated:</strong> February 7, 2026</p>
                            
                            <h4 class="section-heading">1. Acceptance of Terms</h4>
                            <p>By accessing and using Swiggaa's food delivery platform, you accept and agree to be bound by these Terms of Service. If you do not agree to these terms, please do not use our services.</p>
                            
                            <h4 class="section-heading">2. Service Description</h4>
                            <p>Swiggaa provides an online platform that connects customers with restaurants for food ordering and delivery services. We act as an intermediary between customers and restaurants.</p>
                            
                            <h4 class="section-heading">3. User Accounts</h4>
                            <ul>
                                <li>You must be at least 18 years old to create an account</li>
                                <li>You are responsible for maintaining the confidentiality of your account credentials</li>
                                <li>You must provide accurate and complete information when creating an account</li>
                                <li>You are responsible for all activities under your account</li>
                                <li>You must notify us immediately of any unauthorized use of your account</li>
                            </ul>
                            
                            <h4 class="section-heading">4. Ordering and Payment</h4>
                            <ul>
                                <li>All orders are subject to acceptance by the restaurant</li>
                                <li>Prices are subject to change without notice</li>
                                <li>Payment must be made at the time of ordering unless Cash on Delivery is selected</li>
                                <li>You agree to pay all charges incurred including delivery fees, taxes, and tips</li>
                                <li>We reserve the right to refuse or cancel orders at our discretion</li>
                            </ul>
                            
                            <h4 class="section-heading">5. Delivery</h4>
                            <ul>
                                <li>Delivery times are estimates and may vary based on various factors</li>
                                <li>You must provide accurate delivery address and contact information</li>
                                <li>You are responsible for being available to receive the delivery</li>
                                <li>Delivery fees may apply based on distance and demand</li>
                            </ul>
                            
                            <h4 class="section-heading">6. Cancellations and Refunds</h4>
                            <ul>
                                <li>Orders can be cancelled within 2 minutes of placement</li>
                                <li>Refunds are processed according to our Refund Policy</li>
                                <li>We reserve the right to cancel orders if payment fails or for other valid reasons</li>
                            </ul>
                            
                            <h4 class="section-heading">7. User Conduct</h4>
                            <p>You agree not to:</p>
                            <ul>
                                <li>Use the platform for any illegal purposes</li>
                                <li>Provide false or misleading information</li>
                                <li>Interfere with the proper functioning of the platform</li>
                                <li>Attempt to gain unauthorized access to our systems</li>
                                <li>Harass or abuse our staff or delivery partners</li>
                            </ul>
                            
                            <h4 class="section-heading">8. Intellectual Property</h4>
                            <p>All content on our platform, including text, graphics, logos, and software, is the property of Swiggaa and is protected by copyright and other intellectual property laws.</p>
                            
                            <h4 class="section-heading">9. Limitation of Liability</h4>
                            <p>Swiggaa is not liable for:
                                <ul>
                                    <li>Food quality issues (handled by restaurants)</li>
                                    <li>Delays caused by circumstances beyond our control</li>
                                    <li>Indirect or consequential damages</li>
                                    <li>Loss of data or profits</li>
                                </ul>
                            </p>
                            
                            <h4 class="section-heading">10. Changes to Terms</h4>
                            <p>We reserve the right to modify these terms at any time. Continued use of our services after changes constitutes acceptance of the modified terms.</p>
                            
                            <h4 class="section-heading">11. Contact Information</h4>
                            <p>For questions about these Terms of Service, please contact us at:
                                <br>Email: legal@swiggaa.com
                                <br>Phone: +91 98765 43210
                            </p>
                        </div>
                    </div>
                    
                    <!-- Privacy Policy -->
                    <div class="tab-pane fade" id="privacy">
                        <div class="content-section">
                            <h2 class="mb-4">Privacy Policy</h2>
                            <p class="text-muted"><strong>Last Updated:</strong> February 7, 2026</p>
                            
                            <h4 class="section-heading">1. Information We Collect</h4>
                            <p><strong>Personal Information:</strong></p>
                            <ul>
                                <li>Name, email address, and phone number</li>
                                <li>Delivery addresses</li>
                                <li>Payment information (processed securely through third-party providers)</li>
                                <li>Order history and preferences</li>
                            </ul>
                            
                            <p><strong>Automatic Information:</strong></p>
                            <ul>
                                <li>IP address and device information</li>
                                <li>Browser type and version</li>
                                <li>Location data (with your permission)</li>
                                <li>Usage patterns and preferences</li>
                            </ul>
                            
                            <h4 class="section-heading">2. How We Use Your Information</h4>
                            <ul>
                                <li>Processing and fulfilling orders</li>
                                <li>Communicating order updates and customer service</li>
                                <li>Improving our services and user experience</li>
                                <li>Personalizing your experience</li>
                                <li>Marketing and promotional communications (with your consent)</li>
                                <li>Fraud prevention and security</li>
                            </ul>
                            
                            <h4 class="section-heading">3. Information Sharing</h4>
                            <p>We share your information with:</p>
                            <ul>
                                <li><strong>Restaurants:</strong> Name, phone number, delivery address, and order details</li>
                                <li><strong>Delivery Partners:</strong> Name, phone number, and delivery address</li>
                                <li><strong>Payment Processors:</strong> Payment information for transaction processing</li>
                                <li><strong>Service Providers:</strong> Third parties who assist in operating our platform</li>
                                <li><strong>Legal Requirements:</strong> When required by law or to protect our rights</li>
                            </ul>
                            
                            <h4 class="section-heading">4. Data Security</h4>
                            <p>We implement industry-standard security measures to protect your information:
                                <ul>
                                    <li>Encryption of sensitive data during transmission</li>
                                    <li>Secure servers and databases</li>
                                    <li>Regular security audits</li>
                                    <li>Access controls and authentication</li>
                                </ul>
                            </p>
                            
                            <h4 class="section-heading">5. Your Rights</h4>
                            <p>You have the right to:</p>
                            <ul>
                                <li>Access your personal information</li>
                                <li>Correct inaccurate information</li>
                                <li>Request deletion of your data</li>
                                <li>Opt-out of marketing communications</li>
                                <li>Withdraw consent for data processing</li>
                            </ul>
                            
                            <h4 class="section-heading">6. Cookies and Tracking</h4>
                            <p>We use cookies and similar technologies to enhance your experience. See our Cookie Policy for more details.</p>
                            
                            <h4 class="section-heading">7. Data Retention</h4>
                            <p>We retain your information as long as necessary to provide services and comply with legal obligations. You can request deletion of your account at any time.</p>
                            
                            <h4 class="section-heading">8. Children's Privacy</h4>
                            <p>Our services are not intended for children under 18. We do not knowingly collect information from children.</p>
                            
                            <h4 class="section-heading">9. Changes to Privacy Policy</h4>
                            <p>We may update this policy from time to time. We will notify you of significant changes via email or platform notification.</p>
                            
                            <h4 class="section-heading">10. Contact Us</h4>
                            <p>For privacy-related questions, contact us at:
                                <br>Email: privacy@swiggaa.com
                                <br>Phone: +91 98765 43210
                            </p>
                        </div>
                    </div>
                    
                    <!-- Refund Policy -->
                    <div class="tab-pane fade" id="refund">
                        <div class="content-section">
                            <h2 class="mb-4">Refund Policy</h2>
                            <p class="text-muted"><strong>Last Updated:</strong> February 7, 2026</p>
                            
                            <h4 class="section-heading">1. Cancellation and Refund Eligibility</h4>
                            <p><strong>Before Restaurant Accepts:</strong></p>
                            <ul>
                                <li>100% refund if cancelled within 2 minutes of order placement</li>
                                <li>Orders can be cancelled free of charge before restaurant starts preparation</li>
                            </ul>
                            
                            <p><strong>After Restaurant Accepts:</strong></p>
                            <ul>
                                <li>No refund once food preparation has started</li>
                                <li>Partial refund may be offered at restaurant's discretion</li>
                            </ul>
                            
                            <h4 class="section-heading">2. Quality Issues</h4>
                            <p>Full or partial refund for:</p>
                            <ul>
                                <li>Missing items from your order</li>
                                <li>Incorrect items delivered</li>
                                <li>Food quality issues (spoiled, contaminated, or inedible)</li>
                                <li>Significantly delayed delivery (beyond estimated time + 30 minutes)</li>
                            </ul>
                            
                            <h4 class="section-heading">3. How to Request a Refund</h4>
                            <ol>
                                <li>Go to "My Orders" section</li>
                                <li>Select the order in question</li>
                                <li>Click "Report Issue" or "Request Refund"</li>
                                <li>Provide details and, if applicable, photos</li>
                                <li>Submit your request</li>
                            </ol>
                            <p>Our team will review and respond within 24-48 hours.</p>
                            
                            <h4 class="section-heading">4. Refund Processing Time</h4>
                            <ul>
                                <li><strong>Credit/Debit Cards:</strong> 5-7 business days</li>
                                <li><strong>UPI/Digital Wallets:</strong> 2-3 business days</li>
                                <li><strong>Net Banking:</strong> 5-7 business days</li>
                                <li><strong>Cash on Delivery:</strong> Credited to Swiggaa wallet or bank account</li>
                            </ul>
                            
                            <h4 class="section-heading">5. Non-Refundable Situations</h4>
                            <p>Refunds are not provided for:</p>
                            <ul>
                                <li>Customer not available at delivery location</li>
                                <li>Incorrect address provided by customer</li>
                                <li>Personal taste preferences</li>
                                <li>Orders completed successfully without issues</li>
                                <li>Spice level or cooking preferences (unless explicitly ordered differently)</li>
                            </ul>
                            
                            <h4 class="section-heading">6. Partial Refunds</h4>
                            <p>Partial refunds may be issued for:</p>
                            <ul>
                                <li>Minor quality issues</li>
                                <li>Slight delays in delivery</li>
                                <li>Packaging issues that don't affect food quality</li>
                            </ul>
                            
                            <h4 class="section-heading">7. Delivery Fee Refunds</h4>
                            <p>Delivery fees are refunded only if:
                                <ul>
                                    <li>Order is cancelled before restaurant accepts</li>
                                    <li>Delivery is significantly delayed due to platform issues</li>
                                    <li>Order is not delivered</li>
                                </ul>
                            </p>
                            
                            <h4 class="section-heading">8. Contact for Refund Queries</h4>
                            <p>For refund-related questions:
                                <br>Email: refunds@swiggaa.com
                                <br>Phone: +91 98765 43210
                                <br>Live Chat: Available 24/7
                            </p>
                        </div>
                    </div>
                    
                    <!-- Cookie Policy -->
                    <div class="tab-pane fade" id="cookies">
                        <div class="content-section">
                            <h2 class="mb-4">Cookie Policy</h2>
                            <p class="text-muted"><strong>Last Updated:</strong> February 7, 2026</p>
                            
                            <h4 class="section-heading">1. What Are Cookies?</h4>
                            <p>Cookies are small text files stored on your device when you visit our website. They help us provide a better user experience and understand how you use our platform.</p>
                            
                            <h4 class="section-heading">2. Types of Cookies We Use</h4>
                            
                            <p><strong>Essential Cookies:</strong></p>
                            <ul>
                                <li>Required for the website to function properly</li>
                                <li>Enable core features like security, network management, and accessibility</li>
                                <li>Cannot be disabled</li>
                            </ul>
                            
                            <p><strong>Functional Cookies:</strong></p>
                            <ul>
                                <li>Remember your preferences and settings</li>
                                <li>Store your location for delivery</li>
                                <li>Keep items in your cart</li>
                            </ul>
                            
                            <p><strong>Analytics Cookies:</strong></p>
                            <ul>
                                <li>Help us understand how visitors interact with our website</li>
                                <li>Collect anonymous information about pages visited</li>
                                <li>Improve our services based on user behavior</li>
                            </ul>
                            
                            <p><strong>Marketing Cookies:</strong></p>
                            <ul>
                                <li>Track your browsing habits</li>
                                <li>Deliver personalized advertisements</li>
                                <li>Measure advertising campaign effectiveness</li>
                            </ul>
                            
                            <h4 class="section-heading">3. Third-Party Cookies</h4>
                            <p>We use services from third parties who may also set cookies:</p>
                            <ul>
                                <li>Google Analytics (analytics)</li>
                                <li>Facebook Pixel (advertising)</li>
                                <li>Payment gateways (transaction processing)</li>
                            </ul>
                            
                            <h4 class="section-heading">4. Managing Cookies</h4>
                            <p>You can control cookies through:</p>
                            <ul>
                                <li><strong>Browser Settings:</strong> Most browsers allow you to refuse or delete cookies</li>
                                <li><strong>Cookie Consent Tool:</strong> Manage preferences through our cookie banner</li>
                                <li><strong>Opt-Out Tools:</strong> Use industry opt-out tools for advertising cookies</li>
                            </ul>
                            
                            <p class="alert alert-warning">
                                <i class="fas fa-exclamation-triangle me-2"></i>
                                <strong>Note:</strong> Disabling certain cookies may affect website functionality and your user experience.
                            </p>
                            
                            <h4 class="section-heading">5. Cookie Duration</h4>
                            <ul>
                                <li><strong>Session Cookies:</strong> Deleted when you close your browser</li>
                                <li><strong>Persistent Cookies:</strong> Remain on your device for a set period or until manually deleted</li>
                            </ul>
                            
                            <h4 class="section-heading">6. Updates to Cookie Policy</h4>
                            <p>We may update this Cookie Policy to reflect changes in technology or legislation. Please review this page periodically.</p>
                            
                            <h4 class="section-heading">7. Contact Us</h4>
                            <p>For questions about our use of cookies:
                                <br>Email: privacy@swiggaa.com
                                <br>Phone: +91 98765 43210
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="common/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
</body>
</html>
