// Fetch and include navbar.html
fetch('navbar.html')
    .then(response => response.text())
    .then(data => {
        document.getElementById('navbarContainer').innerHTML = data;
        // After including, you can run any scripts related to the navbar
        // For example, initialize toggleOptions() or other functionality
        toggleOptions(); // Example initialization, adjust as per your script needs
    });
