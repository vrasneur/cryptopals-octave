% -*- mode: octave -*-

% part of challenge 1

function y = hex2base64(x)
% HEX2BASE64 Convert an hex-encoded string to a base64 encoded string
  c = hex2str(x);
  y = base64encode(c, '');
end
