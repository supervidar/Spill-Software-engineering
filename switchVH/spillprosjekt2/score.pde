

int score;
Table table;
String myName = " ";
int hs;

class score {
 void highScore() {                                                 // Looks if there are a table file 
 if(state == 2){                                                   // and creates if not.
 File f = new File ("HighScore.csv");
 if(!f.exists()) {
 table = new Table();
 table.addColumn("Nr");
 table.addColumn("Navn");
 table.addColumn("Poeng");
 }
   
 table = loadTable("HighScore.csv", "header,csv");               // Adds new score if good enough to table
 table.setColumnType("Poeng", Table.INT);
 TableRow newRow = table.addRow();
 newRow.setInt("Nr", table.getRowCount() - 1);
 newRow.setString("Navn", myName);
 newRow.setInt("Poeng", score);
 newRow.setInt("Level", level);
 if(table.getRowCount() > 6){
 table.removeRow(5);
 }
 table.sortReverse("Poeng");
 saveTable(table, "HighScore.csv");
 }
 }
 void showScore() {                                               // Shows the Highscore table
 table = loadTable("HighScore.csv", "header");
 for (TableRow row : table.rows()) {
  
 //int nr = row.getInt("Nr");
 String navn = row.getString("Navn");
 int score = row.getInt("Poeng");
 int lev = row.getInt("Level");
 hs = hs + 40;
 if(hs > 240) 
 {
   hs = 40;
   
 }
 fill(0);
 textSize(150);
 text("Highscores",100,50);
 textSize(100);
 text("Navn",50,90);
 text("Poeng",220,90);
 text("Level",350,90);
 textSize(80);
 text(navn,50,120 + hs);
 text(score,220,120 + hs);
 text(lev,370,120 + hs);
 //noLoop();
 }
 }
 void scoreLevelUpdate() {
   noStroke();
     photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 2); 
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 50);
      photoSky = loadImage("tavle.png");    
      image(photoSky, 1350, 98); 
      fill(255);
     textSize(60);
     text("Level: " + level, 1420, 30);
     textSize(60);
     text("Poeng: " + score, 1420, 80);
     textSize(60);
     text("Liv: " + life, 1420, 130);
 }
 }