Bacteria bob = new Bacteria(); 
Colorblock1 left = new Colorblock1();
Colorblock2 right = new Colorblock2();//declare bacteria variables here   
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
 	Bacteria()
 	{
    bacR = (int)(Math.random() * 256);
 	bacG = (int)(Math.random() * 256);
 	bacB = (int)(Math.random() * 256);
 	}
 	void show()
 	{
 	fill(bacR,bacG,bacB);
 	ellipse(300, 300, 20, 20);
 	}
 	void move()
 	{

 	}
 }    
 class Colorblock1
 {
 	int leftcolorR, leftcolorG, leftcolorB;
 	Colorblock1()
 	{
 		leftcolorR = (int)(Math.random() * 256);
 		leftcolorG = (int)(Math.random() * 256);
 		leftcolorB = (int)(Math.random() * 256);	
 	}
	void show()
	{
		fill(leftcolorR,leftcolorG,leftcolorB);
 		rect(150,300,100,100);
 	}
 }
 class Colorblock2
 {
 	int rightcolorR, rightcolorG, rightcolorB;
 	Colorblock2()
 	{
 		rightcolorR = (int)(Math.random() * 256);
 		rightcolorG = (int)(Math.random() * 256);
 		rightcolorB = (int)(Math.random() * 256);	
 	}
 	void show()
	{
		fill(rightcolorR,rightcolorG,rightcolorB);
 		rect(450,300,100,100);
 	}
 }