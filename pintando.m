radius=0.005;

circle1 = circle(tor1Dicom, radius);
circle2 = circle(tor2Dicom, radius);
circle3 = circle(tor3Dicom, radius);

circle4 = circle(origen, 0.05);


plot3(circle1(1,:), circle1(2,:), circle1(3,:),'r');
plot3(circle2(1,:), circle2(2,:), circle2(3,:),'r');
plot3(circle3(1,:), circle3(2,:), circle3(3,:),'r');

plot3(circle4(1,:), circle4(2,:), circle4(3,:),'g');