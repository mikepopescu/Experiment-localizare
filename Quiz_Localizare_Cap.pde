// Global variables
import processing.sound.*;
import static javax.swing.JOptionPane.*;
import ddf.minim.*;
import controlP5.*;
ControlP5 controlP5;
ControlP5 distP5;
//float radius = 50.0;
int i = 0;
boolean runonce=false;
Table table;
SoundFile file;
Minim minim;
AudioMetaData meta;
AudioPlayer[] 
track = new AudioPlayer[75];
RadioButton r, d;
String radiovalue;
String depthval;
String id;
String sex;
String varsta;
int tracksleft;
final StringList ids = new StringList( new String[] {} );


// Setup the Processing Canvas
void setup() {
  size( 800, 700 );
  strokeWeight( 3 );
  frameRate( 15 );


   ///////////////////// SoundFiles ///////////////////////
    
  
    minim = new Minim(this);
      //this loads mysong.wav from the data folder

      track[0] = minim.loadFile("data/Cap/Cap_Sine_1m_0.wav");
      track[1] = minim.loadFile("data/Cap/Cap_Fem_2m_330.wav");
      track[2] = minim.loadFile("data/Cap/Cap_Drums_4m_60.wav");
      track[3] = minim.loadFile("data/Cap/Cap_Sine_2m_240.wav");
      track[4] = minim.loadFile("data/Cap/Cap_Drums_1m_0.wav");
      track[5] = minim.loadFile("data/Cap/Cap_Fem_4m_60.wav");
      track[6] = minim.loadFile("data/Cap/Cap_Guitar_1m_240.wav");
      track[7] = minim.loadFile("data/Cap/Cap_Fem_1m_0.wav");
      track[8] = minim.loadFile("data/Cap/Cap_Drums_2m_240.wav");
      track[9] = minim.loadFile("data/Cap/Cap_Fem_4m_90.wav");
      track[10] = minim.loadFile("data/Cap/Cap_Guitar_2m_240.wav");
      track[11] = minim.loadFile("data/Cap/Cap_Sine_2m_90.wav");
      track[12] = minim.loadFile("data/Cap/Cap_Drums_4m_240.wav");
      track[13] = minim.loadFile("data/Cap/Cap_Sine_4m_0.wav");
      track[14] = minim.loadFile("data/Cap/Cap_Drums_1m_240.wav");
      track[15] = minim.loadFile("data/Cap/Cap_Sine_2m_330.wav");
      track[16] = minim.loadFile("data/Cap/Cap_Guitar_1m_90.wav");
      track[17] = minim.loadFile("data/Cap/Cap_Fem_1m_240.wav");
      track[18] = minim.loadFile("data/Cap/Cap_Drums_4m_0.wav");
      track[19] = minim.loadFile("data/Cap/Cap_Fem_1m_90.wav");
      track[20] = minim.loadFile("data/Cap/Cap_Sine_4m_240.wav");
      track[21] = minim.loadFile("data/Cap/Cap_Drums_4m_330.wav");
      track[22] = minim.loadFile("data/Cap/Cap_Fem_2m_180.wav");
      track[23] = minim.loadFile("data/Cap/Cap_Drums_2m_330.wav");
      track[24] = minim.loadFile("data/Cap/Cap_Guitar_1m_180.wav");
      track[25] = minim.loadFile("data/Cap/Cap_Sine_2m_0.wav");
      track[26] = minim.loadFile("data/Cap/Cap_Fem_4m_0.wav");
      track[27] = minim.loadFile("data/Cap/Cap_Guitar_4m_90.wav");
      track[28] = minim.loadFile("data/Cap/Cap_Drums_1m_330.wav");
      track[29] = minim.loadFile("data/Cap/Cap_Sine_4m_60.wav");
      track[30] = minim.loadFile("data/Cap/Cap_Drums_2m_0.wav");
      track[31] = minim.loadFile("data/Cap/Cap_Guitar_2m_330.wav");
      track[32] = minim.loadFile("data/Cap/Cap_Drums_1m_180.wav");
      track[33] = minim.loadFile("data/Cap/Cap_Sine_4m_180.wav");
      track[34] = minim.loadFile("data/Cap/Cap_Guitar_2m_90.wav");
      track[35] = minim.loadFile("data/Cap/Cap_Fem_4m_330.wav");
      track[36] = minim.loadFile("data/Cap/Cap_Guitar_1m_60.wav");
      track[37] = minim.loadFile("data/Cap/Cap_Sine_1m_90.wav");
      track[38] = minim.loadFile("data/Cap/Cap_Guitar_4m_240.wav");
      track[39] = minim.loadFile("data/Cap/Cap_Drums_4m_90.wav");
      track[40] = minim.loadFile("data/Cap/Cap_Fem_2m_240.wav");
      track[41] = minim.loadFile("data/Cap/Cap_Sine_1m_180.wav");
      track[42] = minim.loadFile("data/Cap/Cap_Guitar_4m_0.wav");
      track[43] = minim.loadFile("data/Cap/Cap_Fem_2m_60.wav");
      track[44] = minim.loadFile("data/Cap/Cap_Drums_2m_180.wav");
      track[45] = minim.loadFile("data/Cap/Cap_Fem_1m_330.wav");
      track[46] = minim.loadFile("data/Cap/Cap_Guitar_1m_330.wav");
      track[47] = minim.loadFile("data/Cap/Cap_Sine_2m_60.wav");
      track[48] = minim.loadFile("data/Cap/Cap_Fem_2m_90.wav");
      track[49] = minim.loadFile("data/Cap/Cap_Guitar_2m_60.wav");
      track[50] = minim.loadFile("data/Cap/Cap_Fem_1m_180.wav");
      track[51] = minim.loadFile("data/Cap/Cap_Guitar_4m_60.wav");
      track[52] = minim.loadFile("data/Cap/Cap_Fem_4m_180.wav");
      track[53] = minim.loadFile("data/Cap/Cap_Guitar_2m_0.wav");
      track[54] = minim.loadFile("data/Cap/Cap_Sine_1m_60.wav");
      track[55] = minim.loadFile("data/Cap/Cap_Drums_1m_90.wav");
      track[56] = minim.loadFile("data/Cap/Cap_Guitar_4m_330.wav");
      track[57] = minim.loadFile("data/Cap/Cap_Sine_4m_90.wav");
      track[58] = minim.loadFile("data/Cap/Cap_Guitar_4m_180.wav");
      track[59] = minim.loadFile("data/Cap/Cap_Drums_1m_60.wav");
      track[60] = minim.loadFile("data/Cap/Cap_Sine_4m_330.wav");
      track[61] = minim.loadFile("data/Cap/Cap_Drums_2m_60.wav");
      track[62] = minim.loadFile("data/Cap/Cap_Guitar_1m_0.wav");
      track[63] = minim.loadFile("data/Cap/Cap_Sine_1m_330.wav");
      track[64] = minim.loadFile("data/Cap/Cap_Drums_4m_180.wav");
      track[65] = minim.loadFile("data/Cap/Cap_Fem_1m_60.wav");
      track[66] = minim.loadFile("data/Cap/Cap_Drums_2m_90.wav");
      track[67] = minim.loadFile("data/Cap/Cap_Sine_2m_180.wav");
      track[68] = minim.loadFile("data/Cap/Cap_Fem_4m_240.wav");
      track[69] = minim.loadFile("data/Cap/Cap_Guitar_2m_180.wav");
      track[70] = minim.loadFile("data/Cap/Cap_Sine_1m_240.wav");
      track[71] = minim.loadFile("data/Cap/Cap_Fem_2m_0.wav");
      track[72] = minim.loadFile("data/Cap/Cap_Fem_2m_0.wav"); //for exist loop only

   
   meta = track[i].getMetaData();
      

////////////////////// CSV FILE CODE /////////////////////
     table = new Table();
  
  table.addColumn("id");
  table.addColumn("Nume");
  table.addColumn("Sex");
  table.addColumn("Varsta");
  table.addColumn("Plan Orizontal");
  table.addColumn("Plan Vertical");
  table.addColumn("Adancime");
  table.addColumn("Audio File");
  

     ///////////////////////// ID BOX /////////////////////////
   
     println(ids);
 
id = showInputDialog("Introdu numele tau");
 
  if (id == null)  
  exit();
 
  else if ("".equals(id))
    showMessageDialog(null, "Nu ai introdus numele!", 
    "Alert", ERROR_MESSAGE);
 
  else {
    showMessageDialog(null, "Numele \"" + id + "\" a fost adaugat cu succes!", 
    "Info", INFORMATION_MESSAGE);
    ids.append(id);
  }
  
sex = showInputDialog("M / F?");
varsta = showInputDialog("Varsta?");
  
  table.setString(0, "Nume", id); 
  table.setString(0, "Sex", sex);
  table.setString(0, "Varsta", varsta); 
  saveTable(table, "data/"+id+"_chestionar_cap.csv");
  //println("saved "+id+"_new.csv"); //confirmation


                //////////////// RADIO BOX ELEVATIE ///////////////////  
                      
  controlP5 = new ControlP5(this);
  // CheckBox = multiple choice
  // RadioButton = single choice
  // Radio has been deprecated, should not be used anymore
  r = controlP5.addRadioButton("radio",715, 280);
  r.setId(12);
  r.setItemHeight(20);
  r.setItemWidth(20);
  r.setItemsPerRow(1);
  r.setSpacingColumn(5);
  r.setSpacingRow(15);
r.setColorForeground(color(51, 153, 51));
r.setColorBackground(color(255, 153, 0));

  r.addItem("SUS", 1);
  r.addItem("CENTRU", 2);
  r.addItem("JOS", 3);
  r.setColorActive(color(51, 153, 51));
  r.setColorLabel(color(0, 0, 0));//text color
  
    //r.activate(1); //Default MIDLE

                //////////////// RADIO BOX Distanta ///////////////////  
                      
  distP5 = new ControlP5(this);
  // CheckBox = multiple choice
  // RadioButton = single choice
  // Radio has been deprecated, should not be used anymore
  d = distP5.addRadioButton("radio",35, 280);
  d.setId(13);
  d.setItemHeight(20);
  d.setItemWidth(20);
  d.setItemsPerRow(1);
  d.setSpacingColumn(5);
  d.setSpacingRow(15);
d.setColorForeground(color(51, 153, 51));
d.setColorBackground(color(255, 153, 0));

  d.addItem("APROPIAT", 1);
  d.addItem("DEPARTE", 2);
  d.addItem("FOARTE DEPARTE", 3);
  d.setColorActive(color(51, 153, 51));
  d.setColorLabel(color(0, 0, 0));//text color
  
    //d.activate(0); //Default Apropiat

 


}



///////////////////// Main DRAW loop /////////////////////

void draw() {


  // Fill canvas grey
    background( 200 );
    
  // Loads Image
  PImage img;
img = loadImage("circle-degrees_cap.jpg");
imageMode(CORNER);
image(img, 0,0);
    
 
  // DISPLAY TEXT
  fill(0, 102, 153); // Text color
  tracksleft = 72-i;
  text("Tracks Left: " + tracksleft+"/72", 47, 170); //afiseaza cate track mai sunt ramase

  //text("File Name: " + meta.fileName(), 35, 170); //afiseaza numele fisierelor

  
 
  // Set fill-color to orange
  fill( 255, 153, 51 );


  // Draw circle
         
         ellipse( 400, 160, 30, 30 ); //0
        
         ellipse( 529, 194, 30, 30 ); //30
         
         ellipse( 626, 289, 30, 30 ); //60
         
         ellipse( 660, 415, 30, 30 ); //90
         
         ellipse( 629, 540, 30, 30 ); //120
         
         ellipse( 531, 634, 30, 30 ); //150
         
         ellipse( 399, 669, 30, 30 ); //180
         
         ellipse( 270, 635, 30, 30 ); //210
         
         ellipse( 172, 540, 30, 30 ); //240
         
         ellipse( 138, 415, 30, 30 ); //270
         
         ellipse( 177, 287, 30, 30 ); //300
         
         ellipse( 266, 194, 30, 30 ); //330
              
   //text("x: "+mouseX+" y: "+mouseY, 10, 15); //see x,y coordinates of cursor on screen
      
    }

//// Radio Box Print   
  void controlEvent(ControlEvent theEvent) {
  
    if(theEvent.isFrom(r)) {

     
        if(theEvent.getValue() == 1.0){
          radiovalue = "SUS";
          println("\nRadioValue ", radiovalue);
            }
            
        if(theEvent.getValue() == 2.0){
        radiovalue = "CENTRU";
         println("\nRadioValue ", radiovalue);
            }
                        
        if(theEvent.getValue() == 3.0){
        radiovalue = "JOS";
         println("\nRadioValue ", radiovalue);
            }
         
      
  }
  
  ///
  
  
      if(theEvent.isFrom(d)) {

     
        if(theEvent.getValue() == 1.0){
          depthval = "APROAPE";
          println("\nDepthValue ", depthval);
            }
            
        if(theEvent.getValue() == 2.0){
        depthval = "DEPARTE";
         println("\nDepthValue ", depthval);
            }
                        
        if(theEvent.getValue() == 3.0){
        depthval = "FOARTE DEPARTE";
         println("\nDepthValue ", depthval);
            }
        
  }
  
  ////
  
}
    
    
  // Mouse click event
  void mousePressed() {
                    
   
         if (mouseX > 55 && mouseX < 92 &&
         mouseY > 110    &&  mouseY < 146) {
         track[i].play();
         track[i].rewind();          
         print("PLAY"); 
         }
            
    
         if (mouseX > 109 && mouseX < 147 &&
         mouseY > 108    &&  mouseY < 146
         && track[i].position() == track[i].length() ) {
                         
              i = i+1;
              print("NEXT"); 
          meta = track[i].getMetaData();
          
              TableRow newRow = table.addRow();
        // newRow.setString("Audio File", meta.fileName()); //audiofile 
         newRow.setString("Plan Vertical", radiovalue); //elevatie
         newRow.setString("Adancime", depthval); //adancime
         newRow.setString("Nume", "Last Comand");
          
         }
   
              //////////  Break Alert Box //////////////
          if (i == 36 && runonce == false) {
           
           runonce = true;
           println ("Run Once");
           
           showMessageDialog (null, "Ia o pauza!", 
                                "Alert", ERROR_MESSAGE);
            println ("Break Time");
          }
          
           //////////  Exit Loop Alert Box //////////////
       if (i == 72) {
           
           showMessageDialog (null, "Final!", 
                                "Alert", ERROR_MESSAGE);
            println ("final stop");
            track[i].close(); 
            exit();
              }
       
   
   
  if (mouseX > 383 && mouseX < 417 &&
     mouseY > 143    &&  mouseY < 176) {
      stroke(51, 153, 51);
      print("0°");
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "0 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime

}

  if (mouseX > 513 && mouseX < 546 &&
     mouseY > 177    &&  mouseY < 211) {
      stroke(51, 153, 51);
      print("30°");
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "30 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime


}

  if (mouseX > 609 && mouseX < 644 &&
     mouseY > 271    &&  mouseY < 309) {
      stroke(51, 153, 51);
      print("60°");    

     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "60 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime

     
}

  if (mouseX > 644 && mouseX < 677 &&
     mouseY > 398    &&  mouseY < 432) {
      stroke(51, 153, 51);
      print("90°");    
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "90 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime

      
}

  if (mouseX > 614 && mouseX < 646 &&
     mouseY > 523    &&  mouseY < 557) {
      stroke(51, 153, 51);
      print("120°");    
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "120 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime

}

  if (mouseX > 514 && mouseX < 548 &&
     mouseY > 617    &&  mouseY < 650) {
      stroke(51, 153, 51);
      print("150°");    
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "150 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime
}

  if (mouseX > 383 && mouseX < 416 &&
     mouseY > 653    &&  mouseY < 685) {
      stroke(51, 153, 51);
      print("180°");    
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "180 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime
}

  if (mouseX > 254 && mouseX < 287 &&
     mouseY > 619    &&  mouseY < 651) {
      stroke(51, 153, 51);
      print("210°");
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "210 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime
}

  if (mouseX > 155 && mouseX < 189 &&
     mouseY > 523    &&  mouseY < 557) {
      stroke(51, 153, 51);
      print("240°");
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "240 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime
}

  if (mouseX > 121 && mouseX < 154 &&
     mouseY > 398    &&  mouseY < 431) {
      stroke(51, 153, 51);
      print("270°");
           
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "270 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime
}

  if (mouseX > 161 && mouseX < 193 &&
     mouseY > 270    &&  mouseY < 303) {
      stroke(51, 153, 51);
      print("300°");
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "300 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime
}

  if (mouseX > 250 && mouseX < 282 &&
     mouseY > 177    &&  mouseY < 211) {
      stroke(51, 153, 51);
      print("330°");
      
     TableRow newRow = table.addRow();
     newRow.setInt("id", table.getRowCount() -1);
     newRow.setString("Plan Orizontal", "330 grade");
     newRow.setString("Audio File", meta.fileName()); //audiofile 
     newRow.setString("Plan Vertical", radiovalue); //elevatie
     newRow.setString("Adancime", depthval); //adancime
}

saveTable(table, "data/"+id+"_chestionar_cap.csv");

}


void mouseReleased () {

  stroke(0); 
}
