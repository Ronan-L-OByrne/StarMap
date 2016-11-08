/* Name: Ronan O'Byrne; Student Number: C15332036
   
*/

// Setup
void setup()
{
    size(800, 800);
    
    loadData();
    
    for(int i=0; i<Info.size(); i++)
    {
        println(Info.get(i));
    }//end for
    
    Selected1 = Info.size()+1;
    Selected2 = Info.size()+1;
}//end setup()

// Global Variables
ArrayList<Star> Info = new ArrayList<Star>();
float Sx, Sy;
int   Selected1, Selected2;
float distance;

// Draw
void draw()
{
    int i, j;
    int sectx = (int)(width/12)+5;
    int secty = (int)(height/12)+5;
    int par = -5;
    
    background(0);
    stroke(150, 100, 150);
    fill(0);
    rect(50, 50, width-100, height-100);
    
    for(i=0; i<10; i++)
    {
        for(j=0; j<10; j++)
        {
            fill(0);
            rect(50+(sectx*(i)), 50+(secty*(j)), (width-100)/10, (height-100)/10);
        }//end for(j)
        fill(255);
        text(par, (50)+sectx*i, 30);
        text(par, 30, (50)+sectx*i);
        
        par++;
    }//end for(i)
    
    for(i=0; i<Info.size(); i++)
    {
        Sx = map(Info.get(i).Xg, -5, 5, 50, width-50 );
        Sy = map(Info.get(i).Yg, -5, 5, 50, height-50);
        
        noFill();
        stroke(255, 0 ,0);
        ellipse(Sx, Sy, Info.get(i).AbsMag, Info.get(i).AbsMag);
        
        line(Sx-10, Sy, Sx+10, Sy);
        line(Sx, Sy-10, Sx, Sy+10);
        
        textAlign(LEFT, CENTER);
        text(Info.get(i).DisplayName, Sx, Sy);
        
        if(Info.get(i).Pressed)
        {
            stroke(0, 255, 255);
            line(Sx, Sy, mouseX, mouseY);
        }//emd if
    }//end if
    
    fill(255);
    text(par, (50)+sectx*10, 30);
    text(par, 30, (50)+sectx*10);
    
    if((Selected1<Info.size() && Selected1 > 0) && (Selected2<Info.size() && Selected2 >0))
    {
        distance = (Info.get(Selected2).Xg - Info.get(Selected1).Xg)+(Info.get(Selected2).Yg - Info.get(Selected1).Yg);
                        
        distance = sqrt(distance);
           
        text("Distance from " + Info.get(Selected1).DisplayName + " to " + Info.get(Selected2).DisplayName + " is " + distance, 100, width-25);
        
    }
}//end draw()