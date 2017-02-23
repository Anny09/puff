//Declaracion de objetos
Mounstro Personaje1;
Mounstro Personaje2;
//
int IDpersonaje = 0;
int IDpersonaje1 = -1;
int IDpersonaje2 = -1;
int cx = 0;
int cy = 0;
int PJ1x = 10;
int PJ1y = 250;
int PJ2x = 800;
int PJ2y = 0;
int xataque=0;
int yataque = 50;
int xvida = 590;
int yvida = 10;
int pantalla = 0;
int numero = -770;
int numero1 = -100;
int numero2 = 30;
int numero3 = -130;
int turno = 1;


String Elemento[] = {"fuego","agua","aire","tierra"};
ArrayList<Particula> Particulas;
Particula Foo;

//Nombre, vida, ataque, defensa, elemento, dibujo
void setup()
{
  Personaje1 = new Mounstro("conejo1", 100, 10, 15, 3, 0);
  Personaje2 = new Mounstro("robot", 100, 17, 20, 0, 1);
   
  size(1100,500);
  background(185);
  Foo = new Particula(50,50,255,0,0,5,0,250,250);
  Particulas = new ArrayList<Particula>();
  for(int i=0; i<200; i++)
  {
    Particulas.add(new Particula());
  }
  for (Particula p:Particulas)
  {
    p.mostrar();
    p.movimiento();
  }
}

void draw()
{
  if(pantalla == 0)
    {
      if(key==0)
      {
        dibujainicio();
        textSize(90); 
        fill(210, 70, 100);
        text("PUFF GAME", 250, 200);
        textSize(40); 
        fill(180, 70, 153);
        text("Presione Cualquier Boton", 300, 300);
      }
      else
      {
        key=0;
        pantalla=1;
      }
    }
    if(pantalla==1)
    {
      background(185);
      fill(110,250,165);
      rect(cx,cy,200,200);
      
      textSize(20); 
      fill(0, 102, 153);
      text("Seleccione Personaje Dezlizandote Con A y B \nSeleccionando con ENTER\nAtaques con letras Z,X,C", 300, 300);
      Personaje1.Dibujar(0,0,0,0);
      Personaje1.Dibujar(1, 200,0,0);
      Personaje1.Dibujar(2, 200, -30,0);
      Personaje1.Dibujar(3, 200, 20, 0);
      Personaje1.Dibujar(4, 150, -30, 0);
      if(IDpersonaje1==-1)
      {
        text("Jugador 1", -300, 450);
      }
      if(IDpersonaje2==-2)
      {
        text("Jugador 2", -400, 450);
      }
    }
    if(pantalla==2)
    {
      background(200);
      fill(110,250,165);
      Personaje1.Dibujarvida();
      Personaje2.Dibujarvida();
      Personaje1.Dibujar(IDpersonaje1,PJ1x,PJ1y,1); //personaje,posicion en x, posicion en y, jugador
      Personaje2.Dibujar(IDpersonaje2,PJ2x,PJ2y,2);
      if(Personaje1.vida>0 && Personaje2.vida>0)
      {
        if(key=='z')
        {
          if(turno==1) Personaje1.ataque1();
          if(turno==2) Personaje2.ataque1();
        }
        if(key=='x')
        {
          if(turno==1) Personaje1.ataque2();
          if(turno==2) Personaje2.ataque2();
        }
        if(key=='c')
        {
          if(turno==1) Personaje1.ataque3();
          if(turno==2) Personaje2.ataque3();
        }
      }
      if(Personaje1.vida<=0)
      {
        textSize(32); 
        fill(0, 102, 153);
        text("Game Over \nWin Player 2 \nPara volver a jugar presione R", -250, -100);
      }
      if(Personaje2.vida<=0)
      {
        textSize(32); 
        fill(0, 102, 153);
        text("Game Over \nWin Player 1 \nPara volver a jugar presione R", -250, -100);
      }
    }
}

class Mounstro 
{
  String nombre;
  int vida;
  int ataque;
  int defensa;
  int elemento;
  int dibujo;
  int Jugador;
  
  Mounstro(String nombre_, int vida_, int ataque_,int defensa_, int elemento_, int dibujo_)
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    defensa = defensa_;
    elemento = elemento_;
    dibujo = dibujo_;
  }

  void Dibujar(int dibujo_,int x,int y, int jugador)
  {
    Jugador=jugador;
    translate(x,y);
    switch(dibujo_)
    {
      case 0: // conejo1
      stroke(0,0,0);
      fill(280,230,255);
      ellipse(125,37.5,20,60);
      ellipse(125,90,15,27.5);
      ellipse(85,140,40,22.5);
      ellipse(130,130,40,22.5);
      ellipse(160,100,30,15);
      ellipse(105,100,100,80);
      ellipse(67.5,110,30,15);
      fill(0,0,0);
      ellipse(95,95,15,30);
      ellipse(125,90,15,27.5);
      fill(280,230,255);
      ellipse(80,37.5,20,65);
      fill(255,255,255);
      ellipse(97.5,94.5,5,10);
      ellipse(127.5,88.5,5,10);
      ellipse(92.5,91,4,7.5);
      ellipse(122.5,86,4,7.5);
      fill(255,210,210);
      noStroke();
      ellipse(80,35,12.5,47.5);
      ellipse(125,35,12.5,45);
      ellipse(112,110,15,12.5);
      break;
   
      case 1: //robot
      stroke(0,0,0);
      fill(200,200,200);
      rect(100,0,55,55);
      fill(255,10,5);
      rect(110,15,10,15);
      rect(130,15,10,15);
      fill(40,20,220);
      rect(110,35,32.5,10);
      fill(110,110,110);
      rect(117.5,55,20,17.5);
      fill(110,110,110);
      rect(95,122.5,65,17.5);
      fill(200,200,200);
      rect(90,73,75,55);
      fill(110,110,110);
      rect(15,71,70,17.5);
      rect(160,85,17.5,70);
      fill(255,20,10);
      rect(160,155,22.5,22.5);
      fill(40,20,220);
      ellipse(87.5,80,22.5,22.5);
      ellipse(167.5,80,22.5,22.5);
      fill(200,200,200);
      rect(90,137.5,75,25);
      //rect(117.5,262.5,20,15);    
      fill(110,110,110);
      rect(95,162.5,20,75);
      rect(140,162.5,20,75);
      fill(40,20,220);
      ellipse(105,197.5,22.5,22.5);
      ellipse(150,197.5,22.5,22.5);
      fill(255,20,10);
      rect(85,235,30,15);
      rect(130,235,30,15);
      fill(40,20,220);
      //ellipse(5,297.5,22.5,22.5);
      fill(255,20,10);
      rect(10,69,22.5,22.5);
      noStroke();
      fill(130,255,70);
      rect(110,90,7.5,7.5);
      rect(120,90,7.5,7.5);
      rect(130,90,7.5,7.5); 
      break;
   
      case 2: //oso
      stroke(0.5);
      fill(80,60,15);
      ellipse(170,180,60,35);
      ellipse(50,270,75,35);
      ellipse(135,270,75,35);
      fill(80,60,15);
      ellipse(50,70,45,45);
      ellipse(130,70,45,45);
      stroke(1);
      fill(80,60,15);
      ellipse(90,200,150,135);
      noStroke();
      fill(94,178,105);
      ellipse(50,70,30,30);
      ellipse(130,70,30,30);
      stroke(1/10);
      fill(80,60,15);
      ellipse(90,100,95,95);
      ellipse(40,180,60,35);
      fill(0);
      ellipse(70,100,20,30);
      ellipse(110,96,20,30);
      fill(255,255,255);
      ellipse(75,100,10,20);
      ellipse(115,96,10,20);
      noStroke();
      ellipse(65,106,7,7);
      ellipse(105,104,7,7);
      fill(0,0,0);
      triangle(85,115,92,125,100,115);
      break;
      
      case 3: //gato
      fill(0);
      triangle(810+numero,350+numero1,870+numero,200+numero1,950+numero,350+numero1);
      rect(863+numero,190+numero1,15,30);
      ellipse(870+numero,175+numero1,70,60);
      triangle(870+numero,160+numero1,915+numero,130+numero1,900+numero,160+numero1);
      triangle(840+numero,160+numero1,830+numero,125+numero1,870+numero,160+numero1);
      stroke(255,255,255);
      rect(855+numero,290+numero1,15,60);
      rect(870+numero,290+numero1,15,60);
      ellipse(850+numero,345+numero1,40,20);
      ellipse(890+numero,345+numero1,40,20);
      noStroke();
      fill(41,255,29);
      ellipse(860+numero,175+numero1,10,15);
      ellipse(880+numero,175+numero1,10,15);
      fill(255);
      triangle(885+numero,155+numero1,905+numero,140+numero1,895+numero,155+numero1);
      triangle(845+numero,155+numero1,840+numero,140+numero1,855+numero,155+numero1);
      fill(0);
      ellipse(860+numero,173+numero1,3,8);
      ellipse(880+numero,173+numero1,3,8);
      fill(0);
      rect(840+numero,275+numero1,60,20);
      fill(255,204,227);
      ellipse(870+numero1,190+numero1,10,10);
      break;
       
      case 4: // canejo2
      stroke(0,0,0);
      fill(208,153,221);
      ellipse(125+numero2,237.5+numero3,20,60);
      ellipse(125+numero2,290+numero3,15,27.5);
      ellipse(85+numero2,340+numero3,40,22.5);
      ellipse(130+numero2,330+numero3,40,22.5);
      ellipse(160+numero2,300+numero3,30,15);
      ellipse(105+numero2,300+numero3,100,80);
      ellipse(67.5+numero2,310+numero3,30,15);
      fill(0,0,0);
      ellipse(95+numero2,295+numero3,15,30);
      ellipse(125+numero2,290+numero3,15,27.5);
      fill(208,153,221);
      ellipse(80+numero2,237.5+numero3,20,65);
      fill(255,255,255);
      ellipse(97.5+numero2,294.5+numero3,5,10);
      ellipse(127.5+numero2,288.5+numero3,5,10);
      ellipse(92.5+numero2,291+numero3,4,7.5);
      ellipse(122.5+numero2,286+numero3,4,7.5);
      fill(255,210,210);
      noStroke();
      ellipse(80+numero2,235+numero3,12.5,47.5);
      ellipse(125+numero2,235+numero3,12.5,45);
      ellipse(112+numero2,310+numero3,15,12.5);
       
      break;
    }//switch
  }//Dibujar
  
  void Dibujarvida()
  {
    int ps=vida;//ps=puntos de salud
    if(Jugador==1)
    {
      fill(0,255,0);
      rect(10,10,ps*5,50);
    }
    if(Jugador==2)
    {
      fill(0,255,0);
      rect(xvida,yvida,ps*5,50);
    }
  }
  
  void ataque1()
  {
    int y=(int)random(110);
    int r=(int)random(100);
    int danio=12;        
    int critico = (int)random(100);
    if(critico>=0 && critico<=30) danio=(int)(1.5*danio);
    //______________________________________ataque 1 jugador 1
    if(Jugador==1)
    {
      fill(0);
      ellipse(xataque-700, 50, r, r);
      xataque = xataque+5;
      if(xataque==800)
      {
        xvida=xvida+ danio*5;
        Personaje2.vida=Personaje2.vida-danio;
        xataque = 0;
        turno=2;
        key = 0;
      }
    }
    //______________________________________ataque 1 jugador 2
    if(Jugador==2)
    {
      fill(0);
      ellipse(xataque, 50, r, r);
      xataque = xataque-5;
      if(xataque==-700)
      {
        key = 0;
        turno=1;
        Personaje1.vida=Personaje1.vida-danio;
        xataque = 0;
      }
    }
  }
  void ataque2()
  {
    int danio=16;        
    int critico = (int)random(100);
    if(critico>=0 && critico<=20) danio=(int)(1.5*danio);
    fill(0);
    int y1,y2,y3;
    y1=(int)random(25);
    y2=(int)random(25);
    y3=(int)random(25);
    //___________________________ ataque 2 jugador 1
    if(Jugador==1)
    {
      triangle(xataque-700,50+y1,xataque -750,50+y2,xataque-600,50+y3);
      //triangle(-700,50,-800,60,-750,70);
      xataque = xataque + 5;
      if(xataque==750)
      {
        xvida=xvida + danio*5;
        key=0;
        turno=2;
        Personaje2.vida=Personaje2.vida - danio;
        xataque = 0;
      }
    }
    //______________ataque 2 jugador 2
    if(Jugador==2)
    {
      triangle(xataque,50-y1,xataque-50,50-y2,xataque+30,50-y3);
      //triangle(0,50,10,60,50,70);
      xataque = xataque - 5;
      if(xataque==-700)
      {
        key=0;
        turno=1;
        Personaje1.vida=Personaje1.vida-danio;
        xataque = 0;
      }
    }
  }
  void ataque3()
  {
    int y=(int)random(30);
    int r=(int)random(30);
    int rc=(int)random(255);
    int g=(int)random(255);
    int b=(int)random(255);
    
    int danio=20;        
    int critico = (int)random(100);
    if(critico>=0 && critico<=10) danio=(int)(1.5*danio);
    //Ataque 3 jugador 1
    if(Jugador==1)
    {
      fill(rc,g,b);
      ellipse(xataque-700, 50+y, r+30, r);
      xataque = xataque+5;
      if(xataque==800)
      {
        key=0;
        turno=2;
        xvida=xvida+danio*5;
        Personaje2.vida=Personaje2.vida-danio;
        xataque = 0;
      }
    }
    //Ataque 3 Jugador 2
    if(Jugador==2)
    {
      fill(0);
      ellipse(xataque, 50-y, r+30, r);
      xataque = xataque-5;
      if(xataque==-700)
      { 
        key=0;
        turno=1;
        Personaje1.vida=Personaje1.vida-danio;
        xataque = 0;
      }
    }
    
  }
}//Clase


void dibujainicio()
{
  

    Foo.mostrar();
  Foo.movimiento();
  for (Particula p:Particulas){
    p.mostrar();
    p.movimiento();
  }
  
}

class Particula{
  int ancho;
  int altura;
  int R, G, B;
  int velocidad;
  float direccion;
  float px, py;
  
  Particula(int ancho_, int altura_, int R_, int G_, int B_, int velocidad_, float direccion_, float px_, float py_){
    ancho = ancho_;
    altura = altura_;
    R = R_;
    G = G_;
    B = B_;
    velocidad = velocidad_;
    direccion = direccion_;
    px = px_;
    py = py_;
  }
  
  Particula(){
    ancho = int(random(50));
    altura = ancho;
    R = int(random(255));
    G = int(random(255));
    B = int(random(255));
    velocidad = int(random(10));
    direccion = int(random(10));
    px = int(random(1000));
    py = int(random(800));
  }
  
  
  void mostrar(){
  noStroke();
  ellipseMode(CENTER);
  fill(R,G,B);
  ellipse(px, py, ancho, altura);
  }
 
  void movimiento(){
   px += cos(direccion)*velocidad;
   py += sin(direccion)*velocidad;

  if (px >= 1075){
    direccion = random(HALF_PI, HALF_PI+PI);
  }
  
  if (px <= 25){
    direccion = random(-HALF_PI, HALF_PI);
  }
  
  if (py >= 775){
    direccion = random(PI, TWO_PI);
  }
  
  if (py <= 25){
   direccion = random(0, PI);
  }
  
  }
  } 
  



void keyPressed()
{
  if(pantalla==1)
  {
    if(IDpersonaje >=0 && IDpersonaje<=4) // && es "y" se deben cumplir las dos opciones mientras || significa "o" que solo alguna de las opciones debe de cumplirse
    {
      if(key=='d')
      {
        if(IDpersonaje==4) return;
        cx=cx+200;
        IDpersonaje = IDpersonaje+1;
        key=0;
      }
      if(key=='a')
      {
        if(IDpersonaje==0) return;
        cx=cx-200;
        IDpersonaje = IDpersonaje-1;
        key=0;
      }
      if(IDpersonaje1==-1)
      {
        if(key=='\n')
        {
          IDpersonaje1 = IDpersonaje;
          IDpersonaje2 = -2;
          IDpersonaje = 0;
          cx = 0;
          cy = 0;
          key = 0;          
        }
      }
      if(IDpersonaje2==-2)
      {       
        if(key=='\n')
        {
          IDpersonaje2 = IDpersonaje;
          IDpersonaje = 0;
          cx = 0;
          cy = 0;
          key = 0;  
          pantalla = 2;
        }
      }

    }
  }
  if(pantalla==2)
  {
    if(Personaje1.vida<=0 || Personaje2.vida<=0)
    {
      if(key=='r')
      {
        pantalla=0;
        
      }
    }
  }
}