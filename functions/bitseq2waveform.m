function tx_wave = bitseq2waveform(tx_bs, SPB)
    tx_wave = [];
    
    for n = 1:length(tx_bs)
        %transform each bit into SPB samples and then append it to tx_wave
        if tx_bs(n) == 0
            sampled_bs = zeros(1, SPB);
        else
            sampled_bs = ones(1, SPB);
        end
    
        tx_wave = [tx_wave sampled_bs];  
       
    end
end