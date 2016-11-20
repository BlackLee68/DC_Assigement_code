% first of all, write the 16QAM
M=16;
d=1;
constellation_point=[-3*d+j*3*d -d+j*3*d d+j*3*d 3*d+j*3*d ...
                     -3*d+j*1*d -d+j*1*d d+j*1*d 3*d+j*1*d ...
                     -3*d-j*1*d -d-j*1*d d-j*1*d 3*d-j*1*d ...
                     -3*d-j*3*d -d-j*3*d d-j*3*d 3*d-j*3*d];
Es=mean(abs(constellation_point).^2);
Eb_No_db_75=7.5;
N=1000;
number_of_symbol_error=0;
Eb_No_linear=10^(Eb_No_db_75/10);
sgma=sqrt(Es/(2*Eb_No_linear*log2(M)));
for i=1:1:N
    transmitted_index=1+floor(rand*M);
    BB_signal=constellation_point(transmitted_index);
    received_signal=BB_signal+(randn*sgma+j*randn*sgma);
    for k=1:1:M
        distance_from_constellation_point(k)=abs(received_signal-constellation_point(k))^2;
    end
    [x,decision_index]=min(distance_from_constellation_point);
    if decision_index ~= transmitted_index
        number_of_symbol_error=number_of_symbol_error+1;
    end
end
Ps_sim_75=number_of_symbol_error/N;
Ps_exact_75=1-(1-2*(sqrt(M)-1)/sqrt(M)*qfunc(sqrt(3*Eb_No_linear*log2(M)/(M-1))))^2;
% choose Eb_No_db=2
Eb_No_db_0=0;
N=1000;
number_of_symbol_error=0;
Eb_No_linear=10^(Eb_No_db_0/10);
sgma=sqrt(Es/(2*Eb_No_linear*log2(M)));
for i=1:1:N
    transmitted_index=1+floor(rand*M);
    BB_signal=constellation_point(transmitted_index);
    received_signal=BB_signal+(randn*sgma+j*randn*sgma);
    for k=1:1:M
        distance_from_constellation_point(k)=abs(received_signal-constellation_point(k))^2;
    end
    [x,decision_index]=min(distance_from_constellation_point);
    if decision_index ~= transmitted_index
        number_of_symbol_error=number_of_symbol_error+1;
    end
end
Ps_sim_0=number_of_symbol_error/N;
Ps_exact_0=1-(1-2*(sqrt(M)-1)/sqrt(M)*qfunc(sqrt(3*Eb_No_linear*log2(M)/(M-1))))^2;
% choose Eb_No_db=4
Eb_No_db_25=2.5;
N=1000;
number_of_symbol_error=0;
Eb_No_linear=10^(Eb_No_db_25/10);
sgma=sqrt(Es/(2*Eb_No_linear*log2(M)));
for i=1:1:N
    transmitted_index=1+floor(rand*M);
    BB_signal=constellation_point(transmitted_index);
    received_signal=BB_signal+(randn*sgma+j*randn*sgma);
    for k=1:1:M
        distance_from_constellation_point(k)=abs(received_signal-constellation_point(k))^2;
    end
    [x,decision_index]=min(distance_from_constellation_point);
    if decision_index ~= transmitted_index
        number_of_symbol_error=number_of_symbol_error+1;
    end
end
Ps_sim_25=number_of_symbol_error/N;
Ps_exact_25=1-(1-2*(sqrt(M)-1)/sqrt(M)*qfunc(sqrt(3*Eb_No_linear*log2(M)/(M-1))))^2;
% 6
Eb_No_db_5=5;
N=1000;
number_of_symbol_error=0;
Eb_No_linear=10^(Eb_No_db_5/10);
sgma=sqrt(Es/(2*Eb_No_linear*log2(M)));
for i=1:1:N
    transmitted_index=1+floor(rand*M);
    BB_signal=constellation_point(transmitted_index);
    received_signal=BB_signal+(randn*sgma+j*randn*sgma);
    for k=1:1:M
        distance_from_constellation_point(k)=abs(received_signal-constellation_point(k))^2;
    end
    [x,decision_index]=min(distance_from_constellation_point);
    if decision_index ~= transmitted_index
        number_of_symbol_error=number_of_symbol_error+1;
    end
end
Ps_sim_5=number_of_symbol_error/N;
Ps_exact_5=1-(1-2*(sqrt(M)-1)/sqrt(M)*qfunc(sqrt(3*Eb_No_linear*log2(M)/(M-1))))^2;
% choose 10
Eb_No_db_10=10;
N=1000;
number_of_symbol_error=0;
Eb_No_linear=10^(Eb_No_db_10/10);
sgma=sqrt(Es/(2*Eb_No_linear*log2(M)));
for i=1:1:N
    transmitted_index=1+floor(rand*M);
    BB_signal=constellation_point(transmitted_index);
    received_signal=BB_signal+(randn*sgma+j*randn*sgma);
    for k=1:1:M
        distance_from_constellation_point(k)=abs(received_signal-constellation_point(k))^2;
    end
    [x,decision_index]=min(distance_from_constellation_point);
    if decision_index ~= transmitted_index
        number_of_symbol_error=number_of_symbol_error+1;
    end
end
Ps_sim_10=number_of_symbol_error/N;
Ps_exact_10=1-(1-2*(sqrt(M)-1)/sqrt(M)*qfunc(sqrt(3*Eb_No_linear*log2(M)/(M-1))))^2;
% choose Eb_No_db=12.5
Eb_No_db_125=12.5;
N=1000;
number_of_symbol_error=0;
Eb_No_linear=10^(Eb_No_db_125/10);
sgma=sqrt(Es/(2*Eb_No_linear*log2(M)));
for i=1:1:N
    transmitted_index=1+floor(rand*M);
    BB_signal=constellation_point(transmitted_index);
    received_signal=BB_signal+(randn*sgma+j*randn*sgma);
    for k=1:1:M
        distance_from_constellation_point(k)=abs(received_signal-constellation_point(k))^2;
    end
    [x,decision_index]=min(distance_from_constellation_point);
    if decision_index ~= transmitted_index
        number_of_symbol_error=number_of_symbol_error+1;
    end
end
Ps_sim_125=number_of_symbol_error/N;
Ps_exact_125=1-(1-2*(sqrt(M)-1)/sqrt(M)*qfunc(sqrt(3*Eb_No_linear*log2(M)/(M-1))))^2;
% choose Eb_No_db=15
Eb_No_db_15=15;
N=1000;
number_of_symbol_error=0;
Eb_No_linear=10^(Eb_No_db_15/10);
sgma=sqrt(Es/(2*Eb_No_linear*log2(M)));
for i=1:1:N
    transmitted_index=1+floor(rand*M);
    BB_signal=constellation_point(transmitted_index);
    received_signal=BB_signal+(randn*sgma+j*randn*sgma);
    for k=1:1:M
        distance_from_constellation_point(k)=abs(received_signal-constellation_point(k))^2;
    end
    [x,decision_index]=min(distance_from_constellation_point);
    if decision_index ~= transmitted_index
        number_of_symbol_error=number_of_symbol_error+1;
    end
end
Ps_sim_15=number_of_symbol_error/N;
Ps_exact_15=1-(1-2*(sqrt(M)-1)/sqrt(M)*qfunc(sqrt(3*Eb_No_linear*log2(M)/(M-1))))^2;
% 16-PSK
M=[1];
alfa=2/4;
g=3*sin(pi/16)^2;
gamab_dB=[0:0.1:15];
gamabvec=10.^(gamab_dB/10);
for k=1:length(M)
    for i=1:length(gamabvec)
        gamab=gamabvec(i);
        phi=[0.001:0.001:pi/2];
        sumvec=((1+((g*gamab)./(1*(sin(phi).^2)))).^(-M(k)));
        pb_nakagami(k,i)=(alfa/pi)*sum(sumvec)*.001;
    end
end
semilogy(Eb_No_db_0,Ps_sim_0,'*',Eb_No_db_25,Ps_sim_25,'*',Eb_No_db_5,Ps_sim_5,'*',...
Eb_No_db_75,Ps_sim_75,'*',Eb_No_db_10,Ps_sim_10,'*',Eb_No_db_125,Ps_sim_125,'*',...
Eb_No_db_15,Ps_sim_15,'*',gamab_dB,pb_nakagami);
%plot(Eb_No_db,Ps_sim);
