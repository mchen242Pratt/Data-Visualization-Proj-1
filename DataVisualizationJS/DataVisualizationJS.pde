JSONObject json, jsonRank, jsonUniv, jsonOverAllScore;
String url = "https://github.com/mchen242Pratt/Data-Visualization-Proj-1/blob/master/Data-files/Chinese-Universities-on-QS-World-University-Top-50-List.json";

void setup() {
  fullScreen(P3D);
  json = loadJSONObject(url).getJSONObject("Lists");

  PFont myFont = createFont("Helvetica.ttf",40);
}

void draw() {

  background(0);
  float z_nums;
  float a = width*0.9/32;
  float b = width*0.05;
  float b1 = width*0.96;
  float xyz_axis_h = height - height/15;
  float y_axis_len = 0.9*height - 0.9*height/80;
  float rank_space = 0.9*height/52;
  
  stroke(255, 65);
  strokeWeight(2.5);
  line(b, xyz_axis_h - y_axis_len, 0, b, xyz_axis_h, 0);
  line(b, xyz_axis_h, 0, b1, xyz_axis_h, 0);
  line(b, xyz_axis_h, 0, b, xyz_axis_h, -27*a);
  
  line(b+a*5, xyz_axis_h, 0, b+a*5, xyz_axis_h, -26*a);
  line(b+a*13, xyz_axis_h, 0, b+a*13, xyz_axis_h, -26*a);
  line(b+a*21, xyz_axis_h, 0, b+a*21, xyz_axis_h, -26*a);
  line(b+a*29, xyz_axis_h, 0, b+a*29, xyz_axis_h, -26*a);
  
  stroke(255,50);
  strokeWeight(1);
  
  for (int i = 0; i < 27; i++){
    z_nums = i*a; 
    line(b, xyz_axis_h, -z_nums, b+32*a, xyz_axis_h, -z_nums);
  }
  
  stroke(63,234,208);
  strokeWeight(2.5);
  
  //Peking University 2019
  line(b+a*5, xyz_axis_h - (y_axis_len - 30*rank_space), -a*8, b+a*2.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 30*rank_space), -a*8, b+a*2.5, xyz_axis_h, -a*10.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 30*rank_space), -a*8, b+a*7.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 30*rank_space), -a*8, b+a*7.5, xyz_axis_h, -a*10.5);
  
  //Tsinghua University 2019
  line(b+a*13, xyz_axis_h - (y_axis_len - 17*rank_space),-a*12, b+a*10.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 17*rank_space),-a*12, b+a*10.5, xyz_axis_h, -a*14.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 17*rank_space),-a*12, b+a*15.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 17*rank_space),-a*12, b+a*15.5, xyz_axis_h, -a*14.5);
   
  //The University of HK 2019
  line(b+a*21, xyz_axis_h - (y_axis_len - 25*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 25*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*7.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 25*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 25*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*7.5);
  
  //The HK University of Science & Technology 2019
  line(b+a*29, xyz_axis_h - (y_axis_len - 37*rank_space), -a*6, b+a*28, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 37*rank_space), -a*6, b+a*28, xyz_axis_h, -a*7);
  line(b+a*29, xyz_axis_h - (y_axis_len - 37*rank_space), -a*6, b+a*30, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 37*rank_space), -a*6, b+a*30, xyz_axis_h, -a*7);
  
  
  stroke(217, 186, 138);
  strokeWeight(2);
  
  //Peking University 2018
  line(b+a*5, xyz_axis_h - (y_axis_len - 38*rank_space),-a*8, b+a*2.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 38*rank_space),-a*8, b+a*2.5, xyz_axis_h, -a*10.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 38*rank_space),-a*8, b+a*7.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 38*rank_space),-a*8, b+a*7.5, xyz_axis_h, -a*10.5);
  
  //Tsinghua University 2018
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space),-a*12, b+a*10.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space),-a*12, b+a*10.5, xyz_axis_h, -a*14.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space),-a*12, b+a*15.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space),-a*12, b+a*15.5, xyz_axis_h, -a*14.5);
  
  //The University of HK 2018
  line(b+a*21, xyz_axis_h - (y_axis_len - 26*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 26*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*7.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 26*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 26*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*7.5);
  
  //The HK University of Science & Technology 2018
  line(b+a*29, xyz_axis_h - (y_axis_len - 30*rank_space), -a*6, b+a*28, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 30*rank_space), -a*6, b+a*28, xyz_axis_h, -a*7);
  line(b+a*29, xyz_axis_h - (y_axis_len - 30*rank_space), -a*6, b+a*30, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 30*rank_space), -a*6, b+a*30, xyz_axis_h, -a*7);
  
  stroke(70, 188, 255);
  
  //Peking University 2017
  line(b+a*5, xyz_axis_h - (y_axis_len - 39*rank_space),-a*8, b+a*2.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 39*rank_space),-a*8, b+a*2.5, xyz_axis_h, -a*10.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 39*rank_space),-a*8, b+a*7.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 39*rank_space),-a*8, b+a*7.5, xyz_axis_h, -a*10.5);
  
  //Tsinghua University 2017
  line(b+a*13, xyz_axis_h - (y_axis_len - 24*rank_space),-a*12, b+a*10.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 24*rank_space),-a*12, b+a*10.5, xyz_axis_h, -a*14.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 24*rank_space),-a*12, b+a*15.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 24*rank_space),-a*12, b+a*15.5, xyz_axis_h, -a*14.5);
  
  //The University of HK 2017
  line(b+a*21, xyz_axis_h - (y_axis_len - 27*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 27*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*7.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 27*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 27*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*7.5);
  
  //The HK University of Science & Technology 2017
  line(b+a*29, xyz_axis_h - (y_axis_len - 36*rank_space), -a*6, b+a*28, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 36*rank_space), -a*6, b+a*28, xyz_axis_h, -a*7);
  line(b+a*29, xyz_axis_h - (y_axis_len - 36*rank_space), -a*6, b+a*30, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 36*rank_space), -a*6, b+a*30, xyz_axis_h, -a*7);
  
  stroke(255);
  
  //Peking University 2016
  line(b+a*5, xyz_axis_h - (y_axis_len - 41*rank_space),-a*8, b+a*2.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 41*rank_space),-a*8, b+a*2.5, xyz_axis_h, -a*10.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 41*rank_space),-a*8, b+a*7.5, xyz_axis_h, -a*5.5);
  line(b+a*5, xyz_axis_h - (y_axis_len - 41*rank_space),-a*8, b+a*7.5, xyz_axis_h, -a*10.5);
  
  //Tsinghua University 2016
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space-8),-a*12, b+a*10.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space-8),-a*12, b+a*10.5, xyz_axis_h, -a*14.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space-8),-a*12, b+a*15.5, xyz_axis_h, -a*9.5);
  line(b+a*13, xyz_axis_h - (y_axis_len - 25*rank_space-8),-a*12, b+a*15.5, xyz_axis_h, -a*14.5);
  
  //The University of HK 2016
  line(b+a*21, xyz_axis_h - (y_axis_len - 30*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 30*rank_space),-a*9, b+a*19.5, xyz_axis_h, -a*7.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 30*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*10.5);
  line(b+a*21, xyz_axis_h - (y_axis_len - 30*rank_space),-a*9, b+a*22.5, xyz_axis_h, -a*7.5);
  
  //The HK University of Science & Technology 2016
  line(b+a*29, xyz_axis_h - (y_axis_len - 28*rank_space), -a*6, b+a*28, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 28*rank_space), -a*6, b+a*28, xyz_axis_h, -a*7);
  line(b+a*29, xyz_axis_h - (y_axis_len - 28*rank_space), -a*6, b+a*30, xyz_axis_h, -a*5);
  line(b+a*29, xyz_axis_h - (y_axis_len - 28*rank_space), -a*6, b+a*30, xyz_axis_h, -a*7);
 
}

public class Year
