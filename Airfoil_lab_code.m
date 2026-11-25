%%AER 303 Airfoil laboratory
%Constants
Test_length = 0.61;%m, this is the test section
test_dimension = 0.3048; %m, this is the test section width and height
pressure_rake = 0.01.*([1.67,3.33,5,6,7,8,9,10,11,12,13,14,15,16.67,18.33,20]+0.5); %in m now
chord = 100; %mm - note that the equations are not perfectly aligned
atmo_p=99550; %Pa
water_density = 0.000999103; %kg/m^3

%%nondimesnionalizing
tap_locations = zeros(19,2);
tap_locations(:,1) = [0,3,6,10,15,20,30,40,55,70,85,100,90,60,40,30,20,10,5];
%note that all diemsnions above are in mm, this is so that when
%nondimensionalizing it is easier
%if a Y coordinate does not have a position in the clark_Y_coordinates
%file, linear interpolation is used to find the y value
tap_locations(:,2) = [0,3.3020,4.8760,6.3000,((7.3440+7.7570)/2),8.3920,9.0680,9.1170,((8.2370+8.0350)/2),6.1430,((3.6050+3.1970)/2),0.0600,-0.4270,-1.5290,-2.2630,-2.6310,-2.9670,-2.9380,-2.6050];
tap_locations = tap_locations./chord; %now everythingi s in relation to the chord

%% Pitot Tube Calculations
