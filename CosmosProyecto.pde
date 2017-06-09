float x = 0; 
float y = 0;
float mov = 0;
float spyral = 0;
PImage planet;
PImage planet2;
PImage planet3;

void setup(){
  size (500,500);
  background(0);
  planet = loadImage("Planet.png");
  planet2 = loadImage("p2.png");
  planet3 = loadImage("p3.png");
  text("Clic sostenido para dibujar, v, b, m y n para crear", 10,10);
  text("Presionar a para crear planetas, c para agujeros negros", 10,20);
  text("Presionar c para agujeros negros", 10,30);
}
void draw(){
  ellipseMode(CENTER);
  spyral -= 0.1;
  mov -= 0.4;
  
  x = 255 + cos(mov) * spyral;
  y = 255+ sin(mov) * spyral;
  noStroke();
  fill(random(255,255));
  ellipse(x,y,1,1);
  if(mousePressed == true){
  ellipseMode(CENTER);
  spyral -= 0.1;
  mov -= 0.4;
  
  x = mouseX + cos(mov) * spyral;
  y = mouseY+ sin(mov) * spyral;
  noStroke();
  fill(#75D692);
  ellipse(x,y,1,1);
  }
  if(key == 'n'){
  ellipseMode(CENTER);
  spyral -= 0.1;
  mov -= 0.4;
  
  x = random(500) + sin(mov) * spyral;
  y = random(500)+ cos(mov) * spyral;
  noStroke();
  fill(#C978B7);
  ellipse(x,y,2,2);
   }
}
void keyPressed(){
  if(key == 'm'){
  ellipseMode(CENTER);
  spyral -= 0.1;
  mov -= 0.4;
  
  x = 255 + sin(mov) * spyral;
  y = 255+ cos(mov) * spyral;
  noStroke();
  fill(255,0,0);
  ellipse(x,y,1,1);
  }
  if(key == 'b'){
  ellipseMode(CENTER);
  spyral -= 0.1;
  mov -= 0.4;
  
  x = 255 + cos(mov) * spyral;
  y = 255+ cos(mov) * spyral;
  noStroke();
  fill(0,0,255);
  ellipse(x,y,1,1);
  }
  if(key == 'v'){
  ellipseMode(CENTER);
  spyral -= 0.1;
  mov -= 0.4;
  
  x = mouseX + sin(mov) * spyral;
  y = mouseY+ sin(mov) * spyral;
  noStroke();
  fill(#67E0E3);
  ellipse(x,y,1,1);
  }
  if(key == 'c'){
  ellipseMode(CENTER);
  spyral -= 0.1;
  mov -= 0.4;
  
  x = mouseX + cos(mov) * spyral;
  y = mouseY+ cos(mov) * spyral;
  noStroke();
  fill(0);
  ellipse(x,y,10,10);
  }
  if(key == 'a'){
  image(planet, mouseX, mouseY);
  }
  if(key == 's'){
  image(planet2, mouseX, mouseY);
  }
  if(key == 'd'){
  image(planet3, mouseX, mouseY);
  }
  
  
 
}
  