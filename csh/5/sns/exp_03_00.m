
% Experiment 3 : odd , even parts of a function function



x = (-5:1/100:5)' ;
%x = linspace(-5,5);


vafund = @(vax) ( (vax + 3 ).*(vax - 2 ).*(vax - 4 ) );


vafun = vafund(x) ;
vaeve = ( vafund(x) + vafund(-1*x) )./2 ;
vaodd = ( vafund(x) - vafund(-1*x) )./2 ;

figure ;

plot(x,vafun,'b')

xlabel('x = Time')
ylabel('y = f(x)')
title('Plot of the Function with odd , even parts')
%grid

hold on

plot(x,vaeve,'--')
plot(x,vaodd,'--')

%grid

hold off

grid
legend('function = (x+3)(x-2)(x-4)','even', 'odd')

