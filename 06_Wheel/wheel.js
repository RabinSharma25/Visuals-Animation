
function setup(){
createCanvas(500,500);
background(0);

}

function draw(){
translate(width/2,height/2);
rotate(mouseX);
noFill()
stroke(0,200,0);
strokeWeight(1);
rect(0,0,100,100);

}

function mousePressed(){

    stroke(0);
    fill(0);
    circle(0,0,80);

    noFill();
    strokeWeight(3);
    stroke(0,0,100);
    circle(0,0,200);
    
    stroke(0,0,200);
    strokeWeight(4);
    circle(0,0,280);

}