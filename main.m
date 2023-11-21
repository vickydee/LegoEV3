
while 1
%% Initializing variables in  loop to constantly update the values
  % ultrasonic
    dist = brick.UltrasonicDist(2);

  % touch
    touch1 = brick.TouchPressed(3); 

  % color
    run('colorSensor.m')

% Moves forward
    run('moveForward.m')

    %left turn
    if dist >= 40
        run('leftturn.m')
        run('moveForward.m')
        pause(1);
    end
    

    %right
     if (touch1 == true)
         run('rightturn.m')
     end
        
end
