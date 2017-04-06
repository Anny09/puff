

 //DIBUJO//
 
  void elemento_4(){
     

     background(20);
     stroke(random(255),random(255),random(255));
     strokeWeight(5);
     translate(width/2, height/2);
     for (int i=0; i<NUM_LINES4; i++){
     line(x15(t+i),y15(t+i),x16(t+i),y16(t+i));}
     
     stroke(random(255),random(255),random(255));
     strokeWeight(1);
     for (int i=0; i<NUM_LINES4; i++){
     line(x17(t+i),y17(t+i),x18(t+i),y18(t+i));}
    
     stroke(random(255),random(255),random(255));
     strokeWeight(2);
     for (int i=0; i<NUM_LINES4; i++){
     line(x19(t+i),y19(t+i),x20(t+i),y20(t+i));}
     
     stroke(255);
     strokeWeight(1);
     for (int i=0; i<NUM_LINES4; i++){
     line(x21(t+i),y21(t+i),x22(t+i),y22(t+i));}
    
     t+=0.5;
  }
  
float x15(float t){
  return sin(t/10)*100+sin(t/5)*200;}
  
  float y15(float t){
    return cos(t/10)*100+sin(t/20)*150;}
  
  float x16(float t){
  return sin(t/10)*200+sin(t)*2;}
  
  float y16(float t){
    return sin(t/10)*200;}

    
 float x17(float t){
  return sin(t/10)*250+sin(t/5)*300;}
  
  float y17(float t){
    return cos(t/10)*250+sin(t/20)*150;}
  
  float x18(float t){
  return sin(t/10)*300+sin(t)*2;}
  
  float y18(float t){
    return sin(t/10)*300;}
    
  
  float x19(float t){
  return sin(t/10)*50+sin(t/5)*200;}
  
  float y19(float t){
    return cos(t/10)*50+sin(t/20)*150;}
  
  float x20(float t){
  return sin(t/10)*100+sin(t)*2;}
  
  float y20(float t){
    return sin(t/10)*100;}
    
  
  
  float x21(float t){
  return sin(t/10)*30+sin(t/5)*150;}
  
 
  float y21(float t){
    return cos(t/10)*50+sin(t/20)*150;}
  
  float x22(float t){
  return sin(t/10)*80+sin(t)*2;}
  
  float y22(float t){
    return sin(t/10)*80;}
}