/**
 * Swiggaa - Custom JavaScript
 * Enhanced interactions and animations
 */

// Page Loader
document.addEventListener('DOMContentLoaded', function() {
    // Hide loader when page is fully loaded
    window.addEventListener('load', function() {
        const loader = document.querySelector('.page-loader');
        if (loader) {
            setTimeout(() => {
                loader.classList.add('hidden');
            }, 500);
        }
    });
});

// Scroll to Top Button
(function() {
    const scrollBtn = document.createElement('div');
    scrollBtn.className = 'scroll-to-top';
    scrollBtn.innerHTML = '<i class="fas fa-arrow-up"></i>';
    document.body.appendChild(scrollBtn);

    window.addEventListener('scroll', function() {
        if (window.pageYOffset > 300) {
            scrollBtn.classList.add('visible');
        } else {
            scrollBtn.classList.remove('visible');
        }
    });

    scrollBtn.addEventListener('click', function() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
})();

// Enhanced Navbar Scroll Effect
(function() {
    const navbar = document.querySelector('.navbar-enhanced');
    if (navbar) {
        window.addEventListener('scroll', function() {
            if (window.pageYOffset > 50) {
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        });
    }
})();

// Intersection Observer for Animations
(function() {
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);

    // Observe all elements with animation classes
    const animatedElements = document.querySelectorAll(
        '.fade-in-up, .fade-in-down, .slide-in-left, .slide-in-right, .card-enhanced'
    );

    animatedElements.forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(30px)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(el);
    });
})();

// Cart Badge Update
function updateCartBadge(count) {
    const badge = document.getElementById('cart-badge');
    if (badge) {
        badge.textContent = count;
        badge.style.display = count > 0 ? 'inline-block' : 'none';
    }
}

// Toast Notifications
function showToast(message, type = 'info') {
    const toast = document.createElement('div');
    toast.className = `alert alert-${type} alert-dismissible fade show position-fixed`;
    toast.style.cssText = 'top: 20px; right: 20px; z-index: 9999; min-width: 300px;';
    toast.innerHTML = `
        ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    `;
    document.body.appendChild(toast);

    setTimeout(() => {
        toast.remove();
    }, 5000);
}

// Add to Cart Animation
function addToCartAnimation(button) {
    const originalText = button.innerHTML;
    button.innerHTML = '<i class="fas fa-check me-2"></i>Added!';
    button.classList.add('btn-success');
    button.disabled = true;

    setTimeout(() => {
        button.innerHTML = originalText;
        button.classList.remove('btn-success');
        button.disabled = false;
    }, 1500);
}

// Quantity Controls
document.addEventListener('click', function(e) {
    if (e.target.closest('.quantity-btn')) {
        const btn = e.target.closest('.quantity-btn');
        const action = btn.dataset.action;
        const input = btn.closest('.input-group').querySelector('input[type="number"]');
        const currentValue = parseInt(input.value);

        if (action === 'increase' && currentValue < parseInt(input.max)) {
            input.value = currentValue + 1;
        } else if (action === 'decrease' && currentValue > parseInt(input.min)) {
            input.value = currentValue - 1;
        }

        // Trigger form submission for cart updates
        const form = btn.closest('form');
        if (form && form.classList.contains('update-quantity-form')) {
            form.submit();
        }
    }
});

// Search Functionality Enhancement
(function() {
    const searchInput = document.querySelector('input[name="query"]');
    if (searchInput) {
        let searchTimeout;
        searchInput.addEventListener('input', function(e) {
            clearTimeout(searchTimeout);
            searchTimeout = setTimeout(() => {
                // You can add live search functionality here
                console.log('Searching for:', e.target.value);
            }, 500);
        });
    }
})();

// Image Lazy Loading
(function() {
    const images = document.querySelectorAll('img[data-src]');
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.removeAttribute('data-src');
                observer.unobserve(img);
            }
        });
    });

    images.forEach(img => imageObserver.observe(img));
})();

// Menu Filter Functionality
(function() {
    const filterButtons = document.querySelectorAll('.filter-btn');
    if (filterButtons.length > 0) {
        filterButtons.forEach(button => {
            button.addEventListener('click', function() {
                // Remove active class from all buttons
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');

                const category = this.dataset.category;
                const filter = this.dataset.filter;
                const menuItems = document.querySelectorAll('.menu-item');

                menuItems.forEach(item => {
                    let show = false;

                    if (category === 'all') {
                        show = true;
                    } else if (category && item.dataset.category === category) {
                        show = true;
                    } else if (filter === 'vegetarian' && item.dataset.vegetarian === 'true') {
                        show = true;
                    } else if (filter === 'vegan' && item.dataset.vegan === 'true') {
                        show = true;
                    }

                    if (show) {
                        item.style.display = 'block';
                        item.style.animation = 'fadeInUp 0.5s ease';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });
        });
    }
})();

// Form Validation Enhancement
(function() {
    const forms = document.querySelectorAll('.needs-validation');
    forms.forEach(form => {
        form.addEventListener('submit', function(event) {
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();

                // Focus on first invalid field
                const firstInvalid = form.querySelector(':invalid');
                if (firstInvalid) {
                    firstInvalid.focus();
                }
            }
            form.classList.add('was-validated');
        }, false);
    });
})();

// Auto-dismiss alerts
(function() {
    const alerts = document.querySelectorAll('.alert:not(.alert-permanent)');
    alerts.forEach(alert => {
        setTimeout(() => {
            const bsAlert = new bootstrap.Alert(alert);
            bsAlert.close();
        }, 5000);
    });
})();

// Smooth Scroll for Anchor Links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        const href = this.getAttribute('href');
        if (href !== '#' && href.length > 1) {
            const target = document.querySelector(href);
            if (target) {
                e.preventDefault();
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        }
    });
});

// Price Formatting
function formatPrice(price) {
    return new Intl.NumberFormat('en-IN', {
        style: 'currency',
        currency: 'INR',
        minimumFractionDigits: 0
    }).format(price);
}

// Countdown Timer (for limited offers)
function startCountdown(elementId, endTime) {
    const element = document.getElementById(elementId);
    if (!element) return;

    const updateCountdown = () => {
        const now = new Date().getTime();
        const distance = endTime - now;

        if (distance < 0) {
            element.innerHTML = 'EXPIRED';
            return;
        }

        const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        const seconds = Math.floor((distance % (1000 * 60)) / 1000);

        element.innerHTML = `${hours}h ${minutes}m ${seconds}s`;
    };

    updateCountdown();
    setInterval(updateCountdown, 1000);
}

// Local Storage Utilities
const Storage = {
    set: function(key, value) {
        try {
            localStorage.setItem(key, JSON.stringify(value));
        } catch (e) {
            console.error('Storage error:', e);
        }
    },
    get: function(key) {
        try {
            const item = localStorage.getItem(key);
            return item ? JSON.parse(item) : null;
        } catch (e) {
            console.error('Storage error:', e);
            return null;
        }
    },
    remove: function(key) {
        try {
            localStorage.removeItem(key);
        } catch (e) {
            console.error('Storage error:', e);
        }
    }
};

// Track User Preferences
(function() {
    // Save scroll position
    window.addEventListener('beforeunload', function() {
        Storage.set('scrollPos', window.pageYOffset);
    });

    // Restore scroll position
    const savedScrollPos = Storage.get('scrollPos');
    if (savedScrollPos) {
        window.scrollTo(0, savedScrollPos);
        Storage.remove('scrollPos');
    }
})();

// Enhanced Modal Interactions
(function() {
    const modals = document.querySelectorAll('.modal');
    modals.forEach(modal => {
        modal.addEventListener('shown.bs.modal', function() {
            const firstInput = modal.querySelector('input:not([type="hidden"])');
            if (firstInput) {
                firstInput.focus();
            }
        });
    });
})();

// Print Order Receipt
function printReceipt(orderId) {
    window.print();
}

// Share Order
function shareOrder(orderId, orderDetails) {
    if (navigator.share) {
        navigator.share({
            title: 'My Swiggaa Order',
            text: `Check out my order from Swiggaa! Order #${orderId}`,
            url: window.location.href
        }).catch(err => console.log('Error sharing:', err));
    } else {
        // Fallback: copy link to clipboard
        navigator.clipboard.writeText(window.location.href);
        showToast('Link copied to clipboard!', 'success');
    }
}

// Initialize tooltips
(function() {
    const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    tooltipTriggerList.map(function(tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
    });
})();

// Initialize popovers
(function() {
    const popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
    popoverTriggerList.map(function(popoverTriggerEl) {
        return new bootstrap.Popover(popoverTriggerEl);
    });
})();

// Console welcome message
console.log('%c Welcome to Swiggaa! ', 'background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; font-size: 20px; padding: 10px;');
console.log('%c Hungry? Order now! ', 'color: #667eea; font-size: 14px;');
