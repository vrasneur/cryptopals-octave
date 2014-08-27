% -*- mode: octave -*-

% General utility function, reused elsewhere

function y = hex2str(x)
% HEX2STR Decode an hex-encoded string
% returns an int vector
  y = [];
  for i = 1:2:length(x)
    y = [y hex2dec(x(i:i+1))];
  end 
end
