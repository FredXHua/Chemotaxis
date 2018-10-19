Bacteria bob = new Bacteria(); 
Blackblock left = new Blackblock();
Whiteblock right = new Whiteblock();//declare bacteria variables here   
 void setup()   
 {     
 	rectMode(CENTER);
 	size(600,600);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	bob.show();
 	left.show();
 	right.show();//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int bacR, bacG, bacB;
 	float lum;
 	Bacteria()
 	{
    bacR = (int)(Math.random() * 256);
 	bacG = (int)(Math.random() * 256);
 	bacB = (int)(Math.random() * 256);
 	lum = 0.2126*(float)(bacR) + 0.7152*(float)(bacG) + 0.0722*(float)(bacB);
 	}
 	void show()
 	{
 	fill(bacR,bacG,bacB);
 	ellipse(300, 300, 20, 20);
 	}
 	void move()
 	{
 		if (lum < 127.5){

 		}
 		else if (lum = 128){

 		}
 		else{

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