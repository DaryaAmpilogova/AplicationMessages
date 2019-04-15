var messages = document.querySelectorAll(".message-content");
for (var i = 0; i < messages.length; i++) {
    messages[i].style.display = "none";
}

var messagesRows = document.querySelectorAll(".open");
for (var i = 0; i < messagesRows.length; i++) {
    messagesRows[i].addEventListener("click", function () {
        if (this.getAttribute("src") == "img/derecha.png") {
            this.src = "img/abajo.png";
            document.querySelector(".message-content[meta-email='" + this.getAttribute("meta-email") + "']").style.display = "block";
        } else {
            this.src = "img/derecha.png";
            document.querySelector(".message-content[meta-email='" + this.getAttribute("meta-email") + "']").style.display = "none";
            var status = document.querySelector(".user-status[meta-email='" + this.getAttribute("meta-email") + "']");
            if (status.classList.contains('inactive')) {
                status.classList.remove('inactive');
                status.classList.add('offline');
            }
        }
    });
}

var btnDelete = document.querySelectorAll(".delete-message");
for (var i = 0; i < btnDelete.length; i++) {
    btnDelete[i].addEventListener("click", function () {

        document.querySelector(".email[meta-email ='" + this.getAttribute("meta-email") + "']").remove();

    });
}