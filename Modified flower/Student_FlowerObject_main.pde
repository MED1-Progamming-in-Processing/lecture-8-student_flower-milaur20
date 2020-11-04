Object myObject1, myObject2;  // the first instance of the Flower class

void setup() {
  size(500, 500);

//sizes and positions for the circles
  float _size1 = 50;
  float _size2 = 50;
  float _x1 = random(0 + width/5, width-width/5);
  float _y1 = random(0 + height/5, height-height/5);
  float _x2 = random(0 + width/5, width-width/5);
  float _y2 = random(0 + height/5, height-height/5);
  boolean _mouseControlled = true;
  
  rectMode(CENTER);

  myObject1 = new Object(_x1, _y1, _size1, 5); 
  myObject2 = new Object(_x2, _y2, _size2, 1, _mouseControlled);
}

void draw() {
  background(#000000);

  myObject1.display();
  myObject1.move(/*2*/);  //Denne løsning virkede ikke da den i draw hele tiden satte valuen af blomstens speed tilbage til 2 selv når den nåede til hvor den skulle "bounce", altså reverse sin speed.
  myObject2.display();
  myObject2.move(/*5*/);
  
  myObject1.bounce(myObject2);
}
