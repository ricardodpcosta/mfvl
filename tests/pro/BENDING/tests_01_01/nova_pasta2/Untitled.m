clc;


B1=[(1/0.2)*quad(@(x)exp(x),0.2,0.4)-(1/0.2)*quad(@(x)exp(x),0.0,0.2);...
    (1/0.2)*quad(@(x)exp(x),0.4,0.6)-(1/0.2)*quad(@(x)exp(x),0.0,0.2);...
    (1/0.2)*quad(@(x)exp(x),0.6,0.8)-(1/0.2)*quad(@(x)exp(x),0.0,0.2);...
    (1/0.2)*quad(@(x)exp(x),0.8,1.0)-(1/0.2)*quad(@(x)exp(x),0.0,0.2)];

B2=[(1/0.2)*quad(@(x)exp(x),0.0,0.2)-(1/0.2)*quad(@(x)exp(x),0.2,0.4);...
    (1/0.2)*quad(@(x)exp(x),0.4,0.6)-(1/0.2)*quad(@(x)exp(x),0.2,0.4);...
    (1/0.2)*quad(@(x)exp(x),0.6,0.8)-(1/0.2)*quad(@(x)exp(x),0.2,0.4);...
    (1/0.2)*quad(@(x)exp(x),0.8,1.0)-(1/0.2)*quad(@(x)exp(x),0.2,0.4)];

B3=[(1/0.2)*quad(@(x)exp(x),0.2,0.4)-(1/0.2)*quad(@(x)exp(x),0.4,0.6);...
    (1/0.2)*quad(@(x)exp(x),0.6,0.8)-(1/0.2)*quad(@(x)exp(x),0.4,0.6);...
    (1/0.2)*quad(@(x)exp(x),0.0,0.2)-(1/0.2)*quad(@(x)exp(x),0.4,0.6);...
    (1/0.2)*quad(@(x)exp(x),0.8,1.0)-(1/0.2)*quad(@(x)exp(x),0.4,0.6)];

B4=[(1/0.2)*quad(@(x)exp(x),0.4,0.6)-(1/0.2)*quad(@(x)exp(x),0.6,0.8);...
    (1/0.2)*quad(@(x)exp(x),0.8,1.0)-(1/0.2)*quad(@(x)exp(x),0.6,0.8);...
    (1/0.2)*quad(@(x)exp(x),0.2,0.4)-(1/0.2)*quad(@(x)exp(x),0.6,0.8);...
    (1/0.2)*quad(@(x)exp(x),0.0,0.2)-(1/0.2)*quad(@(x)exp(x),0.6,0.8)];

B5=[(1/0.2)*quad(@(x)exp(x),0.6,0.8)-(1/0.2)*quad(@(x)exp(x),0.8,1.0);...
    (1/0.2)*quad(@(x)exp(x),0.4,0.6)-(1/0.2)*quad(@(x)exp(x),0.8,1.0);...
    (1/0.2)*quad(@(x)exp(x),0.2,0.4)-(1/0.2)*quad(@(x)exp(x),0.8,1.0);...
    (1/0.2)*quad(@(x)exp(x),0.0,0.2)-(1/0.2)*quad(@(x)exp(x),0.8,1.0)];

R1=A1*B1
R2=A2*B2
R3=A3*B3
R4=A4*B4
R5=A5*B5