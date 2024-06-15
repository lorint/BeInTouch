// Fetch and include navbar.html
fetch('navbar.html')
    .then(response => response.text())
    .then(data => {
        document.getElementById('navbarContainer').innerHTML = data;
        // After including, you can run any scripts related to the navbar
        if (typeof toggleOptions === "function") {
            toggleOptions(); // Example initialization, adjust as per your script needs
        }
    })
    .catch(error => console.error('Error fetching the navbar:', error));

document.addEventListener("DOMContentLoaded", function() {
    const hoverTexts = document.querySelectorAll('.hover-text');
    const popup = document.getElementById('popup');
    const popupImage = document.getElementById('popupImage');

    if (hoverTexts.length > 0 && popup && popupImage) {
        hoverTexts.forEach(hoverText => {
            hoverText.addEventListener('mouseenter', function() {
                const imageUrl = hoverText.getAttribute('data-image');
                popupImage.src = imageUrl;
                popup.style.display = 'block';

                const rect = hoverText.getBoundingClientRect();
                const popupWidth = popup.offsetWidth;

                // Position the popup to the left of the hovered element
                popup.style.top = `${rect.top + window.scrollY -200}px`;
                popup.style.left = `${rect.left + window.scrollX - popupWidth - 1}px`; // 10px offset from the element
            });

            hoverText.addEventListener('mouseleave', function() {
                popup.style.display = 'none';
            });
        });
    }
});
