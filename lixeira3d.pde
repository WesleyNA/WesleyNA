void settings(){
  System.setProperty("jogl.disable.openglcore", "false");
  size(1000,1000, P3D); 
  
  
}
void desenhaRet(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  box(tamanho[0],tamanho[1], tamanho[2]);
  translate(-x, -y, z);

}

void desenhaEli(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  ellipse(tamanho[0],tamanho[1], tamanho[2], tamanho[3]);

  translate(-x, -y, z);
  //rotateY(radians(60));
}
void desenhaTri(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  triangle(tamanho[0],tamanho[1], tamanho[2], tamanho[3],tamanho[4], tamanho[5]);
  translate(-x, -y, z);
  //rotateY(radians(60));
}


void draw(){
  background(0,0,255);
  lights();
  //pointLight(255, 255, 255, mouseX, mouseY, 500);
  if(mousePressed == true){
    if(mouseButton == RIGHT){
        camera((width/2)-1000, height/2, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0); 
    }
    if(mouseButton == LEFT){
        camera(width/2, (height/2)+800, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0); 
    }
  }
  else{
    camera(width/2, height/2, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0); 
  }
  
  fill(255,0,0);
  desenhaRet(width/2, height/2, 0 , 250,450,200);
  desenhaRet(500, 290,0, 255,10,210);
  desenhaRet(500, 270, 0, 255,10,210);
  desenhaRet(500, 250, 0, 56,5,5);
  desenhaRet(475, 255, 0, 5,5,5);
  desenhaRet(525, 255, 0, 5,5,5);
  desenhaRet(400,730, 70, 30, 20,30);
  desenhaRet(600,730, -70, 30, 20,30);
  fill(255);
  desenhaEli(350,200,101,200,200,70, 50);
  desenhaEli(250,200,-99,200,200,70, 50);
  fill(1);
  desenhaEli(250,200,102,200,200,20, 20);
  desenhaEli(350,200,-98,200,200,20, 20);
  desenhaTri(width/2, height/2, 100, 0, 60, -50, 0, 50, 0);
  fill(255);
  desenhaRet(485,505, -100, 10, 10,10);
  desenhaRet(495,505, 100, 10, 10,10);
  desenhaRet(505,505, -100, 10, 10,10);
  desenhaRet(515,505, 100, 10, 10,10);



}
