function tx_bs = text2bitseq(tx_msg);
    tx_bs = [];
    for c = 1:length(tx_msg)
        character = tx_msg(c);
        p = dec2bin(double(character),8)'; % find the 8-bit ASCII
        % double converts character array to decimal and dec2bin() converts
        % to binary in 8*n character matrix, n = text 
        q = str2num(p); % convert the character array into num array
        binary_seq = q(:)'; % transponse and concatenate all elements 

        tx_bs = [tx_bs binary_seq]; 
      
    end
end