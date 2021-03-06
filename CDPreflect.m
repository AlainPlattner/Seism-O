function seis=CDPreflect(V,spacing,h)
% seis=CDPreflect(V,spacing,h)
%
% Calculates the seismograms for a common depth point gather of a reflected wave
%  
% INPUT:
%
% V 		Subsurface velocity
% spacing 	Combined spacing of sources and receivers (the gaps between them)
% h 		depth to reflecting layer
%
% OUTPUT
%
% seis 		struct containing seismogram information
%
% Last modified by plattner-at-alumni.ethz.ch, 11/11/2015

x=2*(0.5+(0:spacing:23*spacing));

t=sqrt(x.^2+4*h^2)/V;

seis=shotgather(x,t);


