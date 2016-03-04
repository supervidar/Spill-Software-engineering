int score;
Table table;
String myName = " ";
 int hs;

class score {
 void highScore() { 
  if(state == 3){
   File f = new File (sketchPath("") + "scoreListe.csv");
   if(!f.exists()) {
  table = new Table();
  table.addColumn("Nr");
  table.addColumn("Navn");
  table.addColumn("Poeng");
   }
   
  table = loadTable("scoreListe.csv", "header,csv");
  TableRow newRow = table.addRow();
  newRow.setInt("Nr", table.getRowCount());
  newRow.setString("Navn", myName);
  newRow.setInt("Poeng", score);
  if(table.getRowCount() > 10){
    table.removeRow(10);
   
    }
  saveTable(table, "scoreListe.csv");
  
   }
  }
  
 void showScore() {
   table = loadTable("scoreListe.csv", "header");
  
  for (TableRow row : table.rows()) {
  
    int nr = row.getInt("Nr");// + "\n");
    String navn = row.getString("Navn");// + "\n");
    int score = row.getInt("Poeng");// + "\n");
    hs = hs +40;
    fill(0);
    textSize(100);
    text(nr + "   " + navn + "   " + score ,100,100 + hs);
    noLoop();
   
    
  }
}
   
   
 }