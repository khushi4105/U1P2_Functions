//U1_P2 = Functions, collisions, IF


int fX = 150;
int fY = 400;

int fX2 = 450;
int fY2 = 150;

int xTopFlower = 100;
int yTopFlower = 100;

int fXSpeed = 1;
int xDirection = 1;

float D = 0;
float D2 = 1;

void setup()
{
  size (600, 600);
}



void draw()
{
  background(0, 0, 0);                                                                                                                                   

  DrawFlower(fX, fY);
  fX = fX + fXSpeed;
  fY = fY - fXSpeed;

  DrawFlower(fX2, fY2);
  fX2 = fX2 - fXSpeed;
  fY2 = fY2 + fXSpeed;
  
  DrawFlower(xTopFlower, yTopFlower);
  xTopFlower = xTopFlower + fXSpeed + xDirection;
  

  D = dist(fX, fY, fX2, fY2);

  if (D < 50) // if (D < Radius1 + Radius2)
  {
    fXSpeed = fXSpeed * -1;
  }
  
  if (fX < 70)
  {
   fXSpeed = fXSpeed * -1 ; 
  }
  
  if (dist(fX2, fY2, xTopFlower, yTopFlower) < 50)
  { 
   //xTopFlower = xTopFlower + XDirection * fXSpeed * -1;
   xDirection = xDirection *-1;
   
   fX2 = fX2 + fXSpeed;
   fY2 = fY2 - fXSpeed;
   //y = y + yDirection * ySpeed;
   
  }
  
}



void DrawFlower(int x, int y)
{
  fill(247, 247, 247);
  ellipse(x, y, 50, 50);

  fill(247, 247, 67); 
  ellipse(x, y-35, 30, 30);

  fill(247, 247, 67); 
  ellipse(x, y+35, 30, 30);

  fill(247, 247, 67); 
  ellipse(x-35, y, 30, 30);

  fill(247, 247, 67); 
  ellipse(x+35, y, 30, 30);

  fill(247, 247, 67); 
  ellipse(x+27, y-25, 30, 30);

  fill(247, 247, 67); 
  ellipse(x-27, y-25, 30, 30);

  fill(247, 247, 67); 
  ellipse(x-27, y+25, 30, 30);

  fill(247, 247, 67); 
  ellipse(x+27, y+25, 30, 30);
}
