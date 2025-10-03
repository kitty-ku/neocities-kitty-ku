let nav_open = false;

function show_nav() {
	navbar = document.getElementById("nav");
	if (nav_open) {
		navbar.style["left"] = "-50vh";
		nav_open = false;
	} else {
		navbar.style["left"] = "0vh";
		nav_open = true;
	}
}
