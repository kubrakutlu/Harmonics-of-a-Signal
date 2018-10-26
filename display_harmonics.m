a_k=zeros(1,15);
for k=-7:1:7
a=(1+ exp(-1i*k*((2*pi)/15))-exp(-1i*k*((28*pi)/15)))/15;
a_k(k+8)=a;
end

x=zeros(7,40);

    for i=0:2:6
        figure
    for k=-i:1:i 
        for n=-20:1:19
x(i+1,n+21)= x(i+1,n+21)+a_k(k+8)*exp(1i*k*((2*pi)/15)*n);
        end
stem3(-20:1:19, (ones(1,40)*k) , x(i+1,:))
xlabel('n')
ylabel('Real Axis(Frequency)')
zlabel('Imag Axis(Amplitude)')
title(sprintf('Harmonics of x[n] up to and including %dth harmonics', i))
grid on 
hold on
    end
figure
stem3(-20:1:19, zeros(1,40), x(i+1,:), 'r--')
legend('x[n]')
xlabel('n')
ylabel('Real Axis(Frequency)')
zlabel('Imag Axis(Amplitude)')
title(sprintf('x[n]including up to and including %dth harmonics', i))
grid on 
figure
stem(-20:1:19, x(i+1,:))
xlabel('n')
ylabel('x[n]')
title(sprintf('x[n]including up to and including %dth harmonics', i))
grid on 
    end
  
