while 1
%% Initializing variables in  loop to constantly update the values
  % ultrasonic
    dist = brick.UltrasonicDist(2); 

  % touch
    touch1 = brick.TouchPressed(3); 
    touch2 = brick.TouchPressed(4);

  % color
    run('colorSensor.m')

% Moves forward
    run('moveForward.m')

    if dist >= 40
        run('stop.m')
        pause(0.4)

      % pi/2 left turn
        brick.MoveMotor('A',100);
        brick.MoveMotor('B',-100);
        pause(2.8);
        run('moveForward.m');
        pause(1.5);
    end

    if (touch1 == true && touch2 == false)
        disp("motor B stopped")
        brick.MoveMotor('B',-50);
        brick.MoveMotor('A', 100);
    end
    if (touch2 == true && touch1 == false)
        disp("motor A stopped")
        brick.MoveMotor('A',-50);
        brick.MoveMotor('B', 100);

    end
        
    if (touch1 == true && touch2 == true)
        %run('moveBackward');
        %pause(0.3);
        run('stop.m')
        pause(0.4)
        brick.MoveMotor('A',-70);
        brick.MoveMotor('B',70);
        pause(2.64);
        run('moveForward.m');
        pause(1.5);
    end
    
end
