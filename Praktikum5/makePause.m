function y = makePause(pauseLength)
    global Fs lengthOf1;
	y = zeros(1, floor(Fs * pauseLength * lengthOf1));
end

