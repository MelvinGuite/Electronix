document.addEventListener("DOMContentLoaded", function () {
    const passwordField = document.getElementById("password");
    const confirmPasswordField = document.getElementById("confirmPassword");

    confirmPasswordField.addEventListener("input", function () {
        const password = passwordField.value;
        const confirmPassword = confirmPasswordField.value;

        if (password === confirmPassword) {
            confirmPasswordField.setCustomValidity("");
        } else {
            confirmPasswordField.setCustomValidity("Las contraseñas no coinciden");
        }
    });

    const registrationForm = document.getElementById("registration");
    registrationForm.addEventListener("submit", function (event) {
        if (!registrationForm.checkValidity()) {
            event.preventDefault(); // Prevent form submission if validation fails
        }
    });
});
