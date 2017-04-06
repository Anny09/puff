 

  
 //DIBUJO//
 
  void elemento_2(){
     

     background(20);
     stroke(random(255),random(255),random(0));
     strokeWeight(5);
     translate(width/4, height/4);
     for (int i=0; i<NUM_LINES2; i++){
     line(x5(t+i),y5(t+i),x6(t+i),y6(t+i));}
     
     stroke(random(127),random(255),random(255));
     strokeWeight(2);
     translate(width/6, height/10);
     for (int i=0; i<NUM_LINES2; i++){
     line(x5(t+i),y5(t+i),x6(t+i),y6(t+i));}
     
     stroke(random(127),random(127),random(0));
     strokeWeight(2);
     translate(width/6, height/10);
     for (int i=0; i<NUM_LINES2; i++){
     line(x5(t+i),y5(t+i),x6(t+i),y6(t+i));}
    
     
     stroke(random(127),random(0),random(127));
     strokeWeight(2);
     translate(width/8, height/12);
     for (int i=0; i<NUM_LINES2; i++){
     line(x5(t+i),y5(t+i),x6(t+i),y6(t+i));}
  
     
     stroke(random(0),random(127),random(127));
     strokeWeight(2);
     translate(width/6, height/10);
     for (int i=0; i<NUM_LINES2; i++){
     line(x5(t+i),y5(t+i),x6(t+i),y6(t+i));}
     
     stroke(random(0),random(63),random(127));
     strokeWeight(2);
     translate(width/-2, height/-4);
     for (int i=0; i<NUM_LINES2; i++){
     line(x7(t+i),y7(t+i),x8(t+i),y8(t+i));}
     
     stroke(random(127),random(63),random(0));
     strokeWeight(2);
     translate(width/6, height/10);
     for (int i=0; i<NUM_LINES2; i++){
     line(x7(t+i),y7(t+i),x8(t+i),y8(t+i));}
     
     stroke(random(255),random(63),random(0));
     strokeWeight(2);
     translate(width/6, height/10);
     for (int i=0; i<NUM_LINES2; i++){
     line(x7(t+i),y7(t+i),x8(t+i),y8(t+i));}
     
     stroke(random(0),random(63),random(255));
     strokeWeight(2);
     translate(width/6, height/10);
     for (int i=0; i<NUM_LINES2; i++){
     line(x7(t+i),y7(t+i),x8(t+i),y8(t+i));}
     t+=0.5;
   }
 float x5(float t){
  return tan(t/10)*100+sin(t/5)*20;}
  
  float y5(float t){
    return cos(t/10)*100+sin(t/5)*50;}
  
  float x6(float t){
  return sin(t/10)*200+sin(t)*2;}
  
  float y6(float t){
    return sin(t/10)*200+cos(t/24)+20;}
  
  float x7(float t){
  return tan(t/10)*100+sin(t/5)*20;}
  
  float y7(float t){
    return cos(-t/10)*100+sin(t/5)*50;}
  
  float x8(float t){
  return sin(t/10)*200+sin(t)*2;}
  
  float y8(float t){
    return -sin(t/10)*200+cos(t/24)+20;}
  
 
   