class GossipMetum < ApplicationRecord
    # 1-N association with gossips table
    belongs_to :gossip
    # 1-N association with tags table
    belongs_to :tag
end
