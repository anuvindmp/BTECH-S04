% Load the music file
[music, fs] = audioread('C:\Program Files\MATLAB\R2023a\toolbox\dsp\samples\RockGuitar.wav');
music = music(:, 1); % Use only one channel if stereo
music_len = length(music);
simulation_time = 62; % seconds
num_bits_per_sample = 16;

% Convert audio signal to bitstream
music_int = int16(music * (2^(num_bits_per_sample - 1) - 1));
music_int_shifted = music_int - intmin('int16'); % Shift to nonnegative integers
bitstream = de2bi(music_int_shifted, num_bits_per_sample, 'left-msb');
bitstream = bitstream(:);

% 16-QAM Modulation Parameters
M = 16; % Modulation order
k = log2(M); % Number of bits per symbol
constellation = qammod(0:M-1, M, 'gray', 'UnitAveragePower', true);
constellation = constellation / max(abs(constellation)); % Normalize to peak power 1W

% Bitstream to symbols
symbols = bi2de(reshape(bitstream, k, []).', 'left-msb');
modulated_signal = qammod(symbols, M, 'gray', 'UnitAveragePower', true);

% AWGN Channel Parameters
SNR_values = [5, 25, 50]; % SNR in dB

for i = 1:length(SNR_values)
    % Pass signal through AWGN channel
    received_signal = awgn(modulated_signal, SNR_values(i), 'measured');

    % Demodulate the received signal
    received_symbols = qamdemod(received_signal, M, 'gray', 'UnitAveragePower', true);
    received_bitstream = de2bi(received_symbols, k, 'left-msb');
    received_bitstream = received_bitstream.';
    received_bitstream = received_bitstream(:);

    % Convert bitstream back to audio signal
    received_int_shifted = bi2de(reshape(received_bitstream, num_bits_per_sample, []).', 'left-msb');
    received_int = int16(received_int_shifted) + intmin('int16'); % Shift back to original values
    received_audio = double(received_int) / (2^(num_bits_per_sample - 1) - 1);
    
    % Play the demodulated audio
    disp(['Playing audio with SNR = ', num2str(SNR_values(i)), ' dB']);
    sound(received_audio, fs);
    pause(simulation_time + 2); % Pause to allow audio to finish playing
    
    % Analyze and comment on the audio quality
    switch SNR_values(i)
        case 5
            disp('Audio Quality with SNR = 5 dB: Poor, significant noise and distortion.');
        case 25
            disp('Audio Quality with SNR = 25 dB: Good, slight noise but generally clear.');
        case 50
            disp('Audio Quality with SNR = 50 dB: Excellent, very clear with negligible noise.');
    end
end
