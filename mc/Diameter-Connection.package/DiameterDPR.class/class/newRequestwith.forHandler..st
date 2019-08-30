accessing
newRequestwith: aCommand forHandler: aHandler
| dpaBuilder dpaMessage |
	"We should validate the message"
	dpaBuilder := DPADiameterMessageBuilder new
		diameterFlags: 16r00;
		applicationId: DiameterConstants applicationBase;
		endToEndId: aCommand endToEndId;
		hopByHopId: aCommand hopByHopId;
		resultCodeAVPHeader: DiameterConstants resultCodeSuccess;
		originHostAVPHeader: aHandler diameterConnection localHost;
		originRealmAVPHeader: aHandler diameterConnection localRealm.
	
	dpaMessage := dpaBuilder make.
	aHandler directSend: dpaMessage asEncodedMessage