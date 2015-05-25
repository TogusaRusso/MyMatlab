function [time, km] =  light_time(miles)
km = miles * 1.609;
time = km / (300000 * 60);
