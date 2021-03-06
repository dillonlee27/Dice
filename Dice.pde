Die theDie;
void setup()
{
	size(500,500);
	noLoop();
}

void draw()
{
	background(0,0,0);
	int sum = 0;
	for(int x =25; x <= 450; x = x + 80)
	{
		for(int y = 50; y <= 450; y = y + 70)
		{
			Die theDie = new Die(x,y);
			theDie.roll();
			theDie.show();
				  if(theDie.dotNumber <= 6)
				  {
				  	sum = sum + theDie.dotNumber;
				  }
		}
	}
			fill(255);
			textSize(25);
			text("Total: " + sum, 188,480);	
}

void mousePressed()
{
	redraw();
}

class Die 
{
	int myX, myY, dotNumber;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
		
	}

	void roll()
	{
		dotNumber = (int)(Math.random()*6)+1;
	}

	void show()
	{
		noStroke();
		fill(int(random(256)), int(random(256)), int(random(256)));
		rect(myX,myY,50,50,7);
		fill(0);
		if(dotNumber == 1)
		{
			fill(int(random(256)), int(random(256)), int(random(256)));
			ellipse(myX+25,myY+25,10,10);
		}
		else if (dotNumber == 2)
		{
		 	fill(int(random(256)), int(random(256)), int(random(256)));
		 	ellipse(myX+25,myY+15,10,10);
		 	ellipse(myX+25,myY+35,10,10);
		}
		else if (dotNumber == 3)
		{
			fill(int(random(256)), int(random(256)), int(random(256)));
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+35,myY+35,10,10);
		}
		else if (dotNumber == 4)
		{
			fill(int(random(256)), int(random(256)), int(random(256)));
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);
		}
		else if (dotNumber == 5)
		{
			fill(int(random(256)), int(random(256)), int(random(256)));
			ellipse(myX+14,myY+15,10,10);
			ellipse(myX+37,myY+15,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+14,myY+35,10,10);
			ellipse(myX+37,myY+35,10,10);
		}
		else if (dotNumber == 6)
		{
			fill(int(random(256)), int(random(256)), int(random(256)));
			ellipse(myX+14,myY+13,10,10);
			ellipse(myX+14,myY+25,10,10);
			ellipse(myX+14,myY+37,10,10);
			ellipse(myX+37,myY+13,10,10);
			ellipse(myX+37,myY+25,10,10);
			ellipse(myX+37,myY+37,10,10);
		}
	}
		
}
