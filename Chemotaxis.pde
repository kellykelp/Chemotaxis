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
 	background(#0a0421);
 	fill(#e07d26, 230);
 	ellipse(250, 250, 400, 400);  
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
 		if (get(mouseX, mouseY) != color(#0a0421))
 		{
 			myX = (int)(Math.random()*500);
 			fill((int)(Math.random()*256));
 			textSize(50);
 			text("STORMMM!!!!", 100, 400);
 			text("Saturn's rings are spinning too quickly!!!!", 50, 450);
 		}	
 		// if (get(mouseX, mouseY) != color(179))
 		// {
 		// 	myX = myX + (int)(Math.random()*4) -2;
 		// 	myY = myY + (int)(Math.random()*4) -2; 
 		// }

 		myX = myX + (int)(Math.random()*5) -2;
 		myY = myY + (int)(Math.random()*3) -1; 
 	}
 	void show()
 	{
 		noStroke();
 		fill(0, bColor, 0);
 		ellipse(myX, myY, 10, 10);
 	}
 	//lots of java!   
 }    