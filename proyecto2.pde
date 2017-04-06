

static final int NUM_LINES1=20;//Numero de lineas que dibuja la ecuación
static final int NUM_LINES2=5;
static final int NUM_LINES3=25;
static final int NUM_LINES4=20;

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Boundary> boundaries;
ArrayList<Box> boxes;
float t;
boolean hacer=true;


void setup(){
size (700,700);
background(0);
 box2d = new Box2DProcessing(this);
 box2d.createWorld();
 box2d.setGravity(0, -10);
 boxes = new ArrayList<Box>();
 boundaries = new ArrayList<Boundary>();

 boundaries.add(new Boundary(width/2,height-5,width-1,10));


}
void draw(){
    box2d.step();
    mouseReleased();{
    Box p = new Box(20,10);
    boxes.add(p);
}

 box2d.step();
 
 else
  
 for (Boundary wall: boundaries) {
    wall.display();
  }  
 
 }
 
  class Boundary {

  float x;
  float y;
  float w;
  float h;
  
 
  Body b;

  Boundary(float x_,float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;

   
    PolygonShape sd = new PolygonShape();

    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);

    sd.setAsBox(box2dW, box2dH);


  
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    b = box2d.createBody(bd);
    
    
    b.createFixture(sd,1);
  }


  void display() {
    
    fill(0);
    stroke(0);
    rectMode(CENTER);
    rect(x,y,w,h);
  }

}

  