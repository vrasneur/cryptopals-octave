% -*- mode: octave -*-

% part of challenge 3

function [max_y, max_ch, max_score] = sbytexor(x)
% SBYTEXOR Brutefoce a XORed hex-encoded string
% use the character frequency to select the right XOR character
% returns the decoded string, the XOR character and the character frequency score
  vec = hex2str(x);
  common = 'ETAOIN SHRDLU';
  common_len = length(common);
  max_score = 0;
  max_ch = 0;
  for ch = 0:255
    y = char(bitxor(vec, ch));
    score = 0;
    for i = 1:common_len
      z = upper(y);
      score += length(z(z == common(i))) * (common_len - i + 1);
    end
    if score > max_score
      max_score = score;
      max_ch = ch;
    end
  end
  max_y = char(bitxor(vec, max_ch));
  max_ch = char(max_ch);
end
