accessing
newRequestwith: aCommand forHandler: aHandler
| dwaBuilder dwaMessage |
	"We should validate the message"
	dwaBuilder := DWADiameterMessageBuilder new
		diameterFlags: 16r00;
		applicationId: DiameterConstants applicationBase;
		endToEndId: aCommand endToEndId;
		hopByHopId: aCommand hopByHopId;
		resultCodeAVPHeader: DiameterConstants resultCodeSuccess;
		originHostAVPHeader: aHandler diameterConnection localHost;
		originRealmAVPHeader: aHandler diameterConnection localRealm.
	
	dwaMessage := dwaBuilder make.
	aHandler directSend: dwaMessage asEncodedMessage