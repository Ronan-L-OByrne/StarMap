class Star
{
    int      Hab;
    String   DisplayName;
    float    Distance;
    float    Xg, Yg, Zg;
    float    AbsMag;
    boolean  Pressed;
    
    Star(TableRow row)
    {
        this.Hab         = row.getInt(2);
        this.DisplayName = row.getString(3);
        this.Distance    = row.getFloat(12);
        this.Xg          = row.getFloat(13);
        this.Yg          = row.getFloat(14);
        this.Zg          = row.getFloat(15);
        this.AbsMag      = row.getFloat(16);
    }//end star()
    
    String toString()
    {
        return Hab + "\t" + DisplayName + "\t" + Distance + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
    }//end toString
}//end class Star

void loadData()
{
    Table t = loadTable("HabHYG15ly.csv");
    
    for(int i=1; i<t.getRowCount(); i++)
    {
        TableRow row = t.getRow(i);
        
        Star cur = new Star(row);
        
        Info.add(cur);
    }//end for
}//end loadData