% Define the modulation levels for M-PAM
M_values = [4, 16, 64]; 

% Define the range of SNR values in dB to simulate over
SNR_db = 0:1:20; 

% Define number of bits to transmit per simulation
num_of_Bits = 1000; 

% Preallocate BER results matrix: rows for M values, columns for SNR values
BER_M = zeros(length(M_values), length(SNR_db)); 

% Loop over each M-PAM modulation value
for m_index = 1:length(M_values)
    
    % Get the current modulation level (e.g., 4, 16, or 64)
     M = M_values(m_index);

    % Generate random symbols (integers) between 0 and M-1
    transmitted_Bits = randi([0, M-1], 1, num_of_Bits); % Each symbol represents log2(M) bits

    % Modulate the symbols using PAM modulation
    symbols = pammod(transmitted_Bits, M); 

    % Loop over each SNR value
    for i = 1:length(SNR_db)
        
        snr = 10^(SNR_db(i)/10); % Convert SNR from dB to linear scale for internal use

        % Add white Gaussian noise to the modulated signal at the given SNR
        receivedSignal = awgn(symbols, snr, 'measured'); 

        % Demodulate the received noisy signal
        receivedBits = pamdemod(receivedSignal, M); 

        % Compare received symbols with transmitted ones to count bit errors
        bit_Errors = sum(receivedBits ~= transmitted_Bits);

        % Compute and store the Bit Error Rate (BER)
        BER_M(m_index, i) = bit_Errors / num_of_Bits; 
    end
end

% Plotting BER vs SNR for each M value
figure;
hold on; 
for m_index = 1:length(M_values)
    semilogy(SNR_db, BER_M(m_index, :), '-o', ...
        'DisplayName', ['M = ' num2str(M_values(m_index))]); % Use log scale for BER
end

grid on; 
xlabel('SNR (dB)'); 
ylabel('Bit Error Rate (BER)');
title('BER vs SNR for different M-PAM values'); 
legend show; 
hold off; 
