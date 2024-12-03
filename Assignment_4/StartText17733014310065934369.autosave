class StartText {
  PImage starttext[];
  PImage clickPrompt[];
  PImage prompt;

  StartText() {
    starttext = new PImage [5]; //this sets it so that the there are 5 different PImages for text boxes  that will be used at the start of the game
    starttext[0] = loadImage ("StartText1.png");
    starttext[1] = loadImage ("StartText2.png");
    starttext[2] = loadImage ("StartText3.png");
    starttext[3] = loadImage ("StartText4.png");
    starttext[4] = loadImage ("StartText5.png");

    clickPrompt = new PImage[2];

    clickPrompt [0] = loadImage("Click.png");
    clickPrompt [1] = loadImage("Click Prompt.png"); // this is the prompt to tell the players to click on screen to progress dialogue
    
    prompt = loadImage("prompt.png");
  }
  void prompt(){
    image(prompt, width/2, height/2);
}
  void click() {
    image(clickPrompt[0], width/2, height/2);
  }
  void display1() {
    image(starttext[0], width/2, height/2); // this is the function that will display the text box which will be called in the main code.
    image(clickPrompt[1], width/2, height/2);
  }
  void display2() {
    image(starttext[1], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
    image(clickPrompt[1], width/2, height/2);
  }
  void display3() {
    image(starttext[2], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
    image(clickPrompt[1], width/2, height/2);
  }
  void display4() {
    image(starttext[3], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
    image(clickPrompt[1], width/2, height/2);
  }
  void display5() {
    image(starttext[4], width/2, height/2);// this is the function that will display the text box which will be called in the main code.
    image(clickPrompt[1], width/2, height/2);
  }
}
