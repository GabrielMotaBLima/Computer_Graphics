PImage img;
int tamanho = 450*225;

void setup () {
  size (450, 225);
  
  img = loadImage ("download.jpeg");
  
}

void draw () {
  image (img, 0, 0, img.width/2, img.height/2);

  
  int [][] matrix = new int[img.height / 2][img.width];
  int i, j, k = 0;
  
  for (i = 0; i < img.height/2; i++) {
    for (j = 0; j < img.width; j++) {
      matrix[i][j] = k;
      k++;
    }
  }  
  
  k = 0;
  loadPixels ();
  for(i = 0; i < img.height/2; i++) {
      for(j = 0 ; j < img.width; j++) {
         pixels[matrix[i][449-j]] = pixels[matrix[i][j]];
      }
  }  
  updatePixels ();
}
