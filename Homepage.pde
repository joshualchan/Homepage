//animation of my name
// put blobs at random places , check to see if it's on white
//work on move
// maybe change blobs into arraylist
//it takes time dw . this is for fun:)
Blob [] blob;

public void setup()
{
	size(600,200);
	textAlign(CENTER);
	textSize(80);

	blob = new Blob[750];


	for(int i = 0 ; i<blob.length ; i++)
	{
		int randX,randY;
		randX = (int)(Math.random()*205)+190;
		randY = (int)(Math.random()*80)+40;

			blob[i] = new Blob(randX,randY);


	}
}

public void draw()
{
	background(0);
	fill(1);
	textSize(60);
	text("FANNY" , 300,100);
	textSize(20);
	text(mouseX + "   " + mouseY , 500,40);

	for(int i = 0 ; i< blob.length ; i++)
	{
		
		if(get(blob[i].getX(), blob[i].getY()) != color(0,0,0))
		{
			blob[i].show();
			blob[i].move();	
				
		}
		
	}
	for(int i = 0 ; i< blob.length ; i++)
	{
		int randX,randY;
		randX = (int)(Math.random()*205)+190;
		randY = (int)(Math.random()*80)+40;		
		if(get(blob[i].getX(), blob[i].getY()) != color(1,1,1))
		{
			blob[i].setX(randX);
			blob[i].setY(randY);
				
		}
		
	}

}



 class Blob  
 {     
 	private int myX, myY;


 	public Blob (int x, int y)
 	{
 		myX = x+ (int)(Math.random()*7) -3;
 		myY = y+ (int)(Math.random()*7) -3;
 
 	}   



 	public void show()
 	{
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(myX,myY,7,7);
 		
 		
 	}
 	public void move()
 	{

 		if(get(myX,myY) != color(0,0,0))
 		{
 			myX = myX  + (int)(Math.random()*3) -1;
 			myY = myY + (int)(Math.random()*3) -1;
 		}

 	}
 	public void setX(int x){myX = x;}
 	public void setY(int y){myY = y;}
 	public int getX(){return myX;}
 	public int getY(){return myY;}
 }    