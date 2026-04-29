% Definir el número de meses a simular
n = 12; 

% Inicializar el vector de población con ceros
conejos = zeros(1, n);

% Condiciones iniciales: 
% Mes 1: Una pareja joven
% Mes 2: La pareja madura
conejos(1) = 1;
conejos(2) = 1;

% Bucle para calcular la sucesión: F(n) = F(n-1) + F(n-2)
for i = 3:n
    conejos(i) = conejos(i-1) + conejos(i-2);
end

% Mostrar los resultados en la consola
disp('Mes | Parejas de conejos');
disp([(1:n)', conejos']);

% Graficar el crecimiento
plot(1:n, conejos, '-or', 'LineWidth', 2, 'MarkerSize', 8);
grid on;
title('Crecimiento de Población de conejos (Sucesión de Fibonacci)');
xlabel('Meses');
ylabel('Número de Parejas');