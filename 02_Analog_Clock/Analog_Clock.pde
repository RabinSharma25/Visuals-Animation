float theta1 = 0;
float theta2 = 0;
void setup()
{
    size(700, 700);
    surface.setTitle("Analog Clock using Processing");
    surface.setLocation(0, 0);
    surface.setResizable(true);
    background(0);
}

void draw()
{
    translate(width / 2, height / 2);
    background(0);
    noFill();
    stroke(0, 200, 0);
    strokeWeight(4);
    circle(0, 0, 600);

    float rb = 290; // diameter
    float rs = 270; // diameter
    float markXS, markYS, markXB, markYB;
    int mintxt = 0;
    int hourtxt = 1;

    // taking the time
    int sec = second();
    int hour = hour();
    int min = minute();

    // variables for the arrows
    float arrowSecX, arrowSecY, arrowMinX, arrowMinY, arrowHourX, arrowHourY;
    float arrowLenSec = 250;
    float arrowLenMin = 220;
    float arrowLenHour = 190;

    // relating angles with time for the arrow movement
    float arrowAngleSec = (sec * 6) - 90;
    float arrowAngleMin = (min * 6) - 90;
    float arrowAngleHour = ((hour * 30) - 90) + min * 0.5; // adding some components of min of proper hour hand movement

    for (int i = 0; i <= 360; i = i + 6)
    {

        theta1 = i - 90;
        if (i % 5 == 0) // for the markings for minutes text
        {

            markXS = (rs + 15) * cos(radians(theta1));
            markYS = (rs + 15) * sin(radians(theta1));

            // min text
            if (mintxt <= 5)
            {
                fill(200);
                textAlign(CENTER);
                textSize(15);
                String s = "0" + str(mintxt);
                text(s, markXS, markYS, 0);
            }
            else if (mintxt > 5)
            {
                fill(200);
                textAlign(CENTER);
                textSize(15);
                String s = str(mintxt);
                text(s, markXS, markYS, 0);
            }
            // hour text
            markXS = (rs - 15) * cos(radians(theta1 + 30));
            markYS = (rs - 15) * sin(radians(theta1 + 30));
            textAlign(CENTER);
            textSize(28);
            fill(150, 45, 66);
            text(hourtxt, markXS, markYS, 0);

            mintxt = mintxt + 5;
            hourtxt += 1;
            if (hourtxt == 13)
            {
                hourtxt = 1;
            }
        }
        else
        {
            // normal markings

            markXS = rs * cos(radians(theta1));
            markYS = rs * sin(radians(theta1));

            markXB = rb * cos(radians(theta1));
            markYB = rb * sin(radians(theta1));
            stroke(0, 0, 200);
            line(markXS, markYS, markXB, markYB);
        }
    }

    // arrows
    // sec
    arrowSecX = arrowLenSec * cos(radians(arrowAngleSec));
    arrowSecY = arrowLenSec * sin(radians(arrowAngleSec));
    stroke(200);
    strokeWeight(3);
    line(0, 0, arrowSecX, arrowSecY);
    // min
    arrowMinX = arrowLenMin * cos(radians(arrowAngleMin));
    arrowMinY = arrowLenMin * sin(radians(arrowAngleMin));
    stroke(200);
    strokeWeight(8);
    line(0, 0, arrowMinX, arrowMinY);
    // hour
    arrowHourX = arrowLenHour * cos(radians(arrowAngleHour));
    arrowHourY = arrowLenHour * sin(radians(arrowAngleHour));
    stroke(200);
    strokeWeight(11);
    line(0, 0, arrowHourX, arrowHourY);

    // design text // company name
    textAlign(CENTER);
    textSize(20);
    fill(0, 78, 100);
    text("ROLEX", 0, -100);
}
