boolean clickedInstructions = false;
boolean clickedBack = false;
boolean clickedGame = false;   int yTank = 350;
boolean conditional = false; int newHighScore  =  0; 
boolean bullet = false; boolean mainMenu = true; boolean loss = false; 


int xMove = 1; int score; int level = 1; int highscore = 0;

float rand1Ycoor = 150;
float rand2Ycoor = 250;
float rand3Ycoor = 350;
float rand4Ycoor = 500;
float rand5Ycoor = 600;
badGuy badGuy1 = new badGuy(rand1Ycoor);
badGuy badGuy2 = new badGuy(rand2Ycoor);
badGuy badGuy3 = new badGuy(rand3Ycoor);
badGuy badGuy4 = new badGuy(rand4Ycoor);
badGuy badGuy5 = new badGuy(rand5Ycoor);

bullet bullet1 = new bullet(yTank);

void add(){
  score += 10;}





  void setup(){
    size(1200,700);

  }
 
 
 
 
 
  class bullet{
    float y; int x = 250;
    int r = 20;
    int g = 10;
    int b = 20;
    bullet(float y){
      this.y = y;}
   
    void drawBullet(){
      rectMode(CENTER);
      fill(r, g, b);
      rect(x,y,100,15);
    }
   
    float Xcoor(){
      return x;}
   
    void updateY(){
      y = yTank; }
     
    void setX(){
      x = 250; }
   
   
  void move() {
    x+=100; }
 
  void changeColors(){
    for(int i = 0; i < 50; i++){
      r += 10;
      g += 5;
      b += 7;

}
  }
  }
   
 
 
 
 
class badGuy{
  float y; int x = 1400;
  badGuy(float y){
    this.y = y;
  }
 
  void drawBadGuy(){
    ellipseMode(CENTER);
    fill(255, 218, 94);
    ellipse(x, y, 100, 100);
    fill(255, 0 , 0);
    ellipse(x-20, y-20, 30, 30);
    ellipse(x+20, y-20, 30, 30);
    fill(0);
    ellipse(x-20, y-20, 15, 15);
    ellipse(x+20, y-20, 15, 15);
    rectMode(CENTER);
    rect(x, y+25,40, 20); }
   
    void changeY(){
     y = random(50,650); }
     
    float Xcoor(){
      return x;}
   
    float Ycoor(){
      return y; }
     
    void setX(int x){
      this.x = x; }
   
   
  void move() {
    x-= xMove; }
}
   



void keyPressed() {
  if (key == CODED) {
   
     if(keyCode == DOWN) {
      yTank++;
    }
  } else {
   
  }
}





int upArrow(int y){
  return y-9; }

int downArrow(int y){
  return y+9; }
 



void draw(){
  
 PFont font2 = createFont("Cooper Black" , 90);
 PFont font3 = createFont("Cooper Black" , 50);
 PFont font4 = createFont("Cooper Black" , 120);
 PFont font5 = createFont("Cooper Black" , 30);
 PFont font6 = createFont("Cooper Black" , 85);
  
  
  
  

if(mainMenu){
  background(20,30, 200);
  rectMode(CENTER);
  PFont font1 = createFont( "Cooper Black", 140);
 int fill  = 70;

 
  textFont(font1) ;
  fill(100,200,20);
  text("Tank Shooters" , 100 , 200);
  fill(100, 20, fill);
  rect(300,550,400,200);
  rect(900,550,400,200);
  fill(100,200,20);
  text("Start" , 120, 600);
  textFont(font2);
  text("Tutorial" , 710, 590);
 
 if(mouseX>700 && mouseX<1100 && mouseY>450 && mouseY<650){
   
   fill(300, 20, 0);
   text("Tutorial" , 710, 590);
   rect(900,550,400,200);
   text("Tutorial" , 710, 590);}
   
   if(mouseX>700 && mouseX<1100 && mouseY>450 && mouseY<650 && mousePressed){
   clickedInstructions =  true;
   
 
 } }
 
 if(clickedInstructions){

 
   fill(300, 20, 0);
   
   rect(900,550,400,200);
   text("Tutorial" , 710, 590);
   background(20, 30, 200);
   textFont(font2);
   fill(128, 211, 255);
   text("Move up and down using the arrow keys" , 50, 90);
   text("the arrow keys" , 300, 160);
   fill(160, 190, 255);
   text("Shoot by clicking space", 50,  260);
   fill(200, 150, 255);
   textFont(font3);
   text("Elliminate Enemies before they...", 50, 400);
   textFont(font4);
   fill(220, 120, 255);
   text("come to your side!!!!!", 0, 500);
   fill(240, 100, 255);
   rectMode(CORNER);
   rect(490,550,200,100);
   fill(255);
   textFont(font3);
   text("Back" , 520, 620);
   textFont(font5);
   text("Note: If you need to acess" , 0, 550);
   text("the tutorial for a quick lookup", 0, 600);
   text("in the future, you can just hold", 0, 650);
   text("and then release the tutorial button!", 0, 690);
   if(mouseX>490 && mouseX<690 && mouseY>550 && mouseY<650){
   fill(300, 20, 0);
   text("Back" , 520, 620);
   rect(490,550,200,100);
   text("Back" , 520, 620);
 }
   
   if(mouseX>490 && mouseX<690 && mouseY>550 && mouseY<650 && mousePressed){
   clickedBack =  true; mainMenu = true; 
 }
  
 if(clickedBack){
   clickedInstructions = false;
   }  

 }
   
 
  if(clickedInstructions==false){
   if(mouseX>100 && mouseX<500 && mouseY>450 && mouseY<650){
   
   fill(300, 20, 0);
   rectMode(CENTER);
   rect(300,550,400,200);
 
       }
   
   if(mouseX>100 && mouseX<500 && mouseY>450 && mouseY<650 && mousePressed){
   clickedGame =  true;}
   
  }
 if(clickedGame){ /// GAME CODE
   
   // actual game code
 

 background(20,30, 200);





  fill(255,255, 194);
 text("Score: " + score, 0, 100);
 text("Level: " + level, 600, 100);
 fill(100,200,20);
 rectMode(CENTER);
 rect(100,yTank, 170, 100);
 rect(200,yTank, 200, 40);
 
 if (key == CODED){ // up and down arrows
 if (keyCode == UP){
   
   yTank = upArrow(yTank);
   
 }
 if (keyCode == DOWN){
   yTank = downArrow(yTank);}
 }
 
 if(keyPressed){
   if(key == ' '){
     bullet = true;
     } }
 
 if(yTank>650){
   yTank=650;}
 if(yTank<150){
   yTank = 150;} // used for movement restrictions
   
if(bullet){
  while(true){
  bullet1.move();
  break; 
}} //shooting bullet
 
 
if(bullet1.Xcoor() >1200){
  bullet = false;
  for(int x = 0; x<1; x++){
  bullet1.setX();}} // bullet reload
 
   

if(bullet1.Xcoor() > badGuy1.Xcoor() && yTank > badGuy1.Ycoor() - 50 && yTank < badGuy1.Ycoor() +50 && badGuy1.Xcoor()>250){
  badGuy1 = new badGuy(random(100,600));
  score += 10;

} // when badguy is hit
 
if(bullet1.Xcoor() > badGuy2.Xcoor() && yTank > badGuy2.Ycoor() - 50 && yTank < badGuy2.Ycoor() +50 && badGuy2.Xcoor()>250){
  badGuy2 = new badGuy(random(100,600));
  score += 10;  
}

if(bullet1.Xcoor() > badGuy3.Xcoor() && yTank > badGuy3.Ycoor() - 50 && yTank < badGuy3.Ycoor() +50 && badGuy3.Xcoor()>250){
  badGuy3 = new badGuy(random(100,600));
  score += 10;
}

if(bullet1.Xcoor() > badGuy4.Xcoor() && yTank > badGuy4.Ycoor() - 50 && yTank < badGuy4.Ycoor() +50 && badGuy4.Xcoor()>250){
  badGuy4 = new badGuy(random(100,600));
  score += 10;
}
 
if(bullet1.Xcoor() > badGuy5.Xcoor() && yTank > badGuy5.Ycoor() - 50 && yTank < badGuy5.Ycoor() +50 && badGuy5.Xcoor()>250){
  badGuy5 = new badGuy(random(100,600));
  score += 10;

}


   
if (score > 120){
  level = 2;
  xMove = 2;  
}

if (score > 300){
  level = 3;
  xMove = 3;
}

if (score > 400){
  level = 4;
  xMove = 4;
}

if (score > 500){
  level = 5;
  xMove = 5;
}

if (score > 600){
  level = 6;
  xMove = 6;
}
if (score > 700){
  level = 7;
  xMove = 7;
}
if (score > 800){
  level = 8;
  xMove = 8;
}
if (score > 900){
  level = 9;
  xMove = 9;
}
if (score > 1000){
  level = 10;
  xMove = 10;
}
if (score > 1100){
  level = 11;
  xMove = 11;
}
if (score > 1200){
  level = 12;
  xMove = 12;
}
if (score > 1300){
  level = 13;
  xMove = 13;
}
if (score > 1400){
  level = 14;
  xMove = 14;
}
if (score > 1500){
  level = 15;
  xMove = 15;
}
if (score > 1600){
  level = 16;
  xMove = 16;
}
if (score > 1700){
  level = 17;
  xMove = 17;
}
if (score > 1800){
  level = 18;
  xMove = 18;
}
if (score > 1900){
  level = 18;
  xMove = 18;
}
if (score > 2000){
  level = 18;
  xMove = 18;
}


 
   
   
   
   
   
   
   
   
   
   
   // BAD GUY CONDITIONALS + Setup
   
   badGuy1.drawBadGuy();
   badGuy2.drawBadGuy();
   badGuy3.drawBadGuy();
   badGuy4.drawBadGuy();
   badGuy5.drawBadGuy();
   badGuy1.move();
   badGuy2.move();
   badGuy3.move();
   badGuy4.move();
   badGuy5.move();
   
   bullet1.drawBullet();
   bullet1.changeColors();
   bullet1.updateY();
 
   
   
   
   
   
   if(badGuy1.Xcoor() < 0 || badGuy2.Xcoor() < 0 || badGuy3.Xcoor() < 0 || badGuy4.Xcoor() < 0 || badGuy5.Xcoor() < 0){
    loss = true;
    

    if(loss){
      background(255, 150, 150);
     textFont(font6);
     text("You Survived Till Level " + level + "!", 0, 150); 
     
     
      if(score <= highscore){
       
        text("Your High Score is still " + highscore + "!", 0, 400); 
        print(score); 
      }
        
     if(highscore < score){
        text("You Beat Your High Score", 0, 250);
        text("of " + highscore + "!", 350, 310);
        text("Your New High Score is " + score + "!", 0, 400);
        newHighScore = score; 
     }
     

       

     rectMode(CENTER);
     rect(600,500,300,150);
     fill(100, 200, 250);
     text("Play", 480, 520);
     
     if(mouseX>450 && mouseX<750 && mouseY>425 && mouseY<575){
   
   fill(300, 20, 0);
  text("Play", 480, 520);
   rect(600,500,300,150);
  text("Play", 480, 520);}
   
   if(mouseX>450 && mouseX<750 && mouseY>425 && mouseY<575 && mousePressed){

   
   badGuy1 = new badGuy(random(100,600));
   badGuy2 = new badGuy(random(100,600));
   badGuy3 = new badGuy(random(100,600));
   badGuy4 = new badGuy(random(100,600));
   badGuy5 = new badGuy(random(100,600));
   score = 0; level = 1; xMove = 1; 
   mainMenu = true; 
   textFont(font4); 
   
   if(newHighScore>highscore){
     highscore = newHighScore; }
    
   

 }
     
    }
     
     
     
     
     
     
     // lose screen
   }
   

}
}
