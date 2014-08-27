% -*- mode: octave -*-

% part of challenge 5

function y = repeatxorstr(x, k)
% REPEATXORSTR Do a repeated-XOR on a string X with the key k
% returns an hex-encoded string
  ylen = length(x);
  klen = length(k);
  y = toascii(x);
  k = toascii(k);
  y = [y zeros(1, klen - mod(ylen, klen))];
  maty = reshape(toascii(y), klen, []);
  res = [];
  for col = maty
    res = [res bitxor(col', k)];
  end
  y = vec2hex(resize(res, 1, ylen));
end
