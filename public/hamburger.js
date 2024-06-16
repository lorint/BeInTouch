function toggleOptions() {
    const optionsDropdown = document.getElementById('optionsDropdown');
    optionsDropdown.classList.toggle('is-active');
    
    // Scroll the page down to make space for the dropdown
    if (optionsDropdown.classList.contains('is-active')) {
        const navbarHeight = document.querySelector('.navbar').offsetHeight;
        window.scrollBy(10, navbarHeight);
    }
}