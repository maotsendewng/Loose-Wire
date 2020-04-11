import processing.sound.*;
SoundFile file1,file2,file3,P1,P2,P3,P4,P5,D1,D2,D3,D4,D5,B1,B2,B3,B4,B5;

int red, green, blue;
float pamp,bamp,damp,scamp, p5Rate, M6Rate,bampc;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the data folder of the sketch and play it back in a loop
  file1 = new SoundFile(this, "jass Piano.wav");
  file2 = new SoundFile(this, "jass Bass.wav");
  file3 = new SoundFile(this, "jass Drums.wav");
  P1 = new SoundFile(this, "Piano C.wav");
  P2 = new SoundFile(this, "Piano Eb.wav");
  P3 = new SoundFile(this, "Piano F.wav");
  P4 = new SoundFile(this, "Piano G.wav");
  P5 = new SoundFile(this, "Piano Bb.wav");
  B1 = new SoundFile(this, "Bass C.wav");
  B2 = new SoundFile(this, "Bass Eb.wav");
  B3 = new SoundFile(this, "Bass F.wav");
  B4 = new SoundFile(this, "Bass G.wav");
  B5 = new SoundFile(this, "Bass Bb.wav");
  D1 = new SoundFile(this, "Drums snare.wav");
  D2 = new SoundFile(this, "Drums crash.wav");
  D3 = new SoundFile(this, "Drums tomL.wav");
  D4 = new SoundFile(this, "Drums tomH.wav");
  D5 = new SoundFile(this, "Drums tomM.wav");
  //amp levels
  pamp = 0.05;
  bamp = 0.2;
  damp = 0.2;
  scamp = 0.08; // pseudo side chain compression ducking amplitude
  bampc = 0.23; //bass amp pseudo compressed amplitude
  //Main loops
  file1.loop();
  file2.loop();
  file3.loop();
  //initialize volume levels Piano
  P1.amp(pamp);
  P2.amp(pamp);
  P3.amp(pamp);
  P4.amp(pamp);
  P5.amp(pamp);
  //initialize volume levels drums
  D1.amp(damp);
  D2.amp(damp);
  D3.amp(damp);
  D4.amp(damp);
  D5.amp(damp);
  //setting rate playback settings to transpose base notes into cm pentatonic at higher register
  p5Rate = 1.17; //perfect 5th 
  M6Rate = 1.5; //major 6th
}      

void draw() {
   background(red, green, blue);
  //initialize main loop levels
  file1.amp(0.1);
  file3.amp(0.1);
  file2.amp(0.2);
  //initialize volume levels Bass
  B1.amp(bamp);
  B2.amp(bamp);
  B3.amp(bamp);
  B4.amp(bamp);
  B5.amp(bamp);
}

void keyPressed() {
  // Set a random background color each time you hit then number keys
  red=int(random(255));
  green=int(random(255));
  blue=int(random(255));

  switch(key) {
  case '1':
    P1.play();
    break;
  case '2':
    P2.play();
    break;
  case '3':
    P3.play();
    break;
  case '4':
    P4.play();
    break;
  case '5':
    P5.play();
    break;
  case '6':
    B1.play();
    B1.amp(bampc);
    B1.rate(p5Rate);//relating note by 5th
    file1.amp(scamp);
    file2.amp(scamp);
    file3.amp(scamp);
    break;
  case '7':
    B2.play();
    B2.amp(bampc);
    B2.rate(p5Rate);//relating note by 5th
    file1.amp(scamp);
    file2.amp(scamp);
    file3.amp(scamp);
    break;
  case '8':
    B3.play();
    B3.amp(bampc);
    B3.rate(p5Rate);//relating note by 5th
    file1.amp(scamp);
    file2.amp(scamp);
    file3.amp(scamp);
    break;
  case '9':
    B4.play();
    B4.amp(bampc);
    B4.rate(M6Rate);//relating note by major 6th
    file1.amp(scamp);
    file2.amp(scamp);
    file3.amp(scamp);
    break;
  case '0':
    B5.play();
    B5.amp(bampc);
    B5.rate(p5Rate);//relating note by 5th
    file1.amp(scamp);
    file2.amp(scamp);
    file3.amp(scamp);
    break;
  case 'q':
    D1.play();
    break;
  case 'w':
    D2.play();
    break;
  case 'e':
    D3.play();
    break;
  case 'r':
    D4.play();
    break;
  case 't':
    D5.play();
    break;
  }
}
