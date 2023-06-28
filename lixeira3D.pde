void settings(){
  System.setProperty("jogl.disable.openglcore", "false");
  size(1000,1000, P3D); 
  
  
}
void desenhaRet(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  box(tamanho[0],tamanho[1], tamanho[2]);
  translate(-x, -y, -z);

}

void desenhaEli(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  ellipse(tamanho[0],tamanho[1], tamanho[2], tamanho[3]);
  translate(-x, -y, -z);
  //rotateY(radians(60));
}
void desenhaSphe(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  //sphere(tamanho[0],tamanho[1], tamanho[2], tamanho[3]);
  translate(-x, -y, -z);
  //rotateY(radians(60));
}
void desenhaTri(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  triangle(tamanho[0],tamanho[1], tamanho[2], tamanho[3],tamanho[4], tamanho[5]);
  translate(-x, -y, z);
  //rotateY(radians(60));
}

int teclaA = 0;
int teclaS = 0;
int teclaW = 0;
int teclaD = 0;

void draw(){
  background(0,0,255);
  lights();
  
  //pointLight(255, 255, 255, mouseX, mouseY, 500);
  /////////////////////////////////////////////////
  //Movimentação da câmera
  ortho(-width/2, width/2, -height/2, height/2);
  if(keyPressed == true){
    
    if((key == 'a') || (key == 'A')) {
      teclaA-=20;
       camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0);

    }
    else if((key == 'd') || (key == 'D')) {
      teclaD+=20;
      camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0);

    }
    else if((key == 's') || (key == 'S')) {
      teclaS+=20;
      camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0);

    }
    else if((key == 'w') || (key == 'W')) {
      teclaW-=20;
      camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0);

    }
  }
  else {
    camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0);
  }
  ///////////////////////////////////////////////////////////
  //Corpo da lixeira
  fill(255,0,0);
  noStroke();
  desenhaRet(380, height/2, 0 , 10,450,200);
  desenhaRet(500, height/2, -100 , 250,450,10);
  desenhaRet(500, height/2, 97 , 250,450,10);
  desenhaRet(620, height/2, 0 , 10,450,200);
  desenhaRet(500, 720, 0, 250, 10,200);
  desenhaRet(425, 740, 0, 98,30,201);
  desenhaRet(575, 740, 0, 98,30,201);
  ///////////////////////////////////////////////
  //Rodas
  fill(255);
  desenhaRet(400, 770, 70, 15, 35, 40);
  desenhaSphe(400, 770, 70, 100, 50, 50, 100);
  //desenhaRet();
  //desenhaRet();
  //desenhaRet();
  stroke(1);
  /////////////////////////////////////
  fill(255,0,0);
  desenhaRet(500, 290,0, 255,10,210);
  desenhaRet(500, 270, 0, 255,10,210);
  desenhaRet(500, 250, 0, 56,5,5);
  desenhaRet(475, 255, 0, 5,5,5);
  desenhaRet(525, 255, 0, 5,5,5);
  
  //fill(255);
  //desenhaEli(350,200,101,200,200,70, 50);
  //desenhaEli(250,200,-99,200,200,70, 50);
  //fill(1);
  //desenhaEli(250,200,102,200,200,20, 20);
  //desenhaEli(350,200,-98,200,200,20, 20);
  //desenhaTri(width/2, height/2, 100, 0, 60, -50, 0, 50, 0);
  //fill(255);
  //desenhaRet(485,505, -100, 10, 10,10);
  //desenhaRet(495,505, 100, 10, 10,10);
  //desenhaRet(505,505, -100, 10, 10,10);
  //desenhaRet(515,505, 100, 10, 10,10);



}
