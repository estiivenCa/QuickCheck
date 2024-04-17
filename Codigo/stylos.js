document.addEventListener('DOMContentLoaded', function () {
    const links = document.querySelectorAll('aside ul li a');
    const sections = document.querySelectorAll('.content');

    links.forEach(link => {
        link.addEventListener('click', function (e) {
            e.preventDefault();

            // Oculta todas las seccionesssssssssssssss
            sections.forEach(section => {
                section.classList.remove('active');
            });

            // Muestra solo la sección activaaaaaaaaaaaaa
            const targetId = link.getAttribute('href').substring(1);
            const targetSection = document.getElementById(targetId);

            if (targetSection) {
                targetSection.classList.add('active');
            }
        });
    });
});