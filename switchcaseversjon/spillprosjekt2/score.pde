<<<<<<< HEAD
processing.data.Table table;
=======

Table table;
>>>>>>> origin/master

class score {
 void highScore() { 
   File f = new File (sketchPath("") + "HighScore.csv");
   if(!f.exists()) {
  table = new Table();
  table.addColumn("Nr");
  table.addColumn("Navn");
  table.addColumn("Score");
   }
  else {
  table = loadTable("HighScore.csv", "header,csv");
  TableRow newRow = table.addRow();
  newRow.setInt("Nr", table.getRowCount());
  newRow.setString("Navn", myName);
  newRow.setInt("Score", score);
  
  saveTable(table, "HighScore.csv");
  }
 }
}