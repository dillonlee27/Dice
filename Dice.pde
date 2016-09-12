Die theDie;

void setup()
{
	size(400,400);
	
}
void draw()
{
	background(0);
	Die theDie = new Die();
	theDie.show();
}


void mousePressed()
{
	
}

class Die //models one single dice cube
{
	int myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}

	void roll()
	{

	}

	void show()
	{
		
	}
}
