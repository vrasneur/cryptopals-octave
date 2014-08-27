% -*- mode: octave -*-

% part of challenge 6

function distance = hammingdist(x, y)
% HAMMINGDIST compute the hamming distance from 2 strings of equal length
% returns the distance (integer)
  x = toascii(x);
  y = toascii(y);
  z = bitxor(x, y);
  distance = 0;
  for a = z
    distance += sum(bitget(a, 1:8));
  end
end
