float ang;
float x,y;
float vel;

void setup (){
  size(1000,500);
  x=150;
  y=350;
  vel=2;

}


void draw(){
 background(255);
 stroke(0);
 strokeWeight(2);
 fill(#AFAAA8);
 rect(0,350,width,150);
 
  carro();
  x+=vel;
  
}

void carro(){
  //chasis
  beginShape();
  fill(#E8601C);
  vertex(x,y);//1
  vertex(x,y-35);//2
  vertex(x+50,y-35);//3
  vertex(x+75,y-80);//4
  vertex(x+150,y-80);//5
  vertex(x+225,y-35);//6
  vertex(x+260,y-35);//7
  vertex(x+260,y);//8
  vertex(x,y);//9
  endShape();
  
  //ventanas
  beginShape();
  fill(#FFFDFC);
  vertex(x+59,y-35);//1
  vertex(x+82,y-72);//2
  vertex(x+105,y-72);//3
  vertex(x+105,y-35);//4
  vertex(x+59,y-35);//5
  endShape();
  
    beginShape();
  fill(#FFFDFC);
  vertex(x+130,y-72);//1
  vertex(x+150,y-72);//2
  vertex(x+210,y-35);//3
  vertex(x+130,y-35);//4
  vertex(x+130,y-72);//5
  endShape();
  
//llantas
pushMatrix();
translate(x+60,y);
stroke(0);
strokeWeight(3);
fill(#000000);
circle(0,0,40);
fill(#838282);
circle(0,0,20);
stroke(255);
rotate(radians(ang));
line(0,0,20,0);
popMatrix();


pushMatrix();
translate(x+215,y);
stroke(0);
strokeWeight(3);
fill(#000000);
circle(0,0,40);
fill(#838282);
circle(0,0,20);
stroke(255);
rotate(radians(ang));
line(0,0,20,0);
popMatrix();

}
  
