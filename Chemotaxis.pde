 //declare bacteria variables here   
 Bacteria [] bob; 
 void setup()   
 {     
   //initialize bacteria variables here
   size(400,400);
   bob = new Bacteria[100];
   for (int i = 0; i < bob.length;i++){
     bob[i] = new Bacteria(200,200);
   }
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   fill(#FF0000);
   ellipse(mouseX,mouseY,50,50);
   for (int i = 0; i <bob.length; i++){
     bob[i].show();
     bob[i].move();
   }
   
 }  
 
 class Bacteria    
 {     
   //lots of java!
   int myX;
   int myY;
   Bacteria(int x,int y){
     myX = x;
     myY = y;
     //myColor = (int)(Math.random()*256);
     
   }
   void move(){
     if (mouseX > myX)
       myX = myX + (int)(Math.random()*7);
     else
       myX = myX + (int)(Math.random()*7)-5;
       
       
     if (mouseY > myY)
       myY = myY + (int)(Math.random()*7);
     else
       myY = myY + (int)(Math.random()*7)-5;
   }
   void show(){
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     ellipse(myX,myY,20,20);
     
   }
 }    
