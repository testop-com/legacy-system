// Smooth scrolling for anchor links
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

// Add fade-in animation on scroll
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

// Observe all cards and sections
document.querySelectorAll('.doc-card, .schema-card, .guide-item, .role-card').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(20px)';
    el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(el);
});

// Track downloads (for analytics if needed)
document.querySelectorAll('a[download]').forEach(link => {
    link.addEventListener('click', function() {
        const fileName = this.getAttribute('href');
        console.log('Download:', fileName);
        // Here you could send analytics data if needed
    });
});

// Add active state to navigation on scroll
window.addEventListener('scroll', () => {
    const scrollPosition = window.scrollY;
    
    // Add shadow to header on scroll
    const header = document.querySelector('.header');
    if (scrollPosition > 50) {
        header.style.boxShadow = '0 4px 12px rgba(0, 0, 0, 0.15)';
    } else {
        header.style.boxShadow = '0 4px 6px rgba(0, 0, 0, 0.1)';
    }
});

// Print page information on load
console.log(`
╔═══════════════════════════════════════════════════════════╗
║   Documentação Técnica - Grupo Testop                    ║
║   Bases de Dados: 11 | Tabelas: 539 | Tamanho: ~180 MB  ║
║   Preparado por: TECMOZA | Data: 01/11/2025             ║
╚═══════════════════════════════════════════════════════════╝
`);

// Check if all resources are loaded
window.addEventListener('load', () => {
    console.log('✅ Página carregada com sucesso!');
    console.log('📊 Total de documentos disponíveis: 16');
});

