function dx=auto_res(t,x) %Definimos la funcion ODE45

%Parametros iniciales
m1=290; 
b1=1000;  
m2=59; 
k1=16182; 
f=0; 
k2=19000; 
z=0.05*sin(0.5*pi*t);

%Ecuaciones del sistema x(1)=x1, x(2)=x2
dx=zeros(4,1); % Matriz para guardar datos

dx(1)=x(3); %Primera derivada x1
dx(3)=(1/m1)*(f-(b1*x(3))+(b1*x(4))-(k1*x(1))+(k1*x(2)));  %Segunda derivada x1

dx(2)=x(4);  %Primera derivada x2
dx(4)=(1/m2)*(-f+(k2*z)+(b1*x(3))-(b1*x(4))+(k1*x(1))-((k1+k2)*x(2)));  %Segunda derivada x2 

