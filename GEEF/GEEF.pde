//Used this tutorial as reference http://www.science.smith.edu/dftwiki/index.php/Processing_Tutorial_--_Showing_Animated_Gifs
PImage[] dancer = new PImage[60];
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
  dancer[1] = loadImage( "dancer0.gif" );
  dancer[1].resize(a,b);
  dancer[2] = loadImage( "dancer0.gif" );
  dancer[2].resize(a,b);
  dancer[3] = loadImage( "dancer1.gif" );
  dancer[3].resize(a,b);
  dancer[4] = loadImage( "dancer1.gif" );
  dancer[4].resize(a,b);
  dancer[5] = loadImage( "dancer1.gif" );
  dancer[5].resize(a,b);
  dancer[6] = loadImage( "dancer2.gif" );
  dancer[6].resize(a,b);
  dancer[7] = loadImage( "dancer2.gif" );
  dancer[7].resize(a,b);
  dancer[8] = loadImage( "dancer2.gif" );
  dancer[8].resize(a,b);
  dancer[9] = loadImage( "dancer3.gif" );
  dancer[9].resize(a,b);
  dancer[10] = loadImage( "dancer3.gif" );
  dancer[10].resize(a,b);
  dancer[11] = loadImage( "dancer3.gif" );
  dancer[11].resize(a,b);
  dancer[12] = loadImage( "dancer4.gif" );
  dancer[12].resize(a,b);
  dancer[13] = loadImage( "dancer4.gif" );
  dancer[13].resize(a,b);
  dancer[14] = loadImage( "dancer4.gif" );
  dancer[14].resize(a,b);
  dancer[15] = loadImage( "dancer5.gif" );
  dancer[15].resize(a,b);
  dancer[16] = loadImage( "dancer5.gif" );
  dancer[16].resize(a,b);
  dancer[17] = loadImage( "dancer5.gif" );
  dancer[17].resize(a,b);
  dancer[18] = loadImage( "dancer6.gif" );
  dancer[18].resize(a,b);
  dancer[19] = loadImage( "dancer6.gif" );
  dancer[19].resize(a,b);
  dancer[20] = loadImage( "dancer6.gif" );
  dancer[20].resize(a,b);
  dancer[21] = loadImage( "dancer7.gif" );
  dancer[21].resize(a,b);
  dancer[22] = loadImage( "dancer7.gif" );
  dancer[22].resize(a,b);
  dancer[23] = loadImage( "dancer7.gif" );
  dancer[23].resize(a,b);
  dancer[24] = loadImage( "dancer8.gif" );
  dancer[24].resize(a,b);
  dancer[25] = loadImage( "dancer8.gif" );
  dancer[25].resize(a,b);
  dancer[26] = loadImage( "dancer8.gif" );
  dancer[26].resize(a,b);
  dancer[27] = loadImage( "dancer9.gif" );
  dancer[27].resize(a,b);
  dancer[28] = loadImage( "dancer9.gif" );
  dancer[28].resize(a,b);
  dancer[29] = loadImage( "dancer9.gif" );
  dancer[29].resize(a,b);
  dancer[30] = loadImage( "dancer10.gif" );
  dancer[30].resize(a,b);
  dancer[31] = loadImage( "dancer10.gif" );
  dancer[31].resize(a,b);
  dancer[32] = loadImage( "dancer10.gif" );
  dancer[32].resize(a,b);
  dancer[33] = loadImage( "dancer11.gif" );
  dancer[33].resize(a,b);
  dancer[34] = loadImage( "dancer11.gif" );
  dancer[34].resize(a,b);
  dancer[35] = loadImage( "dancer11.gif" );
  dancer[35].resize(a,b);
  dancer[36] = loadImage( "dancer12.gif" );
  dancer[36].resize(a,b);
  dancer[37] = loadImage( "dancer12.gif" );
  dancer[37].resize(a,b);
  dancer[38] = loadImage( "dancer12.gif" );
  dancer[38].resize(a,b);
  dancer[39] = loadImage( "dancer13.gif" );
  dancer[39].resize(a,b);
  dancer[40] = loadImage( "dancer13.gif" );
  dancer[40].resize(a,b);
  dancer[41] = loadImage( "dancer13.gif" );
  dancer[41].resize(a,b);
  dancer[42] = loadImage( "dancer14.gif" );
  dancer[42].resize(a,b);
  dancer[43] = loadImage( "dancer14.gif" );
  dancer[43].resize(a,b);
  dancer[44] = loadImage( "dancer14.gif" );
  dancer[44].resize(a,b);
  dancer[45] = loadImage( "dancer15.gif" );
  dancer[45].resize(a,b);
  dancer[46] = loadImage( "dancer15.gif" );
  dancer[46].resize(a,b);
  dancer[47] = loadImage( "dancer15.gif" );
  dancer[47].resize(a,b);
  dancer[48] = loadImage( "dancer16.gif" );
  dancer[48].resize(a,b);
  dancer[49] = loadImage( "dancer16.gif" );
  dancer[49].resize(a,b);
  dancer[50] = loadImage( "dancer16.gif" );
  dancer[50].resize(a,b);
  dancer[51] = loadImage( "dancer17.gif" );
  dancer[51].resize(a,b);
  dancer[52] = loadImage( "dancer17.gif" );
  dancer[52].resize(a,b);
  dancer[53] = loadImage( "dancer17.gif" );
  dancer[53].resize(a,b);
  dancer[54] = loadImage( "dancer18.gif" );
  dancer[54].resize(a,b);
  dancer[55] = loadImage( "dancer18.gif" );
  dancer[55].resize(a,b);
  dancer[56] = loadImage( "dancer18.gif" );
  dancer[56].resize(a,b);
  dancer[57] = loadImage( "dancer19.gif" );
  dancer[57].resize(a,b);
  dancer[58] = loadImage( "dancer19.gif" );
  dancer[58].resize(a,b);
  dancer[59] = loadImage( "dancer19.gif" );
  dancer[59].resize(a,b);
  //if you want to slow down the dancing uncomment out line below
  //frameRate(10);
}

void draw() {
  background(0);
  image( dancer[frameCount%60], 0, 0 );
  tint(255,mouseX);
  
}
