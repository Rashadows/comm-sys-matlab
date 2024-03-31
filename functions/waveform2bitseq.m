function rx_bs = waveform2bitseq(rx_wave,SPB,ch)
    start_ind = find_start(rx_wave,ch); % find start bit

    threshold = 0.5*(max(rx_wave)-min(rx_wave))+min(rx_wave);
    
    % set subsampling points
    first_sample = start_ind + SPB+1;
    sample_ind = first_sample +SPB*[1:50] + 2;
    sample_ind = [first_sample sample_ind];
        
    % make bit decisions
     rx_bs = rx_wave(sample_ind) > threshold; 
end