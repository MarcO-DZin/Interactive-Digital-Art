import processing.sound.*;

AudioIn input;
Amplitude amp;

float volume = 0;
float r;

int rectSize=4;
float noiseScale = 0.08;
float noiseValue;
float t;

void setup(){
  
  size(1000,1000);
  noStroke();
  frameRate(60);
    t = 0;
  input = new AudioIn(this, 0);
  input.start();
  
  amp = new Amplitude(this);
  amp.input(input);
  
 }

void draw (){
        volume = amp.analyze()*100;
         
  pushMatrix(); //Galaxy
  for (int x=0;x<500;x++)
  {
    for (int y=0; y<500;y++)
    {
      
      noiseValue = noise(x*noiseScale, y*noiseScale,(frameCount*noiseScale))/3;
      
            fill(noiseValue*255,10*noiseValue,205*noiseValue);
      ellipse(x*rectSize,y*rectSize,rectSize,rectSize);
      
    }
      }
  popMatrix();
 
 pushMatrix(); //Stars
 
 fill(255, 50);
 ellipse(random(width), random(height), 7,7);
  fill(255, 30);
 ellipse(random(width), random(height), 2,2);
  fill(255, 50);
 ellipse(random(width), random(height), 7,7);
  fill(255, 50);
 ellipse(random(width), random(height), 7,7);
  fill(255, 30);
 ellipse(random(width), random(height), 2,2);
  fill(255, 50);
 ellipse(random(width), random(height), 7,7);
 popMatrix();
 
 //Zima Blue Square
 Float w = width/2 * noise(volume);
 Float h = height/2 * noise(-volume+5);
 
 //rectMode(CENTER);
  noStroke(); 
  fill(74, 198, 236);
 ellipse(w,h,volume*100,volume*100);
    }
    
 









  
 
