

% Experiment 1 : plot impulse , step , sinc function

x = -4*pi:pi/10:4*pi ;


vastep = x>0 ;

figure ;
plot(x,vastep)
xlabel('Time')
ylabel('Step')
title('Plot of the Step Function')
grid

figure ;
stem(x,vastep)
xlabel('Time')
ylabel('Step')
title('Plot of the Step Discrete Function')
grid



vaimpulse = x==0 ;

figure ;
plot(x,vaimpulse)
xlabel('Time')
ylabel('Impulse')
title('Plot of the Impulse Function')
grid

figure ;
stem(x,vaimpulse)
xlabel('Time')
ylabel('Impulse')
title('Plot of the Impulse Discrete Function')
grid


for(i=1:1:length(x))
    if(x(i) == 0)
        y(i) = 1 ;
    else
        y(i) = sin(x(i))./x(i) ;
    end
end

figure ;
plot(x,y)
xlabel('Time')
ylabel('sinc(t)')
title('Plot of the Sinc Function')
grid

figure ;
stem(x,y)
xlabel('Time')
ylabel('sinc(t)')
title('Plot of the Sinc Discrete Function')
grid
