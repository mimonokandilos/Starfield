//your code here
Particle[] homieG;
void setup()
{
	size(500,500);
	background(0);
	frameRate(100);

	homieG = new Particle[200];
	for(int i = 0; i < homieG.length; i++)
	{
		if(i%2 == 0)
		{
			homieG[i] = new NormalParticle();
		}
		else if(i%21 == 0)
		{
			homieG[i] = new JumboParticle();
		}
		else
		{
			homieG[i] = new OddballParticle();
		}
		
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
interface Particle
{
	public void move();
	public void show();

}

		class NormalParticle implements Particle
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
	 		fill(0,0,255);
	 		ellipse((float)myX,(float)myY,10,10);
	 	}


	}

		class OddballParticle implements Particle
		{
				float myX, myY, speed, angle;
				int shade;
				OddballParticle()
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
		 		fill(0,255,0);
		 		ellipse((float)myX,(float)myY,10,10);
		 	}
		}
		class JumboParticle extends OddballParticle
		{
			public void move()
			{
				myX += Math.cos(angle)*(speed);
		 		myY += Math.sin(angle)*(speed);
		 		angle -= .01;
			}
			public void show()
		 	{
		 		//noStroke();
		 		fill((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
		 		ellipse((float)myX,(float)myY,30,30);
		 	}
		}


