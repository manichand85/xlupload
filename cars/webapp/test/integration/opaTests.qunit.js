sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cars/test/integration/FirstJourney',
		'cars/test/integration/pages/carsList',
		'cars/test/integration/pages/carsObjectPage',
		'cars/test/integration/pages/customersObjectPage'
    ],
    function(JourneyRunner, opaJourney, carsList, carsObjectPage, customersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cars') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecarsList: carsList,
					onThecarsObjectPage: carsObjectPage,
					onThecustomersObjectPage: customersObjectPage
                }
            },
            opaJourney.run
        );
    }
);