slogans = document.getElementsByClassName("construction-slogan")
slogan_box = document.getElementById("under-construction")

let i = 0; // 1 -- len(slogans)-1
const delay_ms = 2000;

function flash_slogan() {
	i = i % (slogans.length - 1) + 1;

	slogans[0].style["opacity"] = "0";
	slogans[i].style["opacity"] = "1";
	setTimeout(flash_under_construction, delay_ms);
}

function flash_under_construction() {
	slogans[0].style["opacity"] = "1";
	slogans[i].style["opacity"] = "0";
	setTimeout(flash_slogan, delay_ms);
}

flash_slogan()