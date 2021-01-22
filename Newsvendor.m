%% First step
Product = xlsread('Libro1.xlsm','Sheet1'); % Importing data
pv = 3000; % Sale value
pc = 400; % Cost value
pa = 2000; % stock cost
p = (pv-pc)/(pv+pc+pa); % quantil 
distributionFitter(Product) % Try different pdf's according to data

%% Second step
aux = fitdist(Product,'stable'); % Write the choosen distribution
clc;
Optimum_quantity = icdf(aux,p)