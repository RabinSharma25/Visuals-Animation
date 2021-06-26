//int len;
float angle = PI / 6;
void setup() {
    
    //size(1300,800);
    fullScreen();
    surface.setResizable(true);
    background(0);
}

void draw() {
    //line(250,height,250,height/2);
     stroke(0,200,100);
     strokeWeight(4);
     translate(width / 2,height);
     pushMatrix();
     branch(150);
     popMatrix();
     pushMatrix();
     translate(450,0);
     branch(150);
     popMatrix();
     pushMatrix();
     translate(-450,0);
     branch(150);
     popMatrix();
     
     pushMatrix();
     translate(-200,0);
     branch(250);
     popMatrix();
     pushMatrix();
     translate(200,0);
     branch(250);
     popMatrix();
}

void branch(float len){
    
    line(0,0,0, -len);
    translate(0, -len);
    
    if (len > 4) {
        pushMatrix();
        rotate(angle);
        branch(len * 0.67);
        popMatrix();
        pushMatrix();
        rotate( -angle);
        branch(len * 0.67);
        popMatrix();
   }
   }
       
       
