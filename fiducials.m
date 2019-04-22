
%HACER QUE EL PUMA VAYA A LOS FIDUCIALS
tor1Dicom = [19*1.4,121.9,210.1]
tor2Dicom = [48*1.4,186.56,210.1]
tor3Dicom = [81*1.4,70.37,214.37]

tor1Dicom(1) = (tor1Dicom(1) * mmCoord_X) + origen(1)
tor1Dicom(2) = -((tor1Dicom(2) * mmCoord_Y) + origen(2))
tor1Dicom(3) = -((tor1Dicom(3) * mmCoord_Z) + origen(3))

tor2Dicom(1) = (tor2Dicom(1) * mmCoord_X) + origen(1)
tor2Dicom(2) = -((tor2Dicom(2) * mmCoord_Y) + origen(2))
tor2Dicom(3) = -((tor2Dicom(3) * mmCoord_Z) + origen(3))

tor3Dicom(1) = (tor3Dicom(1) * mmCoord_X) + origen(1)
tor3Dicom(2) = -((tor3Dicom(2) * mmCoord_Y) + origen(2))
tor3Dicom(3) = -((tor3Dicom(3) * mmCoord_Z) + origen(3))

Q= p560.ikine6s(tor1Dicom, 'run')
p560.plot(Q)

Q= p560.ikine6s(tor2Dicom, 'run')
p560.plot(Q)

Q= p560.ikine6s(tor3Dicom, 'run')
p560.plot(Q)