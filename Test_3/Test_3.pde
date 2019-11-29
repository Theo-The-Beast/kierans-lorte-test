float angle;
float jitter;
PImage raflebager;
PImage[] Billeder = new PImage[5];
PImage terning1;
PImage terning2;
PImage terning3;
PImage terning4;
PImage terning5;
PImage terning6;
Boolean Visterninger = false;


void setup() {
  size(1200, 1000);
for (int i=0; i<Billeder.length; i++) {
    Billeder[i] = loadImage( "terning" + i + ".png");
}


raflebager = loadImage("raflebager.png");
terning1 = loadImage("terning1.png");
terning2 = loadImage("terning2.png");
terning3 = loadImage("terning3.png");
terning4 = loadImage("terning4.png");
terning5 = loadImage("terning5.png");
terning6 = loadImage("terning6.png");

}

void draw(){
  
  background(51);
  if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/2, height/2);
  rotate(c);
   image(raflebager , 1 , 1, 100,100); 
VisTerninger();

}

void VisTerninger(){
 for (int x = 1; x < 5; x++) {
    

  image(Billeder[(int)random(5)], 100, 100, 100, 100);
   image(Billeder[(int)random(5)], 200, 200, 100, 100);
//image(Billeder[1], 100, 100, 100, 100);
   // image(Billeder[1], 200, 200, 100, 100);

 }
}


void mousePressed() {
Visterninger = true;


  
}
  
 
  
