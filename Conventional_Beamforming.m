clear all;close all;clc;
source_number=2;%��Ԫ��
sensor_number=16;%��Ԫ��
N_x=1024; %�źų���
snapshot_number=N_x;%������
w=[pi/4 pi/6].';%�ź�Ƶ��
l=((2*pi*1500)/w(1)+(2*pi*1500)/w(2))/2;%�źŲ���  
d=0.5*l;%��Ԫ���
snr=15;%�����

source_doa=[-5 5];%�����źŵ�����Ƕ�
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%��������

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%�����ź�
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%���˸�˹������������н����ź�

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%�����������ΧΪ-90~90��
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('��λ��/��','FontSize',15);
ylabel('�ռ���/dB','FontSize',15);
set(gca,'FontSize',11);
grid on;
snr=15;%�����
source_doa=[-5 2];%�����źŵ�����Ƕ�
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%��������

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%�����ź�
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%���˸�˹������������н����ź�

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%�����������ΧΪ-90~90��
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('��λ��/��','FontSize',15);
ylabel('�ռ���/dB','FontSize',15);
set(gca,'FontSize',11);
grid on;
snr=15;
source_doa=[-5 1];%�����źŵ�����Ƕ�
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%��������

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%�����ź�
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%���˸�˹������������н����ź�

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%�����������ΧΪ-90~90��
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('��λ��/��','FontSize',15);
ylabel('�ռ���/dB','FontSize',15);
set(gca,'FontSize',11);
grid on;

snr=10;%�����
source_doa=[-5 2];%�����źŵ�����Ƕ�
A=[exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(1)*pi/180)/l);exp(-1j*(0:sensor_number-1)*d*2*pi*sin(source_doa(2)*pi/180)/l)].';%��������

s=sqrt(10.^(snr/10))*exp(1j*w*[0:N_x-1]);%�����ź�
%x=awgn(s,snr);
x=A*s+(1/sqrt(2))*(randn(sensor_number,N_x)+1j*randn(sensor_number,N_x));%���˸�˹������������н����ź�

R=x*x'/snapshot_number;
iR=inv(R);

searching_doa=-90:0.1:90;%�����������ΧΪ-90~90��
for i=1:length(searching_doa)
    a_theta=exp(-1j*(0:sensor_number-1)'*2*pi*d*sin(pi*searching_doa(i)/180)/l);
    %Pcapon(i)=1./abs((a_theta)'*iR*a_theta);
    Pbf(i)=a_theta'*R*a_theta/(a_theta'*a_theta);
end
figure
plot(searching_doa,10*log10(Pbf/max(Pbf)),'b');
axis([-90 90 -30 0]);
xlabel('��λ��/��','FontSize',15);
ylabel('�ռ���/dB','FontSize',15);
set(gca,'FontSize',11);
grid on
