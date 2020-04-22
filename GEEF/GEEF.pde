//Used this tutorial as reference http://www.science.smith.edu/dftwiki/index.php/Processing_Tutorial_--_Showing_Animated_Gifs
PImage[] dancer = new PImage[20];
/*
Use 'a' and 'b' to change width and height respectively
I reccomend changing the values by ratios so for instance if you want it half as big
set it up as a = 512*0.5 and b = 683*0.5
*/
int a = 512, b = 683;

void setup() {
  size(500,500);
  smooth();
  dancer[0] = loadImage( "dancer0.gif" );
  dancer[0].resize(a,b);
  dancer[1] = loadImage( "dancer1.gif" );
  dancer[1].resize(a,b);
  dancer[2] = loadImage( "dancer2.gif" );
  dancer[2].resize(a,b);
  dancer[3] = loadImage( "dancer3.gif" );
  dancer[3].resize(a,b);
  dancer[4] = loadImage( "dancer4.gif" );
  dancer[4].resize(a,b);
  dancer[5] = loadImage( "dancer5.gif" );
  dancer[5].resize(a,b);
  dancer[6] = loadImage( "dancer6.gif" );
  dancer[6].resize(a,b);
  dancer[7] = loadImage( "dancer7.gif" );
  dancer[7].resize(a,b);
  dancer[8] = loadImage( "dancer8.gif" );
  dancer[8].resize(a,b);
  dancer[9] = loadImage( "dancer9.gif" );
  dancer[9].resize(a,b);
  dancer[10] = loadImage( "dancer10.gif" );
  dancer[10].resize(a,b);
  dancer[11] = loadImage( "dancer11.gif" );
  dancer[11].resize(a,b);
  dancer[12] = loadImage( "dancer12.gif" );
  dancer[12].resize(a,b);
  dancer[13] = loadImage( "dancer13.gif" );
  dancer[13].resize(a,b);
  dancer[14] = loadImage( "dancer14.gif" );
  dancer[14].resize(a,b);
  dancer[15] = loadImage( "dancer15.gif" );
  dancer[15].resize(a,b);
  dancer[16] = loadImage( "dancer16.gif" );
  dancer[16].resize(a,b);
  dancer[17] = loadImage( "dancer17.gif" );
  dancer[17].resize(a,b);
  dancer[18] = loadImage( "dancer18.gif" );
  dancer[18].resize(a,b);
  dancer[19] = loadImage( "dancer19.gif" );
  dancer[19].resize(a,b);
  //if you want to slow down the dancing uncomment out line below
  //frameRate(10);
}

void draw() {
  background(0);
  image( dancer[frameCount%20], 0, 0 );
  tint(255,mouseX);
  
}
