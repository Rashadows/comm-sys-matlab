function rx_msg = bitseq2text(rx_bs)
    num_chars = length(rx_bs);      % assume receiver knows length of tx_msg
    rx_msg = [];                      
    
    for i=1:num_chars/8                
        byte = rx_bs((i-1)*8+[1:8]);  % extract i'th byte
        for j = 0 : 7
            jth_bit = 2^(j) * byte(7 - j+1);
            j_arr(j+1) = jth_bit;
        end
        rx_msg(i) = sum(j_arr);
    end
    rx_msg = char(rx_msg); % convert decimal data to character 

end
