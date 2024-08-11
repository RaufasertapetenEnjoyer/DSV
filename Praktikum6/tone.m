function [] = tone(vol)
global Fs lengthOf1 m c_m;
mainVolume = vol;
output = makeTone(44, 0.5, mainVolume);
output = [output makeTone(47, 0.5, mainVolume)];
output = [output makeTone(51, 0.5, mainVolume)];
output = [output makeTone(51, 0.5, mainVolume)];
output = [output makeTone(51, 0.5, mainVolume)];
output = [output makeTone(49, 0.5, mainVolume)];
output = [output makeTone(52, 0.5, mainVolume)];
output = [output makeTone(51, 0.5, mainVolume)];
output = [output makeTone(49, 0.5, mainVolume)];
output = [output makeTone(47, 1.5, mainVolume)];
output = [output makePause(1/32)];
output = [output makeTone(49, 0.5, mainVolume)];
output = [output makeTone(51, 0.5, mainVolume)];
output = [output makeTone(47, 0.5, mainVolume)];
output = [output makeTone(44, 0.5, mainVolume)];
output = [output makeTone(47, 0.5, mainVolume)];
output = [output makeTone(49, 0.5, mainVolume)];
output = [output makeTone(46, 0.5, mainVolume)];
output = [output makeTone(44, 0.5, mainVolume)];
output = [output makeTone(42, 0.5, mainVolume)];
output = [output makeTone(44, 1.5, mainVolume)];

outputPlayer = audioplayer(output, Fs);
playblocking(outputPlayer);
