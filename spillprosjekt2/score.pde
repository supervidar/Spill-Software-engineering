

int score;
Table table;
String myName = " ";
int hs;

class score {
 void highScore() {                                                 // Looks if there are a table file 
 if(state == 3){                                                   // and creates if not.
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
 if(table.getRowCount() > 8){
 table.removeRow(7);
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
 
 hs = hs + 40;
 if(hs > 340) 
 {
   hs = 40;
 }
 fill(0);
 textSize(150);
 text("Highscores",100,60);
 textSize(100);
 text(navn,80,90 + hs);
 text(score,340,90 + hs);
 //noLoop();
 }
 }
}