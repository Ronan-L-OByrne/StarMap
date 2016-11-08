void mousePressed()
{
    float curX, curY;
    
    if(mouseButton == LEFT)
    {
        if(Selected1 > Info.size() || Selected1 < 0)
        {
            for(int i=0; i<Info.size(); i++)
            {
                curX = map(Info.get(i).Xg, -5, 5, 50, width-50 );
                curY = map(Info.get(i).Yg, -5, 5, 50, height-50);
                
                if(mouseX > curX-Info.get(i).AbsMag && mouseY > curY-Info.get(i).AbsMag && mouseX < curX+Info.get(i).AbsMag && mouseY < curY+Info.get(i).AbsMag )
                {
                    Info.get(i).Pressed = true;
                    Selected1 = i;
                }//end if
            }//end for
        }//end if
        else if(Selected1 < Info.size() && Selected1 > 0)
        {
           for(int i=0; i<Info.size(); i++)
            {
                curX = map(Info.get(i).Xg, -5, 5, 50, width-50 );
                curY = map(Info.get(i).Yg, -5, 5, 50, height-50);
                
                if(mouseX > curX-Info.get(i).AbsMag && mouseY > curY-Info.get(i).AbsMag && mouseX < curX+Info.get(i).AbsMag && mouseY < curY+Info.get(i).AbsMag )
                {
                    Selected2 = i;
                    
                }//end if
            }//end for
        }//end else if
    }//end if
    if(mouseButton==RIGHT)
    {
        Info.get(Selected1).Pressed = false;
        Info.get(Selected2).Pressed = false;
        
        Selected1 = Info.size()+1;
        Selected2 = Info.size()+1;
    }//end if
}//end mousePressed()