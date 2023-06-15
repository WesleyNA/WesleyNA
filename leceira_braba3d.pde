void settings(){
  System.setProperty("jogl.disable.openglcore", "false");
  size(1000,1000, P3D); 
  
  
}
void desenhaRet(float x, float y, float... tamanho){
  translate(x, y);
  box(tamanho[0],tamanho[1], tamanho[2]);
  translate(-x, -y);

}
  


void draw(){
  background(0,0,255);
  lights();
  //pointLight(255, 255, 255, mouseX, mouseY, 500);
  if(mousePressed == true){
    if(mouseButton == RIGHT){
        camera((width/2)+500, height/2, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0); 
    }
    if(mouseButton == LEFT){
        camera(width/2, (height/2)-500, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0); 
    }
  }
  else{
    camera(width/2, height/2, (width/2) / tan(PI/6), mouseX, mouseY, 0, 0, 1, 0); 
  }
  
  fill(255,0,0);
  desenhaRet(width/2, height/2, 250,450,200);
  desenhaRet(500, 290, 255,10,210);
  desenhaRet(500, 270, 255,10,210);
  desenhaRet(500, 250, 56,5,5);
  desenhaRet(475, 255, 5,5,5);
  desenhaRet(525, 255, 5,5,5);

  


}
