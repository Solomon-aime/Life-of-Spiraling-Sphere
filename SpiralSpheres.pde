//This code runs on Porcessing4
//PeasyCam cam;
int radius = 250;

float p =0;

void setup() {
  background(0);
  size(1080, 720, P3D);
  //cam = new PeasyCam(this, 500);
  colorMode(HSB);
  smooth();
  lights();
  //noStroke();
  
  strokeWeight(3);
  frameRate(24);
}

void draw() {
  background(0);
  
  translate(width/2, height/2, 0);
  rotateX(265);
  rotateY(90);
  
  float s =0;
  float t =0;
  float lastX =0;
  float lastY =0;
  float lastZ =0;
  
  
  p +=2;
  stroke(p, p, p, 255);
  
  while (t <= 180) {
    s +=150;
    t +=1;
    float radianS = radians(s);
    float radianT = radians(t);
    
    float thisX = 0 + (radius * cos(radianS) * sin(radianT));
    float thisY = 0 + (radius * sin(radianS) * sin(radianT));
    float thisZ = 0 + (radius * cos(radianT));
    
   if (lastX !=0) {
     line(thisX, thisY, thisZ, lastX, lastY, lastZ);     
     //point(thisX, thisY, thisZ);
     //point(lastX, lastY, lastZ);
   }
   
   lastX = thisX;
   lastY = thisY;
   lastZ = thisZ;
  }
  //saveFrame("screen-####.png");
}

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.png");
  }
  
}
