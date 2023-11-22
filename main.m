stoppedBlue = 0;
stoppedGreen = 0;

while 1
%% Initializing variables in  loop to constantly update the values
  % ultrasonic
    dist = brick.UltrasonicDist(2);

  % touch
    touch1 = brick.TouchPressed(3); 

  %% color
    brick.SetColorMode(1, 2);
    color = brick.ColorCode(1);

    % red
     if(color == 5)
       run('stop.m');
       pause(1);
       run('moveForward.m');
       pause(1.7);
     end

    % blue
    if(color == 2)
        stoppedBlue = 1;
        disp(stoppedBlue)
        disp("blue");
        run('stop.m');
        run('remotecontrol.m');
    end
    
    % green
    if (color == 3)
       disp("green");
       if (stoppedBlue == 1)
        run('stop.m');
        run('remotecontrol.m');
        stoppedGreen = 1;
       end
    end
    
    % yellow
    if (color == 7)
        if (stoppedGreen == 1)
            disp("yellow");
            run('stop.m');
        end
    end


%% Moves forward
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
