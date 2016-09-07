Die Lucky1;

void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	for(int x = 50; x < 250; x = x + 10)
	{
		background(0);
		Die Lucky1 = new Die(x,100);
		//Lucky1.roll();
		Lucky1.show();
	}
	

}
void mousePressed()
{
	redraw();
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
	//  void roll()
	// //  {
	// //  	if ()
	//   }
	void show()
	{
		noStroke();
		fill(255);
		rect(myX,myY,50,50,5);
		fill(0);

	}
}
