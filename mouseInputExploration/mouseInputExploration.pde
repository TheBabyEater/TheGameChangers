// I removed all the old comments.... see history to look at each version...
int value = 0;
int previousValue = 0;

void setup() {
  // this changed the size to make it bigger, i personaly liked it
  size(1000, 700);
  // makes the background white...
  background(255, 255, 255);
}

//I'm gonna change this to circles and change their shape...
void draw() {

  fill(value);
  
  // I changed it to a Rect and made it so its *1 not *0.7
   rect(mouseX,mouseY, value*1 , value*1 + 5);
}

  // I wanted to be able to "clear" the drawing when I clicked the mouse... this worked and
  // it much more interesting than what I tried first: background(255);
  void mouseClicked() {
   background(value); 
  }

  void mouseMoved() {
  if (value >= previousValue && value<= 255) {
    previousValue = value;
    value = value + 5;
  }
 
  else {
    previousValue = value; 
    value = value - 5;
  }
  
  if (value <= 0) {
    value = 5;
  }
}
