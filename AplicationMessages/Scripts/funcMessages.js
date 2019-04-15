var messages = document.querySelectorAll(".message-content");
for (var i = 0; i < messages.length; i++) {
    messages[i].style.display = "none";
}

var messagesRows = document.querySelectorAll(".open");
for (var i = 0; i < messagesRows.length; i++) {
    messagesRows[i].addEventListener("click", function () {
        if (this.getAttribute("src") == "img/derecha.png") {
            this.src = "img/abajo.png";
            this.parentElement.nextElementSibling.style.display = "block";
        } else {
            this.src = "img/derecha.png";
            this.parentElement.nextElementSibling.style.display = "none";
        }
    });
}