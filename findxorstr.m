% -*- mode: octave -*-

% part of challenge 4

function [max_x, max_y, max_ch, max_score] = findxorstr(filename)
% FINDXORSTR read hex-encoded sterings from a file line by line
% and find which line was XOR-encoded
% returns the hex-encoded string, the (XOR and hex) decoded string,
% the XOR character and the character frequency score
  f = fopen(filename);
  max_score = 0;
  while(~feof(f))
    x = fgetl(f);
    [y, ch, score] = sbytexor(x);
    if score > max_score
      max_score = score;
      max_x = x;
      max_ch = ch;
      max_y = y;
    end
  end
  fclose(f);
end
