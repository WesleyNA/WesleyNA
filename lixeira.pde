int contadorOlhos = 0;
int contadorTampa = 0;

import ddf.minim.*;
AudioPlayer barulho;

void setup(){
  size(800,800);
//sound
Minim minim;

//carregar som
minim = new Minim( this );
barulho = minim.loadFile("soundDoor.mp3");

}

void draw(){
  //FUNDO
  //fundo
  strokeWeight(1);
  noStroke();
  background(#8AE1EB);
  fill(#FDC00E);
  rect(75, 150, 650, 350);
  beginShape();
  fill(#8547A0);
  vertex(40, 150);
  vertex(75, 40);
  vertex(725, 40);
  vertex(765, 150);
  vertex(40,150);
  endShape();
  stroke(1);
  line(48, 130, 757,130);
  line(53, 110, 750, 110);
  line(58, 93, 744, 93);
  line(64, 75, 737, 75);
  line(69, 57, 729, 57);
  
  fill(#5A241A);
  rect(350,410, 90,90);
  fill(255,255,0);
  rect(395, 455, 5, 15);
  rect(390, 455, 5, 15);

  fill(50, 0, 255);
  rect(170, 300, 460,60);
  textSize(35);
  fill(1);
  text("SOUTH PARK ELEMENTARY", 175, 338);
  //rua 
  beginShape();
  fill(#C0C0C0);
  vertex(0, 600);
  vertex(300, 600);
  vertex(350, 500);
  vertex(440, 500);
  vertex(490, 600);
  vertex(800, 600);
  vertex(800,800);
  vertex(0,800);
  vertex(0,600);
  endShape();
  //rect(350,410, 90,90);
  //grama
  beginShape();
  fill(0, 200,0);
  vertex(0,500);
  vertex(350,500);
  vertex(300,600);
  vertex(0,600);
  vertex(0,500);
  endShape();
   beginShape();
  fill(0, 200,0);
  vertex(800,500);
  vertex(440,500);
  vertex(490,600);
  vertex(800,600);
  vertex(800,500);
  endShape();
  

  
  //janela
  fill(255,150,0);
  //noStroke();
  //stroke(255,100,0);
  rect(117.5, 407.5, 70.5, 65.5);
  rect(233.5, 407.5, 70.5, 65.5);
  rect(487.5, 407.5, 70.5,65.5);
  rect(602.5, 407.5, 70.5, 65.5);
  rect(117.5, 177.5 ,70.5,65.5);
  rect(232.5, 177.5, 70.5,65.5);
  rect(487.5, 177.5, 70.5,65.5);
  rect(602.5, 177.5, 70.5, 65.5);
  rect(357.5, 177.5, 70.5, 65.5);
  fill(#45897A);
  rect(120, 410, 65, 60);
  rect(235, 410, 65, 60);
  rect(490, 410, 65,60);
  rect(605, 410, 65, 60);
  rect(120, 180 ,65,60);
  rect(235, 180, 65,60);
  rect(490, 180, 65,60);
  rect(605, 180, 65, 60);
  rect(360, 180, 65, 60);
  noStroke();
  fill(255, 200, 0);
  rect(120, 440, 65,2);
  rect(152.5, 410, 2, 60);
  rect(235, 440, 65,2);
  rect(267.5, 410, 2, 60);
  rect(490, 440, 65, 2);
  rect(522.5, 410, 2,60);
  rect(605, 440, 65,2);
  rect(637.2, 410, 2, 60);
  rect(120, 210, 65,2);
  rect(152.5, 180, 2, 60);
  rect(235, 210, 65,2);
  rect(267.5, 180, 2, 60);
  rect(490, 210, 65, 2);
  rect(522.5, 180, 2,60);
  rect(605, 210, 65,2);
  rect(637.2, 180, 2, 60);
  rect(360, 210, 65, 2);
  rect(392.5, 180, 2, 60);


  //LIXEIRA  
 // background(255,255,255);
 translate(250,80);
  beginShape();
  fill(255,0,0);
  stroke(255,0,0);
  vertex(300, 492);
  vertex(290, 200);
  vertex(510, 200);
  vertex(500, 492);
  vertex(493,492);
  vertex(493,500);
  vertex(420, 500);
  
  vertex(420,470);
  vertex(380,470);
  vertex(380, 500);
  vertex(307, 500);
  vertex(307,492);
  vertex(300,492);
  
  endShape();
  
  fill(255,0,0);
  stroke(255,0,0);
  
  ellipse(305, 495,10,10);
  ellipse(495, 495,10,10);
  
  fill(255);
  
  
  //inicio olhos
    if(key == '4'){
      contadorOlhos = contadorOlhos + 1;
      println(contadorOlhos);
      //esquerdo pisca
      if (contadorOlhos < 50) {
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        ellipse(455, 295, 5,5);
      }
      else if (contadorOlhos <= 90){
        fill(0);
        rect(315,300, 70, 10);
        fill(255);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(455, 295, 5,5);
        if (contadorOlhos == 90) {
          contadorOlhos = 0;
        }
      }
    }
    else if(key == '6'){
      //direito pisca
        
      contadorOlhos = contadorOlhos + 1;
      println(contadorOlhos);
      //esquerdo pisca
      if (contadorOlhos < 50) {
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        ellipse(455, 295, 5,5);
      }
      else if (contadorOlhos <= 90){
        fill(0);
        rect(415, 300, 70, 10);
        fill(255);
        ellipse(350, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        if (contadorOlhos == 90) {
          contadorOlhos = 0;
        }
      }
    }
    else{
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        ellipse(455, 295, 5,5);
    }
  stroke(0);
  //fim olhos
  
  //inicio boca
  stroke(0);
  fill(0);
  triangle(350, 400, 450, 400, 400, 450);
  fill(255);
  rect(370, 400, 15,15);
  rect(385, 400, 15,15);
  rect(400, 400, 15,15);
  rect(415, 400, 15,15);
  //fim boca
  
    //inicio tampa
  fill(255,0,0);
  if(keyPressed == true) {
    if((key == 'p') || (key == 'P')){
      if(contadorTampa == 0){
          barulho.play(0);
        }
      
      contadorTampa++;
      stroke(255,255,0);
      rect(280,200, 240, 15);
      line(280,215, 520,215);
      stroke(255,0,0);
      beginShape();
      vertex(282,200);
      vertex(310, 180);
      vertex(490, 180);
      vertex(518, 200);
      endShape();
      beginShape();
      stroke(255,255,0);
      vertex(310, 180);
      vertex(282, 130);
      vertex(522, 130);
      vertex(490, 180);
      endShape();
      rect(282,115, 240, 15);
      
      beginShape();
      stroke(255, 255,0);
      fill(0);
      vertex(312, 175);
      vertex(289, 135);
      vertex(513, 135);
      vertex(488, 175);
      vertex(312,175);
      endShape();
      if(contadorTampa >= 180) {
        noStroke();
        //inicio lixo
            fill(#00FA9A);
            rect(330, 170, 50,30,30);
            fill(#D3D3D3);
            rect(300, 195, 40, 50);
            fill(#87CEEB);
            rect(340,180, 30,20);
            fill(#708090);
            ellipse(355, 190, 20,10);
            fill(#A0522D);
            rect(430, 160,80,40);
            fill(#8B4513);
            rect(430, 160,80,15);
        
        //fim lixo
        
        //inicio olhos
        
        fill(255);
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 290, 20,25);
        ellipse(450, 290, 20,25);
        fill(255);
        ellipse(355, 285, 5,5);
        ellipse(455, 285, 5,5);
         //fim olhos
         
        //inicio boca
        noStroke();
        fill(255,0,0);
        rect(350,350, 120,120);
        fill(0);
        ellipse(400, 400, 100, 30);
        fill(255,0,0);
        ellipse(400, 430, 60, 50);
        //fim boca
        if(contadorTampa >= 240) {
            //inicio olhos
            noStroke();
            fill(255);
            ellipse(350, 300, 70,50);
            ellipse(450, 300, 70,50);
            stroke(0);
            fill(0);
            ellipse(350, 290, 20,25);
            ellipse(450, 290, 20,25);
            fill(255);
            ellipse(355, 285, 8,8);
            ellipse(455, 285, 8,8);
             //fim olhos
             
            //inicio boca
            noStroke();
            fill(255,0,0);
            rect(320,350, 150,120);
            fill(0);
            rect(350, 400, 100, 10);
            //fim boca
            
            //inicio lixo
            fill(#B0E0E6);
            rect(390, 170, 20,20,10);
            fill(#E0FFFF);
            rect(390, 170, 20,10,10);
            fill(#B0E0E6);
            rect(380, 180, 40,20,10);
            rect(380, 190, 40,10);
            stroke(#8B4513);
            strokeWeight(5);
            line(320,195, 270,100);
            strokeWeight(1);
            noStroke();
            fill(#00FA9A);
            rect(330, 170, 50,30,30);
            fill(#D3D3D3);
            rect(300, 195, 40, 50);
            fill(#87CEEB);
            rect(340,180, 30,20);
            fill(#708090);
            ellipse(355, 190, 20,10);
            fill(#A0522D);
            rect(430, 160,80,40);
            fill(#8B4513);
            rect(430, 160,80,15);
            
            fill(#D3D3D3);
            rect(440, 195, 40, 50);

        
            //fim lixo
      }
      }
    }
   else{
  stroke(255,255,0);
  rect(280,185, 240, 30);
  line(280,200, 520,200);
  stroke(255,0,0);

   }
  }
  else{
  contadorTampa = 0;
  stroke(255,255,0);
  rect(280,185, 240, 30);
  line(280,200, 520,200);
  stroke(255,0,0);
  }
  //fim tampa
  
  noStroke();
  
  //inicio pedal
  if(keyPressed == true) {
    if((key == 'p') || (key == 'P')) {
        fill(#666666);
        rect(380,500,40,10);
        fill(#C0C0C0);
        rect(390,470,20,30);
    }
    else {
        fill(#666666);
        rect(380,480,40,10);
        fill(#C0C0C0);
        rect(390,470,20,10);
    }
  }
  else{
      fill(#666666);
      rect(380,480,40,10);
      fill(#C0C0C0);
      rect(390,470,20,10);
  }
  //fim pedal
  
  fill(0);
  
  ellipse(330, 525, 40, 40);
  ellipse(470, 525, 40, 40);
  
  fill(#CCCCCC);
  rect(325, 500, 40,20);
  ellipse(330, 525, 20, 20);
  rect(435, 500, 40,20);
  ellipse(470, 525, 20, 20);
}
