int score;
Table table;
String myName = " ";


class score {
 void highScore() { 
  if(state == 3){
   File f = new File (sketchPath("") + "HighScore.csv");
   if(!f.exists()) {
  table = new Table();
  table.addColumn("Nr");
  table.addColumn("Navn");
  table.addColumn("Score");
   }
   
  table = loadTable("HighScore.csv", "header,csv");
  TableRow newRow = table.addRow();
  newRow.setInt("Nr", table.getRowCount());
  newRow.setString("Navn", myName);
  newRow.setInt("Score", score);
  if(table.getRowCount() > 10){
    table.removeRow(0);
   
    }
  saveTable(table, "HighScore.csv");
  
   }
  }
  
 }