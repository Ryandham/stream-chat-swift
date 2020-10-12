//
// Copyright © 2020 Stream.io Inc. All rights reserved.
//

import Foundation

extension Endpoint {
    static func channelMembers<ExtraData: UserExtraData>(
        query: ChannelMemberListQuery
    ) -> Endpoint<ChannelMemberListPayload<ExtraData>> {
        .init(
            path: "members",
            method: .get,
            queryItems: nil,
            requiresConnectionId: false,
            body: ["payload": query]
        )
    }
}