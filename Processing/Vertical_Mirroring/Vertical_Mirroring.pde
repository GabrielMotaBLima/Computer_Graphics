PImage img;
int tamanho = 225*225;

void setup () {
  size (225, 450);
  
  img = loadImage ("download.jpeg");
  int [][] matrix;
  
}

void draw () {
  image (img, 0, 0, img.width/2, img.height/2);

  
  int [][] matrix = new int[img.height][img.width / 2];
  int i, j, k=0;
  
  // loadPixels ();
  for(i = 0; i < img.height; i++) {
    for(j = 0; j < img.width/2; j++) {
       matrix[i][j] = k;
       k++;
    }
  }
  
  k = 0;
  loadPixels ();
  for(i = (img.height/2) - 1; i > -1; i--) {
      for(j = 0; j < img.width/2; j++) {
         pixels[tamanho + k] = pixels[matrix[i][j]];
         k++;
      }
  }  
  updatePixels ();
}
