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

let counter = 0;
const saveCaption = async (id) => {
    counter++;
    const url = "http://dev.mountaintopsafarisadventures.co.ke/rename";
    const Input = document.querySelector(`#sam${id}`);
    const row = Input.parentNode.parentNode;
    const  tbody = document.querySelector("#table-body");
    const table = document.querySelector("#table");
    let caption;
    if(Input.value === ""){
        caption = Input.parentNode.previousElementSibling.innerText;
    }else{
        caption = Input.value;
    }
    
    if(counter === tbody.childElementCount){
        table.style.display = 'none';
        const section = document.querySelector("#content");
        section.innerHTML = "<div class='container mt-5 d-flex justify-content-center'><button class='btn btn-lg btn-primary my-5 mx-5' onclick='loadNext()'>LOAD NEXT BATCH</button></div>"
    }
    
    let data = {
        "id":id,
        "caption":caption
    };

    const update = await fetch(url, {
        method: 'POST',
        body: JSON.stringify(data), // data can be `string` or {object}!
        headers: {
            'Content-Type': 'application/json',
            "Accept": "application/json, text-plain, */*",
            
        }
    }); 
    row.style.display = 'none';
    total++;
    updateUI();
};

const updateUI = ()=>{
    let count = document.querySelector('#count');
    count.innerText = `RENAMED: ${total}/193`;
};

const loadNext= ()=>{
    document.location.reload();
};
