
clear ; 
clc ;
x=[1110]; //target
tx =[0 0 1 0]; //input //training
w1 =(2*x ' -1);
w2 =(2*x -1) ;
w=w1*w2; // creation of weights
for i =1:4 
    w(i,i)=0; 
    end
// testing
con =1;
y =tx; //assignment of input
epoch=0;
while con
up =[4 2 1 3]; 
epoch=epoch+1; 
for i =1:4
yin(up(i))=tx(up(i))+y*w(1:4 , up(i)); //calculate net input
if yin (up(i)) >0
y(up(i)) =1; // application of activation function
end
end
disp("The epoch number", epoch); 
disp ("ouput in loop",y);
if y==x
disp ( ' Convergence e has been o b t a i n e d ' ); disp ( 'The Converged Output ' );
disp (y);
disp("epoch number", epoch); 
con =0;
end
end

