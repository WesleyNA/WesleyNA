void setup(){
  size(800,800);

}

void draw(){
  //fundo
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
  fill(50, 0, 255);
  rect(170, 300, 460,60);
  textSize(35);
  fill(1);
  text("SOUTH PARK ELEMENTARY", 170, 338);

  //janela
  fill(#45897A);
  strokeWeight(2);
  stroke(255,100,0);
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


  /*
  
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
  //inicio tampa
  
  if(keyPressed == true) {
    if((key == 'p') || (key == 'P')){
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
    }
   else{
   stroke(255,255,0);
  rect(280,185, 240, 30);
  line(280,200, 520,200);
  stroke(255,0,0);

   }
  }
  else{
  stroke(255,255,0);
  rect(280,185, 240, 30);
  line(280,200, 520,200);
  stroke(255,0,0);
  }
  //fim tampa
  
  fill(255,0,0);
  stroke(255,0,0);
  
  ellipse(305, 495,10,10);
  ellipse(495, 495,10,10);
  
  fill(255);
  
  
  //inicio olhos
  if(keyPressed == true){
    if(key == '4'){
      //esquerdo pisca
        //ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        //ellipse(350, 300, 20,25);
        ellipse(450, 300, 20,25);
        fill(255);
        //ellipse(355, 295, 5,5);
        ellipse(455, 295, 5,5);
    }
    else if(key == '6'){
      //direito pisca
        ellipse(350, 300, 70,50);
        //ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        //ellipse(450, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        //ellipse(455, 295, 5,5);
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
  fill(0);
  triangle(350, 400, 450, 400, 400, 450);
  fill(255);
  rect(370, 400, 15,15);
  rect(385, 400, 15,15);
  rect(400, 400, 15,15);
  rect(415, 400, 15,15);
  //fim boca
  
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
  
  */
}
