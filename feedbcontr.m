s = tf('s');
K = 1;
s3_0 = 2.2/((54*10^-6)*s^2+(55*10^-3)*s+(1));
sys3_0 = tf(s3_0.Numerator,s3_0.Denominator);
figure(1); step(sys3_0); hold on;
s3 = 2.2/((54*10^-6)*s^2+(55*10^-3)*s+(K*2.2+1));
sys3 = tf(s3.Numerator,s3.Denominator);
[A,B,C,D] = tf2ss(cell2mat(sys3.Numerator),cell2mat(sys3.Denominator));
step(sys3); legend('sys3','sys3 with k gain');

s3_0ramp = 2.2/((54*10^-6)*s^3+(55*10^-3)*s^2+(1)*s);
sys3_0ramp = tf(s3_0ramp.Numerator,s3_0ramp.Denominator);
figure(2); step(sys3_0ramp); title('Ramp Response'); hold on;
s3_ramp = 2.2/((54*10^-6)*s^3+(55*10^-3)*s^2+(K*2.2+1)*s);
sys3_ramp = tf(s3_ramp.Numerator,s3_ramp.Denominator);
step(sys3_ramp); legend('sys3','sys3 with k gain');


