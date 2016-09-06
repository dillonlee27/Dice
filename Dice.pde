Dice Lucky1;

void setup()
{
	size(300,300);
	noLoop();
}
void draw()
{
	//your code here
	Lucky1 = new Dice(150,150);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
