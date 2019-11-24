%Alphabats Loading.
A = imread('Alpha Images/A.bmp');
B = imread('Alpha Images/B.bmp');
C = imread('Alpha Images/C.bmp');
D = imread('Alpha Images/D.bmp');
E = imread('Alpha Images/E.bmp');
F = imread('Alpha Images/F.bmp');
G = imread('Alpha Images/G.bmp');
H = imread('Alpha Images/H.bmp');
I = imread('Alpha Images/I.bmp');
J = imread('Alpha Images/J.bmp');
K = imread('Alpha Images/K.bmp');
L = imread('Alpha Images/L.bmp');
M = imread('Alpha Images/M.bmp');
N = imread('Alpha Images/N.bmp');
O = imread('Alpha Images/O.bmp');
P = imread('Alpha Images/P.bmp');
Q = imread('Alpha Images/Q.bmp');
R = imread('Alpha Images/R.bmp');
S = imread('Alpha Images/S.bmp');
T = imread('Alpha Images/T.bmp');
U = imread('Alpha Images/U.bmp');
V = imread('Alpha Images/V.bmp');
W = imread('Alpha Images/W.bmp');
X = imread('Alpha Images/X.bmp');
Y = imread('Alpha Images/Y.bmp');
Z = imread('Alpha Images/Z.bmp');

%NATURAL NUMBERS LOADING.

one = imread('Alpha Images/1.bmp');
two = imread('Alpha Images/2.bmp');
three = imread('Alpha Images/3.bmp');
four = imread('Alpha Images/4.bmp');
five = imread('Alpha Images/5.bmp');
six = imread('Alpha Images/6.bmp');
seven = imread('Alpha Images/7.bmp');
eight = imread('Alpha Images/8.bmp');
nine = imread('Alpha Images/9.bmp');
zero = imread('Alpha Images/0.bmp');

%Array of Alphabats.
letter = [A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];

%Array of Numbers.
number = [one two three four five six seven eight nine zero];

NewTemplates = [letter, number];
save('NewTemplates', 'NewTemplates');
clear all;