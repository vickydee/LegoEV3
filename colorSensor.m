brick.SetColorMode(1, 2);
color = brick.ColorCode(1);
 %% red
     if(color == 5)
       brick.beep;
       run('stop.m');
       pause(1);
       run('moveForward.m');
       pause(1.7);
     end

%% blue
    if(color == 2)
        disp("blue");
        run('stop.m');
        run('remotecontrol.m');
    end
%% green
   if (color == 3)
        brick.beep;
    end
%% yellow
    if (color == 7)
        brick.beep;
    end
