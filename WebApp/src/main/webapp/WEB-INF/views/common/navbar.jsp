<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">
            <i class="fas fa-utensils me-2"></i>Swiggaa
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- Search Bar (for logged in users) -->
            <c:if test="${not empty sessionScope.user}">
                <form class="d-flex mx-auto" style="width: 300px;" action="${pageContext.request.contextPath}/menu/search" method="get">
                    <div class="input-group">
                        <input class="form-control" type="search" name="query" placeholder="Search for food..." aria-label="Search">
                        <button class="btn btn-outline-light" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>
            </c:if>

            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/">
                        <i class="fas fa-home me-1"></i>Home
                    </a>
                </li>
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <!-- Logged in user menu -->
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/menu">
                                <i class="fas fa-utensils me-1"></i>Menu
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link position-relative" href="#" onclick="openCartPopup()" data-bs-toggle="modal" data-bs-target="#cartModal">
                                <i class="fas fa-shopping-cart me-1"></i>Cart
                                <span id="cart-badge" class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-warning" style="display: none;">
                                    0
                                </span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/orders">
                                <i class="fas fa-receipt me-1"></i>Orders
                            </a>
                        </li>
                        
                        <!-- User dropdown -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown">
                                <i class="fas fa-user-circle me-1"></i>${sessionScope.user}
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/dashboard">
                                        <i class="fas fa-tachometer-alt me-2"></i>Dashboard
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/profile">
                                        <i class="fas fa-user-edit me-2"></i>Profile
                                    </a>
                                </li>
                                <li><hr class="dropdown-divider"></li>
                                <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
                                    <li>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/admin">
                                            <i class="fas fa-cogs me-2"></i>Admin Panel
                                        </a>
                                    </li>
                                    <li><hr class="dropdown-divider"></li>
                                </c:if>
                                <li>
                                    <a class="dropdown-item text-danger" href="${pageContext.request.contextPath}/auth/logout">
                                        <i class="fas fa-sign-out-alt me-2"></i>Logout
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <!-- Guest user menu -->
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/auth/login">
                                <i class="fas fa-sign-in-alt me-1"></i>Login
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/auth/register">
                                <i class="fas fa-user-plus me-1"></i>Register
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>

<!-- Cart Modal -->
<div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="cartModalLabel">
                    <i class="fas fa-shopping-cart me-2"></i>Your Cart
                </h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="cart-modal-body">
                <div class="text-center py-4">
                    <i class="fas fa-spinner fa-spin fa-2x text-primary"></i>
                    <p class="mt-2">Loading cart...</p>
                </div>
            </div>
            <div class="modal-footer">
                <div class="w-100">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h5 class="mb-0">Total: ₹<span id="cart-total">0.00</span></h5>
                        <button type="button" class="btn btn-outline-danger" onclick="clearCart()">
                            <i class="fas fa-trash me-1"></i>Clear Cart
                        </button>
                    </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Continue Shopping</button>
                        <a href="${pageContext.request.contextPath}/cart" class="btn btn-primary">
                            <i class="fas fa-credit-card me-1"></i>Proceed to Checkout
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
// Cart management functions
let cartItems = [];

function openCartPopup() {
    loadCartItems();
}

function loadCartItems() {
    const cartBody = document.getElementById('cart-modal-body');
    
    // Show loading state
    cartBody.innerHTML = `
        <div class="text-center py-4">
            <i class="fas fa-spinner fa-spin fa-2x text-primary"></i>
            <p class="mt-2">Loading cart...</p>
        </div>
    `;
    
    // Fetch cart items from session
    fetch('${pageContext.request.contextPath}/cart/api/items')
        .then(response => response.json())
        .then(data => {
            cartItems = data.items || [];
            updateCartDisplay();
            updateCartBadge();
        })
        .catch(error => {
            console.error('Error loading cart:', error);
            cartBody.innerHTML = `
                <div class="alert alert-danger">
                    <i class="fas fa-exclamation-triangle me-2"></i>
                    Error loading cart items. Please try again.
                </div>
            `;
        });
}

function updateCartDisplay() {
    const cartBody = document.getElementById('cart-modal-body');
    const cartTotal = document.getElementById('cart-total');
    
    if (cartItems.length === 0) {
        cartBody.innerHTML = `
            <div class="text-center py-5">
                <i class="fas fa-shopping-cart fa-3x text-muted mb-3"></i>
                <h5 class="text-muted">Your cart is empty</h5>
                <p class="text-muted mb-4">Add some delicious items from our menu!</p>
                <a href="${pageContext.request.contextPath}/menu" class="btn btn-primary" data-bs-dismiss="modal">
                    <i class="fas fa-utensils me-1"></i>Browse Menu
                </a>
            </div>
        `;
        cartTotal.textContent = '0.00';
        return;
    }
    
    let total = 0;
    let cartHTML = '<div class="cart-items">';
    
    cartItems.forEach(item => {
        const itemTotal = item.price * item.quantity;
        total += itemTotal;
        
        cartHTML += `
            <div class="cart-item border-bottom pb-3 mb-3">
                <div class="row align-items-center">
                    <div class="col-3">
                        <img src="${item.imageUrl || 'https://via.placeholder.com/80x60?text=Food'}" 
                             class="img-fluid rounded" alt="${item.name}" style="height: 60px; object-fit: cover;">
                    </div>
                    <div class="col-6">
                        <h6 class="mb-1">${item.name}</h6>
                        <small class="text-muted">${item.restaurantName}</small>
                        <div class="text-success fw-bold">₹${item.price.toFixed(2)}</div>
                    </div>
                    <div class="col-3 text-end">
                        <div class="d-flex align-items-center justify-content-end mb-2">
                            <button class="btn btn-outline-secondary btn-sm me-2" onclick="updateCartQuantity(${item.id}, ${item.quantity - 1})">
                                <i class="fas fa-minus"></i>
                            </button>
                            <span class="fw-bold">${item.quantity}</span>
                            <button class="btn btn-outline-secondary btn-sm ms-2" onclick="updateCartQuantity(${item.id}, ${item.quantity + 1})">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                        <div class="fw-bold text-primary">₹${itemTotal.toFixed(2)}</div>
                        <button class="btn btn-outline-danger btn-sm mt-1" onclick="removeFromCart(${item.id})">
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </div>
            </div>
        `;
    });
    
    cartHTML += '</div>';
    cartBody.innerHTML = cartHTML;
    cartTotal.textContent = total.toFixed(2);
}

function updateCartQuantity(itemId, newQuantity) {
    if (newQuantity <= 0) {
        removeFromCart(itemId);
        return;
    }
    
    const formData = new FormData();
    formData.append('menuItemId', itemId);
    formData.append('quantity', newQuantity);
    
    fetch('${pageContext.request.contextPath}/cart/update', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        if (data === 'success' || data.includes('cart')) {
            loadCartItems(); // Reload cart
        }
    })
    .catch(error => {
        console.error('Error updating cart:', error);
    });
}

function removeFromCart(itemId) {
    const formData = new FormData();
    formData.append('menuItemId', itemId);
    
    fetch('${pageContext.request.contextPath}/cart/remove', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        if (data === 'success' || data.includes('cart')) {
            loadCartItems(); // Reload cart
        }
    })
    .catch(error => {
        console.error('Error removing from cart:', error);
    });
}

function clearCart() {
    if (confirm('Are you sure you want to clear your cart?')) {
        fetch('${pageContext.request.contextPath}/cart/clear', {
            method: 'POST'
        })
        .then(response => response.text())
        .then(data => {
            if (data === 'success' || data.includes('cart')) {
                loadCartItems(); // Reload cart
            }
        })
        .catch(error => {
            console.error('Error clearing cart:', error);
        });
    }
}

function updateCartBadge() {
    const badge = document.getElementById('cart-badge');
    const totalItems = cartItems.reduce((sum, item) => sum + item.quantity, 0);
    
    if (totalItems > 0) {
        badge.textContent = totalItems;
        badge.style.display = 'inline';
    } else {
        badge.style.display = 'none';
    }
}

// Update cart badge on page load
document.addEventListener('DOMContentLoaded', function() {
    loadCartItems();
});
</script>