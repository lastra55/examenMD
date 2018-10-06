%Examen de Medio Curso: Servomecanismos
%José Rafael Costra Campos   #1554801
%Carlos David Ramos Macías   #1666829

%Ejercicio 1:
n=[1,10,100,500,1000,2000,4000,8000];
e=(1+(1./n)).^n
exp(1)

%Ejercicio 2:
A=[2,6;3,9]
B=[1,2;3,4]
C=[-5,5;5,3]
Z=[0,0;0,0];
C1=[A;Z;Z];
C2=[Z;B;Z];
C3=[Z;Z;C];
G=[C1,C2,C3]

%Ejercicio 3:
x=-10:0.1:10;
if (-10<=x<=-5);
    f=2+sin(x);
elseif (-5<x<2);
    f=exp(x);
else (2<=x<=10);
    f=log((x.^2)+1);
end
plot(x,f)
grid
title('Gráfica del ejercicio 3')
xlabel('x')
ylabel('f(x)')

%Ejercicio 4:
r=10; %<- Se especifica el valor del parámetro r.
%Usando la forma ax=b, donde x es el vector solución, se despeja:
a=[5,2*r,r;3,6,(2*r-1);2,(r-1),3*r];
b=[2;3;5];
solucion=inv(a)*b
%La solución será una matriz 3x1 donde se muestran los valores de
%"x", "y" y "z", respectivamente.

%Ejercicio 5:
f=zeros(1,50);
f(1)=0;
f(2)=1;
ra=zeros(1,50);
ra(1)=1;
ra(2)=1;
for i=3:50
    f(i)=f(i-2)+f(i-1);
    ra(i)=f(i-1)/f(i-2);
end
f(50)               %Último valor de la serie de Fibonacci.
ra                  %Vector matriz de la razón áurea.
(1+sqrt(5))/2       %Valor real de la razón áurea.