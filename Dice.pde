Die theDie;
void setup()
{
	size(400,400);
	noLoop();
}

void draw()
{
	background(80,57,193);
	for(int x =25; x <400; x = x +75)
	{
		for(int y = 0; y < 400; y = y + 25)
		{
			rect(x,y,50,50,7);
		}
		Die theDie = new Die(x,100);
		theDie.roll();
		theDie.show();
	}
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY, dotNumber;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
		
	}

	void roll()
	{
		dotNumber = (int)(Math.random()*5)+1;
	}

	void show()
	{
		noStroke();
		fill(255,0,0);
		rect(myX,myY,50,50,7);
		fill(0);
		if(dotNumber == 1)
		{
			fill(255,255,255);
			ellipse(myX,myY,10,10);
		}
		
	}
		
}
