 //declare bacteria variables here 
 Bacteria [] walker; 

 void setup()   
 {     
 	size(500, 500);
 	walker = new Bacteria[300];
 	for (int i = 0; i < walker.length; i++)
 	{
 		walker[i] = new Bacteria();
 	}
 	//initialize bacteria variables here   
 }  

 void draw()   
 {  
 	background(179);  
 	for (int i = 0; i < walker.length; i++)
 	{
 		walker[i].show();
 		walker[i].walk(); 
 	}
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, bColor; 
 	Bacteria() 
 	{
 		myX = myY = 250;
 		bColor = (int) (Math.random()*255) + 1; 
 	}

 	void walk() 
 	{
 		// if (mouseX > myX)
 		// {
 		// 	myX = myX + (int)(Math.random()*5) +1;
 		// }
 		// else
 		// {
 		// 	myX= myX + (int)(Math.random()*3) -3;
 		// }
 		// if (mouseY > myY)
 		// 	myX = myX + (int)(Math.random()*3) +1;
 		// else
 		// 	myY = myY + (int)(Math.random()*3) -3;
 		if (get(mouseX, mouseY) != color(179))
 		{
 			myX = myX + (int)(Math.random()*3) -3;
 			myY = myY + (int)(Math.random()*3) -3; 
 		}

 		myX = myX + (int)(Math.random()*3) -1;
 		myY = myY + (int)(Math.random()*3) -1; 
 	}
 	void show()
 	{
 		fill(bColor);
 		ellipse(myX, myY, 10, 10);
 	}
 	//lots of java!   
 }    