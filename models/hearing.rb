class Hearing
  include Api::Model
  publicly :queryable

  basic_fields :committee_id, :subcommittee_id,
    :congress, :chamber, :occurs_at, :dc,
    :room, :description, :url, :bill_ids, 
    :hearing_type, :house_event_id, :hearing_id

  search_fields :description


  # todo before enabling:
  # * no URLs yet for senate hearings
  # * no IDs yet for house or senate (house_event_id is coming)
  # rss title: "description",
  #     guid: "hearing_id", # doesn't exist
  #     link: "url",
  #     pubDate: "occurs_at",
  #     description: "description"

  include Mongoid::Document
  include Mongoid::Timestamps

  index chamber: 1
  index committee_id: 1
  index house_hearing_id: 1
  index subcommittee_id: 1
  index occurs_at: 1
  index congress: 1

  index dc: 1
  index bill_ids: 1
  index hearing_type: 1
end