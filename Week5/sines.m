function [s1, s2, sums] = sines(pts, amp, f1, f2)
if nargin == 0 
    pts = 1000;
end
if nargin < 2
    amp = 1;
end
if nargin < 3
    f1 = 100;
end
if nargin < 4
    f2 = f1 * 1.05;
end
l1 = f1 * 2 * pi;
l2 = f2 * 2 * pi;
s1 = amp * sin([0 : l1 / (pts - 1) : l1]);
s2 = amp * sin([0 : l2 / (pts - 1) : l2]);
sums = s1 + s2;
end