Bacteria [] colony;
int xcoord;
int ycoord;
int colorofthing;

 void setup()   
 {     
  size(300,300);
  frameRate(10);
  colony = new Bacteria[(int)(Math.random()*30)+ 10];
  for(int i = 0; i < colony.length; i++){
    colony[i] = new Bacteria();
  }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < colony.length; i++){
     colony[i].show();
     colony[i].walk();
   }
 }  
 class Bacteria    
 {   
   int xcoord,ycoord;
   Bacteria()
   {
     xcoord = (int)(Math.random()*300);
     ycoord = (int)(Math.random()*300);
     colorofthing = color((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
   }
   void walk()
   {
     xcoord = xcoord + (int)(Math.random()*20)-10;
     ycoord = ycoord + (int)(Math.random()*20)-10;
   }
     
   void show()
   {
   fill(colorofthing);
   stroke(colorofthing);
   ellipse(xcoord, ycoord,40,20); 
   ellipse(xcoord, ycoord - 5, 25, 25);
   }
 }    
