% -*- mode: octave -*-
disp('Set 1');

a = '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d'
b = 'SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t'

printf('Challenge 1: ');
if strcmp(hex2base64(a), b)
  disp('OK');
else
  disp('NOK');
end

a1 = '1c0111001f010100061a024b53535009181c'
a2 = '686974207468652062756c6c277320657965'
b = '746865206b696420646f6e277420706c6179'

printf('Challenge 2: ');
if strcmpi(strxor(a1, a2), b)
  disp('OK');
else
  disp('NOK');
end

disp('Challenge 3:');
a = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'
[b, ch, score] = sbytexor(a)

disp('Challenge 4:');
fname = '4.txt'
[a, b, ch, score] = findxorstr(fname)

a = "Burning 'em, if you ain't quick and nimble\nI go crazy when I hear a cymbal"
b = '0b3637272a2b2e63622c2e69692a23693a2a3c6324202d623d63343c2a26226324272765272a282b2f20430a652e2c652a3124333a653e2b2027630c692b20283165286326302e27282f'
k = 'ICE'

printf('Challenge 5: ');
if(strcmpi(repeatxorstr(a, k), b))
  disp('OK');
else
  disp('NOK');
end
