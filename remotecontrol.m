global key;
InitKeyboard();

while 1
    pause(0.1);
    switch key
        % startup robot
        case 's'
            run('startup.m');
        case 'uparrow'
            run('moveForward.m')
        case 'downarrow'
            disp('Down Arrow');
            run('moveBackward.m')
        % left turn
        case 'leftarrow'
            brick.MoveMotor('A',100);
            brick.MoveMotor('B',-100);
        % right turn
        case 'rightarrow'
            brick.MoveMotor('A',-100);
            brick.MoveMotor('B',100);
        %% claw left 
         % motor connected to port c
        case 'a'
            brick.MoveMotor('C',50);
        %% claw right
         % motor connected to port c
        case 'd'
            brick.MoveMotor('C',-50);
        case 0
            brick.StopAllMotors('Brake');
        case '1'
            brick.StopAllMotors('Brake');
        % quit
        case 'q'
            break;
    end
end
CloseKeyboard();
        