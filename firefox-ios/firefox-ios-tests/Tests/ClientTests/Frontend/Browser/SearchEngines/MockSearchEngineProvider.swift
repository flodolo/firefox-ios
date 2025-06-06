// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation
@testable import Client

class MockSearchEngineProvider: SearchEngineProvider {
    var unorderedEngines: (([OpenSearchEngine]) -> Void)?

    var mockEngines: [OpenSearchEngine] = [
        OpenSearchEngine(
            engineID: "ATester",
            shortName: "ATester",
            telemetrySuffix: nil,
            image: UIImage(),
            searchTemplate: "http://firefox.com/find?q={searchTerms}",
            suggestTemplate: nil,
            isCustomEngine: true
        ),
        OpenSearchEngine(
            engineID: "BTester",
            shortName: "BTester",
            telemetrySuffix: nil,
            image: UIImage(),
            searchTemplate: "http://firefox.com/find?q={searchTerms}",
            suggestTemplate: nil,
            isCustomEngine: true
        ),
        OpenSearchEngine(
            engineID: "CTester",
            shortName: "CTester",
            telemetrySuffix: nil,
            image: UIImage(),
            searchTemplate: "http://firefox.com/find?q={searchTerms}",
            suggestTemplate: nil,
            isCustomEngine: true
        ),
        OpenSearchEngine(
            engineID: "DTester",
            shortName: "DTester",
            telemetrySuffix: nil,
            image: UIImage(),
            searchTemplate: "http://firefox.com/find?q={searchTerms}",
            suggestTemplate: nil,
            isCustomEngine: true
        ),
        OpenSearchEngine(
            engineID: "ETester",
            shortName: "ETester",
            telemetrySuffix: nil,
            image: UIImage(),
            searchTemplate: "http://firefox.com/find?q={searchTerms}",
            suggestTemplate: nil,
            isCustomEngine: true
        ),
        OpenSearchEngine(
            engineID: "FTester",
            shortName: "FTester",
            telemetrySuffix: nil,
            image: UIImage(),
            searchTemplate: "http://firefox.com/find?q={searchTerms}",
            suggestTemplate: nil,
            isCustomEngine: true
        )
    ]

    func getUnorderedEngines(withResult result: [OpenSearchEngine]) {
        unorderedEngines?(mockEngines)
    }

    func getOrderedEngines(
        customEngines: [OpenSearchEngine],
        engineOrderingPrefs: SearchEnginePrefs,
        prefsMigrator: any SearchEnginePreferencesMigrator,
        completion: @escaping SearchEngineCompletion) {
        completion(engineOrderingPrefs, mockEngines)
    }

    let preferencesVersion: SearchEngineOrderingPrefsVersion = .v1
}
