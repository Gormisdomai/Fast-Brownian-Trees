

void setup () {
  size (50, 50);

  background (0); // Fill in black.
  stroke (54, 203, 34); // Points in Evergreen.
  set(20, 20, color(255,0,0));
}


float X = 26; // Always start at 26x
float Y = 12; // Always start at 12y
void draw() {
  point (X, Y); // Draw point at 26x & 12y. 
  float newX = X + random (-1, +1); 
  float newY = Y + random (-1, +1); 
  if (get((int)newX, (int)newY) == color(255, 0, 0))
  {
    set((int)X, (int)Y, color(255, 0, 0));
    newX = random(0,50);
    newY = random(0,50);
    stroke (random(100), random(255), random(255));
    saveFrame();
  }
  if (newX > width) newX = 0;
  if (newX < 0) newX = width;
  if (newY > height) newY = 0;
  if (newY < 0) newY = height;
  X = newX; Y = newY;
}