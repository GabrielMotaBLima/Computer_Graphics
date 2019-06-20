int [][] v = new int[10][3];
int [] val1 = new int[4], val2 = new int[4], va = new int[3];
int i, j, a, vb, rand, y=100, x=100;
PImage img, blank, chang;




void setup(){
  size(1000,1000);
  stroke(0,0,0);
  
  img = loadImage("tiririca.jpg");
  
  
  for(i=0; i<10; i++){
    for(j=0; j<3; j++){
      if(i<3) v[i][j]=0;
      else{
        if(j==2) v[i][j] = 0;
        else v[i][j] = 255;
      }
    }
  }
  
  va[0] = 202; va[1] = 0; va[2] = 0;
  vb = 5;

  val1[0] = 85; val2[0] = 130;
  val1[1] = 420; val2[1] = 420;
  val1[2] = 340; val2[2] = 340;
  val1[3] = 130; val2[3] = 175;
  
  
  print("Clique diversas vezes na arte\n"); 
  print("Clique diversas vezes na arte\n"); 
  print("Clique diversas vezes na arte\n"); 
  print("Clique diversas vezes na arte\n"); 
  print("Clique diversas vezes na arte\n"); 
  
}

void draw(){
  stroke(0,0,0);
   
  // MOLDE DO PRÉDIO
  fill(51, 56, 85);
  quad(30+x, 20+y, 230+x, 20+y, 230+x, 420+y, 30+x, 420+y);
  quad(230+x, 420+y, 330+x, 360+y, 330+x, 10+y, 230+x, 20+y);
  quad(330+x, 10+y, 130+x, 10+y, 30+x, 20+y, 230+x, 20+y);
  
  // TELHADO
  fill(215, 43, 0);
  triangle(0+x, 20+y, 260+x, 20+y, 130+x, -20+y);
  quad(260+x, 20+y, 360+x, 10+y, 230+x, -30+y, 130+x, -20+y);
  
  // IMAGEM SURPRESA
  image(img, 85+x, 340+y);
  
  // PORTA DUPLA DE MAÇANETAS
  //fill(va[0], va[1], va[2]);
  //quad(85+x, 420+y, 85+x, 340+y, 175+x, 340+y, 175+x, 420+y);
  fill(202, 0, 0);
  quad(val1[0]+x, val1[1]+y, val1[0]+x, val1[2]+y, val1[3]+x, val1[2]+y, val1[3]+x, val1[1]+y);
  quad(val2[0]+x, val2[1]+y, val2[0]+x, val2[2]+y, val2[3]+x, val2[2]+y, val2[3]+x, val2[1]+y);
  fill(0,0,0);
  circle(125+x, 380+y, vb);
  circle(135+x, 380+y, vb);
  
  
  // JANELAS À ESQUERDA, COORDENADA [x,0]
  // janela [0][0]
  fill(v[0][0], v[0][1], v[0][2]);
  quad(50+x, 40+y, 85+x, 40+y, 85+x, 80+y, 50+x, 80+y);
  quad(85+x, 40+y, 120+x, 40+y, 120+x, 80+y, 85+x, 80+y);
  
  // janela [1][0]
  fill(v[1][0], v[1][1], v[1][2]);
  quad(50+x, 100+y, 85+x, 100+y, 85+x, 140+y, 50+x, 140+y);
  quad(85+x, 100+y, 120+x, 100+y, 120+x, 140+y, 85+x, 140+y);
  
  // janela [2][0]
  fill(v[2][0], v[2][1], v[2][2]);
  quad(50+x, 160+y, 85+x, 160+y, 85+x, 200+y, 50+x, 200+y);
  quad(85+x, 160+y, 120+x, 160+y, 120+x, 200+y, 85+x, 200+y);
  
  // janela [3][0]
  fill(v[3][0], v[3][1], v[3][2]);
  quad(50+x, 220+y, 85+x, 220+y, 85+x, 260+y, 50+x, 260+y);
  quad(85+x, 220+y, 120+x, 220+y, 120+x, 260+y, 85+x, 260+y);
  
  // janela [4][0]
  fill(v[4][0], v[4][1], v[4][2]);
  quad(50+x, 280+y, 85+x, 280+y, 85+x, 320+y, 50+x, 320+y);
  quad(85+x, 280+y, 120+x, 280+y, 120+x, 320+y, 85+x, 320+y);
  
  // JANELAS À DIREITA, COORDENADA [x,1]
  // janela [0][1]
  fill(v[5][0], v[5][1], v[5][2]);
  quad(140+x, 40+y, 175+x, 40+y, 175+x, 80+y, 140+x, 80+y);
  quad(175+x, 40+y, 210+x, 40+y, 210+x, 80+y, 175+x, 80+y); 
  
  // janela [1][1]
  fill(v[6][0], v[6][1], v[6][2]);
  quad(140+x, 100+y, 175+x, 100+y, 175+x, 140+y, 140+x, 140+y);
  quad(175+x, 100+y, 210+x, 100+y, 210+x, 140+y, 175+x, 140+y);
  
  // janela [2][1]
  fill(v[7][0], v[7][1], v[7][2]);
  quad(140+x, 160+y, 175+x, 160+y, 175+x, 200+y, 140+x, 200+y);
  quad(175+x, 160+y, 210+x, 160+y, 210+x, 200+y, 175+x, 200+y);
  
  // janela [3][1]
  fill(v[8][0], v[8][1], v[8][2]);
  quad(140+x, 220+y, 175+x, 220+y, 175+x, 260+y, 140+x, 260+y);
  quad(175+x, 220+y, 210+x, 220+y, 210+x, 260+y, 175+x, 260+y);
  
  // janela [4][1]
  fill(v[9][0], v[9][1], v[9][2]);
  quad(140+x, 280+y, 175+x, 280+y, 175+x, 320+y, 140+x, 320+y);
  quad(175+x, 280+y, 210+x, 280+y, 210+x, 320+y, 175+x, 320+y);
  
    
  // TRONCO ÁRVORE
  fill(100, 59, 14);
  stroke(100, 59, 14);
  quad(380+x, 320+y, 420+x, 320+y, 430+x, 420+y, 370+x, 420+y);
  ellipse(400+x, 420+y, 60, 10);  
  fill(114, 83, 21);
  stroke(81, 59, 14);
  circle(390+x, 384+y, 20);
  fill(120, 83, 21);
  circle(389+x, 384+y, 10);
  fill(134, 97, 21);
  circle(388+x, 384+y, 4);
  
  // FOLHAS ÁRVORE
  stroke(0,0,0);
  fill(35, 168, 40);
  ellipse(400+x, 320+y, 200, 100);
  ellipse(400+x, 270+y, 180, 90);
  ellipse(400+x, 225+y, 160, 80);
  ellipse(400+x, 185+y, 140, 70);
  ellipse(400+x, 150+y, 120, 60);
  ellipse(400+x, 120+y, 100, 50);
  ellipse(400+x, 95+y, 80, 40);
  ellipse(400+x, 75+y,60, 20);
  ellipse(400+x, 65+y, 40, 10);
  ellipse(400+x, 60+y, 20, 5);
  ellipse(400+x, 57.5+y, 10, 2.5);
}

void mouseClicked(){
  rand = int(random(4));
  if(rand == 1 || rand == 3){
    va[0] = 255; va[1] = 255; va[2] = 255;
    vb = 0;
  
    val1[0] = 45; val2[0] = 175;
    val1[1] = 420; val2[1] = 420;
    val1[2] = 340; val2[2] = 340;
    val1[3] = 85; val2[3] = 220;
  }
  else{
    
    va[0] = 202; va[1] = 0; va[2] = 0;
    vb = 5;
  
    val1[0] = 85; val2[0] = 130;
    val1[1] = 420; val2[1] = 420;
    val1[2] = 340; val2[2] = 340;
    val1[3] = 130; val2[3] = 175;
  }
  
  for(i=0; i<10; i++){
    for(j=0; j<3; j++){
      if(j==2){
        v[i][j] = 0;
      }
      else{
        v[i][j] = 255;
      }
    }
  }
  for(i=0; i<3; i++){
    a = int(random(9));
    if(v[a][0]==0) i--;
    else{
      v[a][0] = 0;
      v[a][1] = 0;
      v[a][2] = 0;
    }
  }
}
