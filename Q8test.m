M=[1 2 4 8];
alfa=2/3;
g=3*sin(pi/8)^2;
gamab_dB=[5:0.1:20];
gamabvec=10.^(gamab_dB/10);
for k=1:length(M)
    for i=1:length(gamabvec)
        gamab=gamabvec(i);
        phi=[0.001:0.001:pi/2];
        sumvec=((1+((g*gamab)./(1*(sin(phi).^2)))).^(-M(k)));
        pb_nakagami(k,i)=(alfa/pi)*sum(sumvec)*.001;
    end
end
semilogy(gamab_dB,pb_nakagami);
xlabel('SNR(dB)');
ylabel('Pb');
legend('M=1','M=2','M=4','M=8');

