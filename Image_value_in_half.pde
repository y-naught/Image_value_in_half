PImage img;
PImage img2;
PGraphics g;
int count = 100;

void setup(){
  size(100,100);
  img = loadImage("FB6A0660.jpg");
  img2 = createImage(img.width, img.height, RGB);
  
  for(int k = count; k > 0; k--){
  img.loadPixels();
  img2.loadPixels();
  for(int i = 0; i < img.width; i++){
   for(int j = 0;j < img.height; j++){
    img2.pixels[i + j * img.width] = img.pixels[i + j * img.width] * k / 100;
   }
  }
  img2.updatePixels();
  g = createGraphics(img.width, img.height);
  g.beginDraw();
  g.image(img2, 0, 0);
  g.endDraw();
  g.save("FB6A0660" + k + ".jpg");
  }
}