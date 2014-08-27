% -*- mode: octave -*-

% Utility function

function y = vec2hex(x)
% VEC2HEX Convert an int vecto rto an hex-encoded string
  y = dec2hex(x);
  y = y'(:)';
end
