class StartText{
  PImage starttext[];
  StartText(){
    starttext = new PImage [5]; //this sets it so that the there are 5 different PImages for text boxes  that will be used at the start of the game
    starttext[0] = loadImage ("StartText1.png");
    starttext[1] = loadImage ("StartText2.png");
    starttext[2] = loadImage ("StartText3.png");
    starttext[3] = loadImage ("StartText4.png");
    starttext[4] = loadImage ("StartText5.png");
  }
  void display1(){
    image(starttext[0], width/2, height/2); // this is the function that will display the text box which will be called in the main code.
  }
  void display2(){
    image(starttext[1], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
  }
  void display3(){
    image(starttext[3], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
  }
  void display4(){
    image(starttext[4], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
  }
  void display5(){
    image(starttext[5], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
  }
}
