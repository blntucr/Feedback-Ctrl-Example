clc;close all;clear all
k=[10 20 50 100];
h=length(k)
for i=1:h
sys1=tf([11 k(i)],[1]);
sys2=tf([1],[1 1 0]);
sys3=series(sys1,sys2);
sys4=feedback(sys3,[1]);
subplot (h,1,i)
step(sys4);
title(['k=',num2str(k(i))]);
disp(['k=',num2str(k(i))]);
stepinfo(sys4)
end