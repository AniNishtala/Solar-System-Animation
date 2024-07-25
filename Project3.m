myAnimation = 'SolarSystem';
fps = 30;
total_frames = 1000;
writerObj = VideoWriter(myAnimation, 'MPEG-4');
writerObj.FrameRate = fps;
open(writerObj);
for frame_number = 1:total_frames
    A = create_frame(frame_number, total_frames);
    frm = im2frame(A);
    writeVideo(writerObj, frm);
end
close(writerObj);