//Hernandez Torres Angel Daniela.
PFont font;
int x,y;
int p=0;
int j1,j2;
Destruccion gorgo, slipk, ramms, aski, bring;
int turno=1;
float vida1, vida2;
float ataque1, ataque2;
int ganador;
float plus1, plus2;
Drop[] drops = new Drop[500];

class Drop {
  float x = random(width);
  float y = random(-200,-100);
  float yspeed = random(2,5);
  float len = random(2,2);


  void fall(){
    y = y + yspeed;
    if(y > height){
      y = random(-200,-100);
  }
  }
  
  void show(){
    stroke(0,0,255);
    line(x,y,x,y+len);
  }
}

class Destruccion{
  String nombre;
  int ataque;
  int defensa;
  int x, y;
  int obvni;

  Destruccion(String nombre_, int ataque_, int defensa_, int x_, int y_, int obvni_){
  nombre = nombre_;
  ataque = ataque_;
  defensa = defensa_;
  x = x_;
  y = y_;
  obvni = obvni_;
}
}  


 
void setup(){
  size(600,600);
  gorgo = new Destruccion("gorgo",50,250,250,50,1);
  slipk = new Destruccion("slipk",50,100,100,50,2);
  ramms = new Destruccion("ramms",50,350,350,50,3);
  aski = new Destruccion("aski",50,400,400,50,4);
  bring = new Destruccion("bring",50,300,300,50,5);
  
   for (int i = 0; i < drops.length; i++){
   drops[i] = new Drop();
   }
 
   //fuente
  font = loadFont("juego.vlw");
  textFont(font);
  
}

void draw(){
  
  for (int i = 0; i < drops.length; i++)
  {
   drops[i].fall();
   drops[i].show();
   }

    if (p == 0)
 {
   println (p);
  pantallaUno();
  if ((mousePressed) && (mouseX > 390) && (mouseX < 390+120) && (mouseY > 370) && (mouseY < 370+50)){
    p=1;
    println (p);
  }
 }
    
    if (p == 1)
 {
    
  pantallaPersonajes();
 mouseClicked();
  gorgo(250,250);
  slipk(100,100);
  ramms(300,300);
  aski(400,400);
  bring(200,200);
if ((j1!=0 && j2!=0) && (j1!=j2)){
 p=2;
}
}
       
    if (p == 2){
      pantallaPelea();
   if (vida1<=0 || vida2<=0){
     p=3;
   }
    }
    
    if (p == 3){
      pantallaFinal();
      
      if(vida1<=0){
        ganador=j2;
        }
      
      else if(vida2<=0){
        ganador=j1;
      }
      
         if (ganador==j1){
           if(j1==1){
             gorgo(510,500);
             fill(255,0,0);
  textSize(30);           
 text("gorgo,obvni vengador", 91,310);
 }
 else if(j1==2){
   slipk (475,675);
   textSize(30);
   fill(255,0,0);
 text("slipk,combate el mal",91,310);
 }
 
 else if(j1==3){
   ramms (550,425);
   fill(255,0,0);
   textSize(30);
 text("ramms,obvni temperamental",91,310);
 }
 else if(j1==4){
   aski (850,1200);
   fill(255,0,0);
   textSize(30);
 text("aski,lleno de poder", 91,20);
 }
   else if (j1==5){  
   bring (225,900);
     fill(255,0,0);
     textSize(30);
 text("bring,luz en su interior", 91,300);
   }
 } 

  else if (ganador==j2){
    if(j2==1){
       gorgo(510,500);
       fill(255,0,0); 
       textSize(30);
 text("gorgo,obvni vengador", 91,300);
 }
 else if(j2==2){
   slipk (475,675);
   fill(255,0,0);
   textSize(30);
 text("slipk,combate el mal",91,300);
 }
 else if(j2==2){
   ramms (550,425);
   fill(255,0,0);
   textSize(30);
 text("ramms,obvni temperamental",91,300);
 }
 else if(j2==3){
   aski (850,1200);
   fill(255,0,0);
   textSize(30);
 text("aski,lleno de poder",91,300);
 }
   else if (j2==5){  
   bring (225,900);
     fill(255,0,0);
     textSize(30);
            text("bring,luz en su interior", 91,300);
   }
    }
    
if (keyPressed && (key=='c')){
p=0;
j1=0;
j2=0;
}
}  
  
for (int i = 0; i < drops.length; i++){
   drops[i].fall();
   drops[i].show();
   }
}
  //pantalla uno
    void pantallaUno(){
      if((p==0)&&(j1==0)&&(j2==0)){
        background (189);
        
      fill(0);
      rect (0,0,width,height);
      
      fill(0);
stroke(255);
rect(50,50,500,500);

stroke(255);
line(0,300,600,300);

stroke(255);
line(300,0,300,600);

fill(0);
stroke(255,0,0);
rect(200,200,250,100);

fill(0);
stroke(255,0,0);
rect(148,200,50,100);

fill(0);
stroke(255,0,0);
rect(452,200,50,100);

fill(0);
stroke(255,0,0);
rect(300,250,50,50,25,25,0,0);

stroke(255,0,0);
line(147,200,197,200);
stroke(255,0,0);
line(147,200,174,150);
stroke(255,0,0);
line(197,200,174,150);


stroke(255,0,0);
line(451,200,500,200);
stroke(255,0,0);
line(451,200,477,150);
stroke(255,0,0);
line(500,200,477,150);

{
  push();
  translate(-400,150);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}
{
  push();
  translate(-400,180);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}
{
  push();
  translate(-370,180);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}
{
  push();
  translate(-370,155);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}
{
  push();
  translate(-370,200);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}
{
  push();
  translate(-410,200);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}

{
  push();
  translate(-350,220);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}
{
  push();
  translate(-395,230);
stroke(0,255,0);
line(451,200,500,200);
stroke(0,255,0);
line(451,200,477,150);
stroke(0,255,0);
line(500,200,477,150);
pop();
}

fill(0);
stroke(160,64,0);
rect(75,432,12,20);

fill(0);
stroke(160,64,0);
rect(120,422,12,20);
  
  //titulo
  fill(255,0,0);
  textSize(80);
  text("HORIZON",120,300);
  fill(255);
textSize(40);
text("JUGAR",395, 415);
      }
 
    }
   
    //pantalla dos
     void pantallaPersonajes(){
       
        background (189);
        
      fill(255);
      rect (0,0,width,height);
      
  fill(0);
  rect(0,0,600,600);
  
textSize(25);
fill(165,42,42);
  text("No se puede escoger el mismo",160,600); 
textSize(25);
fill(165,42,42);
text("SELECCION DE PERSONAJES",135,65);
textSize(20);
text("         J1  -       Elija su personaje con       -    J2",90,25);
text("letras                                                                               Numeros", 70,35);
  
textSize(20);
fill(255);
text("Gorgo G-5", 60, 300);
text("Slipk S-2", 410, 300);
text("Ramms R-4", 400, 560);
text("Aski A-1", 270, 400);
text("Bring B-3", 30, 580);

    
    }

void gorgo(int xi, int yi){
//GORGO//
{
 push();
translate(-40,0);
stroke(255,0,0);
line(150,60,100,100);
stroke(255,0,0);
line(150,60,200,100);
stroke(255,0,0);
line(100,100,200,100);

fill(0);
stroke(255,0,0);
rect(100,110,100,50);

fill(0);
stroke(255,0,0);
rect(100,165,100,100);

fill(0);
stroke(255,0,0);
rect(205,165,50,10);
pop();
}
}

void slipk(int xi, int yi){
//SLIPK//
{
 push();
translate(40,10);
fill(0);
stroke(0,0,255);
ellipse(430,90,50,50);

stroke(0,0,255);
line(430,120,490,160);
stroke(0,0,255);
line(430,120,370,160);
stroke(0,0,255);
line(490,160,370,160);

stroke(0,0,255);
line(420,230,470,165);
stroke(0,0,255);
line(420,230,340,165);
stroke(0,0,255);
line(470,165,340,165);

stroke(0,0,255);
line(410,230,395,215);
stroke(0,0,255);
line(410,230,395,230);
stroke(0,0,255);
line(395,215,395,230);

stroke(0,0,255);
line(380,225,380,215);
stroke(0,0,255);
line(380,225,365,225);
stroke(0,0,255);
line(380,215,365,225);
pop();
}
}
  
  void ramms(int xi, int yi){
  //RAMMS//
{
 push();
translate(20,50);
stroke(255);
line(430,330,450,350);
stroke(255);
line(430,330,380,350);
stroke(255);
line(450,350,380,350);

stroke(255);
line(430,370,450,352);
stroke(255);
line(430,370,380,352);
stroke(255);
line(450,352,380,352);

stroke(255);
line(455,352,500,400);
stroke(255);
line(455,352,400,400);
stroke(255);
line(500,400,400,400);

stroke(255);
line(455,450,530,402);
stroke(255);
line(455,450,430,402);
stroke(255);
line(530,402,430,402);

stroke(255);
line(450,470,430,490);
stroke(255);
line(450,470,430,450);
stroke(255);
line(430,490,430,450);

stroke(255);
line(490,470,470,490);
stroke(255);
line(490,470,470,450);
stroke(255);
line(470,490,470,450);
pop();
}
  }
  
  void aski(int xi, int yi){
  //ASKY//
{
 push();
translate(10,10);
fill(0);
stroke(0,255,0);
ellipse(300,210,50,50);

fill(0,255,0);
line(230,250,360,250);
fill(0,255,0);
line(230,250,298,300);
fill(0,255,0);
line(360,250,298,300);

fill(0,255,0);
line(330,280,350,300);
fill(0,255,0);
line(330,280,310,300);
fill(0,255,0);
line(310,300,330,320);
fill(0,255,0);
line(350,300,330,320);

fill(0,255,0);
line(350,302,350,340);
fill(0,255,0);
line(350,302,330,325);
fill(0,255,0);
line(350,340,330,325);

fill(0);
stroke(0,255,0);
rect(353,302,20,38);

fill(0,255,0);
line(375,302,375,338);
fill(0,255,0);
line(375,302,390,320);
fill(0,255,0);
line(375,338,390,320);

fill(0);
stroke(0,255,0);
rect(270,302,25,25);

fill(0,255,0);
line(265,325,265,345);
fill(0,255,0);
line(265,325,240,345);
fill(0,255,0);
line(265,345,240,345);
pop();
}
  }
  
  void bring(int xi, int yi){
  //BRING//
{
 push();
translate(-20,40);
fill(0);
stroke(150);
ellipse(150,350,50,50);

fill(0);
stroke(150);
rect(130,380,80,30);

fill(0);
stroke(150);
rect(130,415,40,50);

fill(0);
stroke(150);
rect(150,470,20,50);

stroke(150);
line(120,470,120,500);
stroke(150);
line(120,470,100,485);
stroke(150);
line(120,500,100,485);

fill(0);
stroke(150);
rect(60,495,50,10);

stroke(150);
line(230,380,210,400);
stroke(150);
line(230,380,210,380);
stroke(150);
line(210,400,210,380);
pop();
}
}
  
 void keyPressed(){
   if(p==1){
     switch(key){
     case 'g':
     j1= 1;
     plus1= random (30,40);
     vida1=100;
     ataque1=random(10,20);
     
     break;
     case 's':
     j1= 2;
     plus1= random (30,40);
     vida1=100;
     ataque1= random (10,20);
     
     break;
     case 'r':
     j1= 3;
     plus1= random (30,40);
    vida1=100;
    ataque1= random (10,20);
    
    break;
    case 'a':
    j1= 4;
    plus1=random (30,40);
    vida1=100;
    ataque1= random (10,20);
    
    break;
    case 'b':
    j1= 5;
    plus1=random (30,40);
    vida1=100;
    ataque1= random (10,20);
    
     break;
  case '5':
  j2= 1;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
 
  break;
   case '2':
  j2=2;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
  
  break; 
  case '4':
  j2=3;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
 
  break; 
  case '1':
  j2=4;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
 
  break;
  case '3':
  j2=5;
  plus2= random (30,40);
    vida2=100;
    ataque2= random (10,20);
  break;
  }
}


if (turno==1 && p==2){
  if (key=='x'|| key== 'X'){
    vida2= vida2- ataque1; println(vida2);
    turno=2;}
    else if((vida1>39)&&(vida1<51)){
    if (key=='o' || key=='O'){
    vida1=vida1+plus1;
    turno=2;
    }
  }
    }

  if (turno==2 && p==2){
    if(key=='w' || key== 'W'){
      vida1= vida1 - ataque2; println(vida1);
      turno=1;
    }else if((vida2>39)&&(vida2<51)){
    if (key=='j' || key=='J'){
    vida2=vida2+plus2;
    turno=1;
    }
  }
  
}
}
  
  //pantalla cuatro
     void pantallaPelea(){
      fill(0);
      rect (0,0,width,height);
      
        fill(0);
  rect(0,0,600,600);
  
 //margen
fill(0);
rect(0,0,600,600);

fill(0);
stroke(255);
rect(15,15,570,570);

fill(0);
stroke(255);
rect(30,30,540,540);
//marco central
stroke(255);
line(30,30,15,15);
stroke(255);
line(585,585,570,570);
  
  fill(255,0,0);
text(vida1 ,70, 330);
fill(255,0,0);
text(vida2 ,450, 330);

textSize (25);
fill(255,0,0);
text("J1" , 30, 330);
textSize (25);
fill(255,0,0);
text("J2" , 400, 330);

fill(255,0,0);
textSize(20);
text("ATACAR: X", 30,50);
text("ATACAR: W", 350,50);
text("PLUS: O", 40, 70);
text("PLUS: J", 350, 70);
text("Usar plus en caso de que su vida esté entre 40 y 50 puntos.", 30,25);

  pushMatrix();

if(turno==2){
  textSize(15);
   fill(255,0,0);
text("TURNO JUGADOR: 2", 400, 350);
} 
else if(turno==1){
  textSize(15);
  fill(255,0,0);
text("TURNO JUGADOR: 1", 40,350);
}


if(j1==1){
  
  gorgo(170,250);
  textSize(25);
  fill(255);
  text( "GORGO", 60,300);
  
}

else if (j1==2){
  
  slipk(150,330);
   textSize(25);
  fill(255);
  text( "SLIPK", 410,300);
  
}

else if(j1==3){
  ramms(400,425);
  textSize(25);
  fill(255);
    text("RAMMS", 400,560);
}

else if(j1==4){
 aski(700,1200);
 textSize(25);
 fill(255);
   text("ASKI", 270,400);
 }
 
else if(j1==5){
  bring(70,900);
  textSize(25);
  fill(255);
    text("BRING", 30,580);
}

popMatrix();

pushMatrix();
  
if(j2==1){
  gorgo(750,500);
  textSize(25);
  fill(255);
   text("GORGO", 60,300);
  
}
else if(j2==2){
  slipk(760,680);
  textSize(25);
  fill(255);
   text("SLIPK", 410,300);
}

else if(j2==3){
  ramms(850,430);
  textSize(25);
  fill(255);
  text("RAMMS", 400,560);
}

else if(j2==4){
 aski(1100,1200);
 textSize(25);
 fill(255);
 text("ASKI", 270,400);
}
else if(j2==5){
  bring(520,900);
  textSize(25);
  fill(255);
   text("BRING", 30,580);
}

popMatrix();
}
 
  //pantalla final
     void pantallaFinal(){
      fill(255,0,0);
      rect (0,0,width,height);
      
      //margen
fill(0);
rect(0,0,600,600);

fill(0);
stroke(255);
rect(15,15,570,570);

fill(0);
stroke(255);
rect(30,30,540,540);
//marco central
stroke(255);
line(30,30,15,15);
stroke(255);
line(585,585,570,570);
      
        fill(0);
  rect(0,0,600,600);
   fill(255,0,0);
  textSize(55);
text("GANADOR:", 150,85);

 fill(255,0,0);
textSize(20);
text("OPRIME LETRA 'C' PARA VOLVER AL INICIO.", 91,45);
if(ganador==j1){
fill(255,0,0);
textSize(30);
text("JUGADOR 1:",65,350);

}
else if(ganador==j2){
fill(255,0,0);
textSize(30);
text("JUGADOR 2:",100,350);

}
     }
     
