//your code here
NormalParticle[] homieG;
void setup()
{
	size(800,800);
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
		myX = 400;
		myY = 400;
		shade = (int)(Math.random()*255);
		speed = (float)(Math.random()*7)-3;
		angle = (float)(Math.random()*(Math.PI*2));
	}

	void move()
	{
 		myX += Math.cos(angle)*(speed);
 		myY += Math.sin(angle)*(speed);
	}
	void show()
 	{
 		//noStroke();
 		fill(255);
 		ellipse((float)myX,(float)myY,10,10);
 	}


}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


