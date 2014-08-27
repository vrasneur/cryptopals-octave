% -*- mode: octave -*-

% part of challenge 2

function y = strxor(x1, x2)
% STRXOR XOR two hex-encoded strings (with the same size)
% returns an hex-encoded string
  y1 = hex2str(x1);
  y2 = hex2str(x2);
  y = dec2hex(bitxor(y1, y2));
  % these two lines give the same result
%  y = char(reshape(y', 1, prod(size(y))))
  y = char(y'(:)');
end
