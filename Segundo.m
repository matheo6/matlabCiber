clc
clear all
close all
%Definicion de transf func tf
num = [5];
den = [1 3 9];
Gs = tf(num,den)
%respuesta al paso
step(Gs)
grid on
%parametros del sistema
K_ = Gs.Numerator{1,1}(3) / Gs.Denominator{1,1}(3)
Wn = sqrt(Gs.Denominator{1,1}(3))
z = Gs.Denominator{1,1}(2)/(2*Wn)
%mas parametros
sigma = z*Wn
Wd = Wn*sqrt(1-z^2)
Tao = 1/sigma
Tn = 2*pi/Wn
%definicion de respuesta
tp = pi/Wd
Mp = exp(-sigma*pi/Wd)
ts2 = 4*Tao