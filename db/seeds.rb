# Event
[
  { title: "エリザベート" },
  { title: "王家の紋章" },
  { title: "天使にラブソングを" },
].each.with_index(1) do |event, index|
  Event.create(id:index, title: event[:title])
end
