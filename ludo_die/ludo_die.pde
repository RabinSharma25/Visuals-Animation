import peasy.*;
PeasyCam cam;
float bx = 0;
float by = 0;
float bz = 0;
int cor = -1;
float quad_len = 150;
float num;
float angleX = 0;
float angleY = 0;
void setup()
{

  size(1000, 600, P3D);
  cam = new PeasyCam(this, 400);
  rectMode(CENTER);
}

void draw()
{

  int test = 0;
  if (mousePressed == true)
  {
    test = 1;

    num = random(0, 6);
    if (num <= 1)
    {
      angleX = 0;
      angleY = 0;
    }

    else if (num > 1 && num <= 2)
    {
      angleX = 180;
      angleY = 0;
    }

    else if (num > 2 && num <= 3)
    {
      angleY = 0;
      angleX = 90;
    }

    else if (num > 3 && num <= 4)
    {
      angleX = -90;
      angleY = 0;
    }

    else if (num > 4 && num <= 5)
    {
      angleY = -90;
      angleX = 0;
    }

    else
    {
      angleY = 90;
      angleX = 0;
    }
  }

  if (test == 1)
  {
    // for some random rotation of the cube
    for (int i = 0; i < 300; i++)
    {
      rotateX(radians(random(-100, 200)));
      rotateY(radians(random(100, 150)));
      rotateZ(radians(random(-180, 150)));
    }
  }
  rotateX(radians(angleX));
  rotateY(radians(angleY));
  background(0);
  stroke(0, 0, 200);
  strokeWeight(5);
  point(0, 50);
  noFill();
  stroke(200, 0, 0);
  beginShape(QUAD);
  float r = quad_len / 2;
  float c = -1;
  // front face
  fill(200);
  vertex(-r, c * r, r);
  vertex(r, c * r, r);
  vertex(r, c * (-r), r);
  vertex(-r, c * (-r), r);

  // back face
  vertex(-r, c * r, -r);
  vertex(r, c * r, -r);
  vertex(r, c * (-r), -r);
  vertex(-r, c * (-r), -r);
  // top face
  vertex(-r, c * (r), r);
  vertex(r, c * (r), r);
  vertex(r, c * (r), -r);
  vertex(-r, c * (r), -r);
  // bottom face
  vertex(-r, c * (-r), r);
  vertex(r, c * (-r), r);
  vertex(r, c * (-r), -r);
  vertex(-r, c * (-r), -r);
  // left face
  vertex(-r, c * (r), r);
  vertex(-r, c * (r), -r);
  vertex(-r, c * (-r), -r);
  vertex(-r, c * (-r), r);
  // right face
  vertex(r, c * (r), r);
  vertex(r, c * (r), -r);
  vertex(r, c * (-r), -r);
  vertex(r, c * (-r), r);
  endShape();
  float m = r + 2;
  stroke(0, 0, 200);
  strokeWeight(10);

  // front face // 1
  point(0, 0, m);
  // back face // 2
  point(10, 0, -m);
  point(-10, 0, -m);
  // top face // 3
  point(20, c * m, 0);
  point(0, c * m, 0);
  point(-20, c * m, 0);
  // bottom face // 4
  point(20, c * (-m), 15);
  point(-20, c * (-m), 15);
  point(20, c * (-m), -15);
  point(-20, c * (-m), -15);

  // left face // 5

  point(-m, c * 20, 15);
  point(-m, c * (-20), 15);
  point(-m, 0, 0);
  point(-m, c * 20, -15);
  point(-m, c * (-20), -15);

  // right face // 6
  point(m, c * 20, 15);
  point(m, c * (-20), 15);
  point(m, c * (0), 15);
  point(m, c * (0), -15);
  point(m, c * 20, -15);
  point(m, c * (-20), -15);
}
