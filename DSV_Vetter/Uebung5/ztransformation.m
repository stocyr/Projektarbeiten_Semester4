g = [1 1 1 1 1];
Nf = 256;
f = [0:1/Nf:1/2];
z = exp(j*2*pi*f);
Gf = zeros(size(f));
for n = 1:length(g)
    Gf = Gf + g(n)*z.^(n-1);
end

plot(Gf);