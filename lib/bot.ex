defmodule PeterBot.Bot do
  use Slug.Bot

  slug(Slug.Common.MessagesOnly)
  slug(Slug.Common.CheckMentioned)
  slug(Slug.Common.FilterSelf)
  slug(Slug.Common.Peek)
  slug(:simple_reply)

  def simple_reply(%Slug.Event{data: event_data} = event) do
    %{text: text, user: user, channel: channel} = event_data
    case text do
      "Hola" ->
        Slug.Bot.send_text(__MODULE__, channel, "Hola <@#{user}>!")
      "mondays" ->
        Slug.Bot.send_text(__MODULE__, channel, "https://i.kym-cdn.com/photos/images/original/000/991/500/1c7.gif")
      "work" ->
        Slug.Bot.send_text(__MODULE__, channel, "http://www.reactiongifs.com/r/wrkng.gif")
      "late" ->
        Slug.Bot.send_text(__MODULE__, channel, "https://thumbs.gfycat.com/SlimyShoddyJackal-size_restricted.gif")
    end
    event
  end

  def simple_reply(event), do: event
end
