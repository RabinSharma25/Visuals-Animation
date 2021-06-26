// Algorithmic Botany

let n = 0;
let c = 5; // scaling factor
function setup(){
createCanvas(1400,700);
background(0);
colorMode(HSB);
angleMode(DEGREES);
}

function draw(){
translate(width/2,height/2);

let angle = n * 137.6; // .3, .5 , .6 
let r = c * sqrt(n);

let x = r * cos(angle);
let y = r * sin(angle); 

fill(angle%256,255,255);
ellipse(x,y,7,7);

n++;
}