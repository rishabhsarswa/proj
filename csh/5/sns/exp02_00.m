
% Experiment 2 : Scaling , Shhifting of a function function


x = (-5:1/100:5)' ;
%x = linspace(-5,5);


%vafund = @(vax) ( vax.^2 );
vafund = @(vax) ( (vax + 3 ).*(vax - 2 ).*(vax - 4 ) );


vafun = vafund(x) ;
vascale = vafund(x)./2 ;
vashift = vafund(x + 1) - 2 ;

figure ;

plot(x,vafun,'b')

xlabel('x = Time')
ylabel('y = f(x)')
title('Plot of the Function with shifted , scaled ')
%grid

hold on

plot(x,vascale,'--')
plot(x,vashift,'--')

%grid

hold off

grid
legend('function(x) = (x+3)(x-2)(x-4)','scaled : f(x)/2', 'shifted : -3 , 2')

