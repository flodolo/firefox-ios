// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation
import Shared

public protocol TabQueue {
    func addToQueue(_ tab: ShareItem) -> Success
    func getQueuedTabs(completion: @escaping @MainActor ([ShareItem]) -> Void)
    @discardableResult
    func clearQueuedTabs() -> Success
}
