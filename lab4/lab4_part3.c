extern void fill_bitmap(unsigned char arg1);
extern void draw_pixel(unsigned char  arg2, int y, int x);

void rectangle(unsigned char background_color, unsigned char line_color, int left, int top, int right, int bottom){
  fill_bitmap(background_color);
  int a = left;
  int b = top;
  while(a<=right){
    draw_pixel(line_color, top, a);
    draw_pixel(line_color, bottom, a);
    a++;
  }
  while(b<=bottom){
    draw_pixel(line_color, b, left);
    draw_pixel(line_color, b, right);
    b++;
  }
}

void main (void){
  rectangle(0x88,0x77,1,8,23,29);
}