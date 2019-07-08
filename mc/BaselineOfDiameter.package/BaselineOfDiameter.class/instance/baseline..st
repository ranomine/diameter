baselines
baseline: spec
	<baseline>

   spec for: #'common' do: [
		spec 
			project: 'OsmoGSM' with: [
				spec
					className: #ConfigurationOfOsmoGSM;
					versionString: '2';
					repository: 'http://smalltalkhub.com/mc/osmocom/GSM/main/' ];
			project: 'OsmoLogging' with: [
				spec
					className: #ConfigurationOfOsmoLogging;
					versionString: '2';
					repository: 'http://smalltalkhub.com/mc/osmocom/Logging/main/' ];
			project: 'OsmoNetwork' with: [
				spec
					className: #ConfigurationOfOsmoNetwork;
					versionString: '3';
					repository: 'http://smalltalkhub.com/mc/osmocom/Network/main/' ];
			project: 'OsmoCore' with: [
				spec
					className: #ConfigurationOfOsmoCore;
					versionString: '1';
					repository: 'http://smalltalkhub.com/mc/osmocom/Core/main/' ];	   
	      project: 'PetitParser' with: [
		      spec
			      className: #ConfigurationOfPetitParser;
			      versionString: #stable;
			      repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main';
			      loads: #( 'Core' 'Tests' ) ].

	   spec 
	      package: #'Diameter' with: [
		      spec requires: #('PetitParser')];
	      package: #'Diameter-Connection' with: [ 
		      spec requires: #(#'Diameter' 'OsmoCore' 'OsmoLogging' 'OsmoNetwork' ). ].
	   spec group: 'default' with: #(#'Diameter' #'Diameter-Connection' ).  
	]