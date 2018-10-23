Bacteria bob = new Bacteria(); 
Blackblock left = new Blackblock();
Whiteblock right = new Whiteblock();//declare bacteria variables here   
 void setup()   
 {     
  rectmode(CENTER);
  size(600,600);
 }   
 void draw()   
 {    
  bob.show();
  left.show();
  right.show();
  bob.move();
  bob.touched();//move and show the bacteria   
 }  
 class Bacteria    
 {     
  int bacR, bacG, bacB;
  float lum, x, y;
  Bacteria()
  {
  bacR = (int)(Math.random() * 256);
  bacG = (int)(Math.random() * 256);
  bacB = (int)(Math.random() * 256);
  lum = 0.2126*(float)(bacR) + 0.7152*(float)(bacG) + 0.0722*(float)(bacB);
  x = y = 300;
  }
  void show()
  {
  fill(bacR,bacG,bacB);
  ellipse((float)x, (float)y, 20, 20);
  }
  void move()
  {
    if (lum < 127.5){
     x = x - (float)Math.random()* 2.0 - 0.75;
     y = y + (float)Math.random()* 1.25 - 0.75;
    }
    else if (lum == 127.5){
     textSize(20);
     text("You got the color in the middle of black and white, lucky you!", 150, 400 );
    }
    else{
     x = x + (float)Math.random()* 2.0 + 0.75;
     y = y + (float)Math.random()* 1.25 - 0.75;
    }
    }
    void touched()
    {
      if ((float)x < 150 || (float)x > 450){
          bacR = (int)(Math.random() * 256);
          bacG = (int)(Math.random() * 256);
          bacB = (int)(Math.random() * 256);
          lum = 0.2126*(float)(bacR) + 0.7152*(float)(bacG) + 0.0722*(float)(bacB);
          x = y = 300;
      }
    }
  
  }  
 class Blackblock
 {
  int blackcolor;
  Blackblock()
  {
    blackcolor = 0; 
  }
  void show()
  {
    fill((float)(blackcolor));
    rect(150,300,100,100);
  }
 }
 class Whiteblock
 {
  int whitecolor;
  Whiteblock()
  {
    whitecolor = 255;
  }
  void show()
  {
    fill((float)(whitecolor));
    rect(450,300,100,100);
  }
 }
