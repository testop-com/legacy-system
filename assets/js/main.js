// ===================================
// Navigation Bar Functionality
// ===================================

// Mobile menu toggle
const navToggle = document.getElementById('navToggle');
const navMenu = document.getElementById('navMenu');

if (navToggle) {
    navToggle.addEventListener('click', () => {
        navMenu.classList.toggle('active');
    });
}

// Close mobile menu when clicking a link
document.querySelectorAll('.nav-link').forEach(link => {
    link.addEventListener('click', () => {
        navMenu.classList.remove('active');
    });
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            // Use native scrollIntoView with scroll-margin-top from CSS
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// Active section highlighting in navigation
const sections = document.querySelectorAll('section[id], header[id], footer[id], .section-divider[id]');
const navLinks = document.querySelectorAll('.nav-link');

function updateActiveSection() {
    const scrollPosition = window.scrollY + 100;

    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        const sectionHeight = section.offsetHeight;
        const sectionId = section.getAttribute('id');

        if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
            navLinks.forEach(link => {
                link.classList.remove('active');
                if (link.getAttribute('href') === `#${sectionId}`) {
                    link.classList.add('active');
                }
            });
        }
    });
}

// Navbar scroll effect
const navbar = document.getElementById('navbar');
let lastScroll = 0;

window.addEventListener('scroll', () => {
    const currentScroll = window.pageYOffset;

    // Add scrolled class for shadow effect
    if (currentScroll > 50) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }

    // Update active section
    updateActiveSection();

    // Back to top button
    const backToTop = document.getElementById('backToTop');
    if (backToTop) {
        if (currentScroll > 300) {
            backToTop.classList.add('visible');
        } else {
            backToTop.classList.remove('visible');
        }
    }

    lastScroll = currentScroll;
});

// Back to top button functionality
const backToTop = document.getElementById('backToTop');
if (backToTop) {
    backToTop.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// ===================================
// Animations on Scroll
// ===================================

const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

// Observe all cards and sections for fade-in animation
document.querySelectorAll('.doc-card, .schema-card, .guide-item, .role-card, .system-card, .assessment-card, .stat-box, .tech-card').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(20px)';
    el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(el);
});

// ===================================
// Analytics & Tracking
// ===================================

// Track downloads (for analytics if needed)
document.querySelectorAll('a[download]').forEach(link => {
    link.addEventListener('click', function () {
        const fileName = this.getAttribute('href');
        console.log('Download:', fileName);
        // Here you could send analytics data if needed
    });
});

// Track external links
document.querySelectorAll('a[target="_blank"]').forEach(link => {
    link.addEventListener('click', function () {
        const linkUrl = this.getAttribute('href');
        console.log('External link:', linkUrl);
        // Here you could send analytics data if needed
    });
});

// ===================================
// Page Load
// ===================================

// Print page information on load
console.log(`
╔═══════════════════════════════════════════════════════════╗
║   Sistema Interno de Gestão Empresarial - Tes-Top       ║
║   Bases de Dados: 11 | Sistemas: ~17 | Tabelas: 539     ║
║   Preparado por: TECMOZA | Data: 01/11/2025             ║
╚═══════════════════════════════════════════════════════════╝
`);

// Check if all resources are loaded
window.addEventListener('load', () => {
    console.log('✅ Página carregada com sucesso!');
    console.log('📊 Documentação completa: Base de Dados + Código-Fonte');
    console.log('🔧 Navegação: Use o menu superior para navegar entre secções');

    // Set initial active section
    updateActiveSection();
});

