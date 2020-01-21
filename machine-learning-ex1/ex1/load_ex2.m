clear ; close all; clc


X = load("ex1data2.txt")(:, 1:2);
y = load("ex1data2.txt")(:, 3);
theta = zeros(2, 1);
alpha = 0.01;
iterations = 1500;
