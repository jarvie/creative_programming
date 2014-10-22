class peters_jarvie_creature extends Creature {
float agitation = 0;
 
void setup() {
    size(900, 900);
}
 
void setAgitation(float newAgitation) {
    agitation = newAgitation;
}
 
void draw(float x, float y) {
    background(3, 136, 253);
    stroke(255, 255, 0);
    fill(255, 255, 0);
    if (mouseX >= 450) background(12, 8, 121);
    if (mouseX >= 450) fill(255);
    if (mouseX >= 450) stroke(255);;
    setAgitation(map(mouseX, 0, width, 0, 1));
    
    
    //zon
    float phase = frameCount * 0.015;
    float phaseAddition = map(sin(phase), -1, 1, 0, 0.75);
    for(int i = 0; i < 10; i++){
        float x = sin(phase);
        float radius = map(x, -1, 1, 40, 200);
 
        
        ellipse(width - 200 , height - 700 , radius, radius);
        phase = phase + phaseAddition;
        phaseAddition += 0.1;
        
    
        
    }
    
    //wolk
    fill(255);
    stroke(255);
    if (mouseX >= 450) fill(12, 8, 121);
    if (mouseX >= 450) stroke(12, 8, 121);
    ellipse(150, 300, 80, 80);
    ellipse(200, 300, 90, 90);
    ellipse(250, 300, 90, 90);
    ellipse(300, 300, 80, 80); 
    
    //boom   
    fill(52, 49, 3);
    stroke(52, 49, 3);
    if (mouseX >= 450) fill(0);
    if (mouseX >= 450) stroke(0);
    rect(711, 700, 30, 150);
    
    fill(3,134,8);
    stroke(2, 90, 5);
    if (mouseX >= 450) fill(0);
    if (mouseX >= 450) stroke(0);
    ellipse(700, 700, 80, 80);
    ellipse(720, 680, 80, 80);
    ellipse(750, 700, 80, 80);
    
    
    
    
    //gras
    fill(79, 165, 0);
    stroke(79, 165, 0);
    if (mouseX >= 450) fill(0);
    if (mouseX >= 450) stroke(0);
    ellipse(450, 1050, 1500, 500);
    
    
    
}
}
