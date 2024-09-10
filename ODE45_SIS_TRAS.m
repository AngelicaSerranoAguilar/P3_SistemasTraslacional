

x0= [0 0 0 0]; %Vector de condiciones iniciales

[t,x]=ode45(@auto_res,[0 10], x0); % Llamamos a la funcion 

figure(1)
plot(t,x(:,1));
grid on
title("Masa 1");
xlabel("Tiempo");
ylabel("Posición");

figure(2)
plot(t,x(:,2));
grid on
title("Masa 2");
xlabel("Tiempo");
ylabel("Posición");

