 
//DIBUJO//
 
  void elemento_3(){
     

     background(20);
     stroke(random(255),random(255),random(255));
     strokeWeight(5);
     translate(width/2, height/2);
     for (int i=0; i<NUM_LINES3; i++){
     line(x9(t+i),y9(t+i),x10(t+i),y10(t+i));}
    
     
     stroke(random(255),random(255),random(255));
     strokeWeight(5);
     for (int i=0; i<NUM_LINES3; i++){
     line(x11(t+i),y11(t+i),x12(t+i),y12(t+i));}
     
     stroke(random(255),random(255),random(255));
     strokeWeight(5);
     for (int i=0; i<NUM_LINES3; i++){
     line(x13(t+i),y13(t+i),x14(t+i),y14(t+i));}
     
     t+=0.2;
  }
  
  float x9(float t){
  return sin(t/10)*100+sin(t/5)*20;}
  
  float y9(float t){
    return tan(t/10)*100+cos(t/5)*50;}
  
  float x10(float t){
  return sin(t/10)*200+sin(t)*2;}
  
  float y10(float t){
    return tan(t/10)*200+sin(t/24)+20;}
    
 
 float x11(float t){
  return sin(t/10)*100+sin(t/5)*20;}
  
  float y11(float t){
    return tan(-t/10)*100+cos(t/5)*50;}
  
  float x12(float t){
  return sin(t/10)*200+sin(t)*2;}
  
  float y12(float t){
    return -tan(t/10)*200+sin(t/24)+20;}
    
 float x13(float t){
  return sin(-t/10)*100+sin(t/5)*20;}
  
  float y13(float t){
    return tan(t/10)*100+cos(t/5)*50;}
  
  float x14(float t){
  return -sin(t/10)*200+sin(t)*2;}
  
  float y14(float t){
    return tan(t/10)*200+sin(t/2)*20;}