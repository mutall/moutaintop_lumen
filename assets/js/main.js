//get the navbar position of nav bar
const navbar = document.getElementById("nav");
const topOffset = navbar.offsetTop;

// make a function to fix the navbar on scroll
window.onscroll = () => {
    if (window.pageYOffset > topOffset) {
        navbar.classList.add("sticky");
    } else {
        navbar.classList.remove("sticky");
    }
};

const randomClassWidth = () => {
    //create the array for class widths
    const classes = [
        "small-width",
        "normal-width",
        "long-width",
        "long-height",
        "big-square"
    ];

    // return a random width each time its called
    return classes[Math.floor(Math.random() * classes.length)];
};
