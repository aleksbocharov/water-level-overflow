% flood maagement system

clear;

% initializing time steps for simulation
numSteps = 500;

% initializing frequency for square function
deltaT = 0.1;

% declaring concepts
% this is a single array with size of NumSteps

WL = zeros(1,numSteps);

% declaring parameter (instantaneous & temporal)
alpha = 0.1; % evaporation and absorption 
beta = 0.3; % dam height
RI = 0.9; % rain intensity can change with time but for simulation used fixed value

% initializing activities 

for t = 1:numSteps
	WL(t)=0.0;
    
end   

% executing the model
for t = 2:numSteps 
    % temporal relationships
    WL(t)=WL(t-1) + deltaT * RI - WL(t-1) * (alpha + beta) * deltaT; % water level changin over time
    
end

% plotting the graph
hold on 
t=1:numSteps;

maxLimY = 1.1; % max. value for axis Y
minLimX = 0;   % min. value for axis x

y = plot(t, WL, '-b', t, RI, ':r');
xlabel('time steps');ylabel('levels');
xlim([0 numSteps]);ylim([minLimX maxLimY]);
hold off;
legend(y,'Water Level', 'Rain Intensity');



