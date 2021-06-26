let angle = 0;
let w = 25;
let maxD;
function setup() {
    createCanvas(800, 800, WEBGL);
    maxD = dist(0, 0, 200, 200);
    background(0);
}

function draw() {
    background(0);
    ortho(-800, 800, 800, -800, 0, 2000);
    /////// for isometric projection
    rotateX(radians(45));
    rotateY(atan(1 / sqrt(2)));
    for (let z = 0; z < height; z += w) {
        for (let x = 0; x < width; x += w) {
            push();
            let d = dist(x, z, width / 2, height / 2);
            let offset = map(d, 0, maxD, 3.5, -3.5);
            let a = angle + offset;
            let h = map(sin(a), -1, 1, 100, 300);
            translate(x - width / 2, 0, z - height / 2);
            normalMaterial();
            box(w - 2, h, w - 2);
            pop();
        }
    }
    angle += 0.1;
}
