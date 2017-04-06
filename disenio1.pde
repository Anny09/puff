class Box {

  
  Body body;
  float w;
  float h;

  
  Box(float x, float y) {
    w = random(4, 8);
    h = random(4, 8);

    makeBody(new Vec2(x, y), w, h);
  }

  
  
  void display() {
   
    Vec2 pos = box2d.getBodyPixelCoord(body);
   
    float a = body.getAngle();
    elemento_1();
    cambio_dibujo();}

     
      
   
      
    
    void makeBody(Vec2 center, float w_, float h_) {

    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

   
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

   
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));

    body = box2d.createBody(bd);
    body.createFixture(fd);

    
    body.setLinearVelocity(new Vec2(15, 5));
  }
   

//DIBUJO DE ELEMENTOS//

     void elemento_1(){
     background(20);
     stroke(random(255),random(255),random(0));
     strokeWeight(5);
     translate(width/8, height/6);
     for (int i=0; i<NUM_LINES1; i++){
     line(x1(t+i),y1(t+i),x2(t+i),y2(t+i));}
     
     stroke(random(255),random(0),random(0));
     strokeWeight(5);
     translate(width/8, height/6);
     for (int i=0; i<NUM_LINES1; i++){
     line(x3(t+i),y3(t+i),x4(t+i),y4(t+i));}
    
    
 
    
     stroke(random(255),random(0),random(255));
     strokeWeight(5);
     translate(width/7, height/8);
     for (int i=0; i<NUM_LINES1; i++){
     line(x1(t+i),y1(t+i),x2(t+i),y2(t+i));}
     
     stroke(random(255),random(255),random(255));
     strokeWeight(5);
     translate(width/7, height/8);
     for (int i=0; i<NUM_LINES1; i++){
     line(x3(t+i),y3(t+i),x4(t+i),y4(t+i));}
 

    
     stroke(random(0),random(255),random(255));
     strokeWeight(5);
     translate(width/7, height/7);
     for (int i=0; i<NUM_LINES1; i++){
     line(x1(t+i),y1(t+i),x2(t+i),y2(t+i));}
     
     stroke(random(255),random(0),random(0));
     strokeWeight(5);
     translate(width/7, height/7);
     for (int i=0; i<NUM_LINES1; i++){
     line(x3(t+i),y3(t+i),x4(t+i),y4(t+i));}
 
  t+=0.5;
  }  
 float x1(float t){
 return sin(t/10)*100+sin(t/5)*20;}
 float y1(float t){
    return cos(-t/10)*100;}
 float x2(float t){
 return sin(t/10)*200+sin(t)*2;}
 float y2(float t){
    return -cos(t/20)*200+cos(t/12)+20;}
    
    
 float x3(float t){
  return sin(t/10)*100+sin(t/5)*20;}
  
  float y3(float t){
  return cos(-t/10)*100;}
  
  float x4(float t){
  return sin(t/10)*200+sin(t)*2;}
  
  float y4(float t){
  return -cos(t/20)*200+cos(t/12)+20;} 
  
  void cambio_dibujo(){
    
      if(mousePressed){
      elemento_2();}
     
       else if(mousePressed){
       elemento_3();}
       mousePressed();{
       elemento_4();}
     }
  
     

  
 
    