//your code here
NormalParticle[] homieG;
void setup()
{
	size(500,500);
	background(0);
	frameRate(100);

	homieG = new NormalParticle[200];
	for(int i = 0; i < homieG.length; i++)
	{
		homieG[i] = new NormalParticle();
	}

}
void draw()
{
	for( int i = 0; i < homieG.length; i++)
	{
		homieG[i].move();
		homieG[i].show();
	}
}

		class NormalParticle
	{
		float myX, myY, speed, angle;
		int shade;
		NormalParticle()
		{
			myX = 250;
			myY = 250;
			shade = (int)(Math.random()*255);
			speed = (float)(Math.random()*7)-3;
			angle = (float)(Math.random()*(Math.PI*2));

		}

		public void move()
		{
	 		myX += Math.cos(angle)*(speed);
	 		myY += Math.sin(angle)*(speed);
	 		angle += .01;
		}
		public void show()
	 	{
	 		//noStroke();
	 		fill(255);
	 		ellipse((float)myX,(float)myY,10,10);
	 	}


	}
interface Particle
{
	public void move();
	public void show();

}

		class OddballParticle //uses an interface
		{
				float myX, myY, speed, angle;
				int shade;
				OddballParticle()
			{
				myX = 250;
				myY = 250;
				shade = (int)(Math.random()*255);
				speed = (float)(Math.random()*11)-3;
				angle = (float)(Math.random()*(Math.PI*2));

			}

			public void move()
			{
		 		myX += Math.cos(angle)*(speed);
		 		myY += Math.sin(angle)*(speed);
		 		angle += .0025;
			}
			public void show()
		 	{
		 		//noStroke();
		 		fill(0,255,0);
		 		ellipse((float)myX,(float)myY,10,10);
		 	}
		}
		class JumboParticle //uses inheritance
		{
				float myX, myY, speed, angle;
				int shade;
				JumboParticle()
					{
				myX = 250;
				myY = 250;
				shade = (int)(Math.random()*255);
				speed = (float)(Math.random()*13)-3;
				angle = (float)(Math.random()*(Math.PI*2));

			}

			public void move()
			{
		 		myX += Math.cos(angle)*(speed);
		 		myY += Math.sin(angle)*(speed);
		 		angle += .009;
			}
			public void show()
		 	{
		 		//noStroke();
		 		fill((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
		 		ellipse((float)myX,(float)myY,30,30);
		 	}
		}


