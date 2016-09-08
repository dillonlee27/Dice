Die Lucky1;
Die Lucky2;

void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	for(int x = 0; x < 400; x = x + 10)
	{
		background(0);
		Die Lucky1 = new Die(x,100);
		Lucky1.roll();
		Lucky1.show();
		Die Lucky2 = new Die(x,200);
		Lucky2.roll();
		Lucky2.show();
	}
	

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, numDots;
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
		noStroke();
		fill(255);
		rect(myX,myY,50,50,5);
		fill(255,0,0);
		ellipse(215,125,10,10);

	}
}
