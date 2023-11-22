run('stop.m'); pause(1); brick.GyroCalibrate(4);

while 1
    angle = brick.GyroAngle(4);
    brick.MoveMotor('A',100);
    brick.MoveMotor('B',-100);
    disp(angle)
    if(angle <= -83)
        run('stop.m');
        brick.GyroCalibrate(4);
        if(angle == 0)
            run('moveForward.m')
        end
        break;
    end
end
