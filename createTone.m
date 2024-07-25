function samples = createTone(frequency, samplingFrequency, amplitude, numSamples)
    t = linspace(0, (numSamples-1)/samplingFrequency, numSamples);
    samples = amplitude * sin(2*pi*frequency*t);
end
