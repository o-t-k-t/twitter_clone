module TweetsHelper
  def form_submit_path
    case action_name
    when 'new', 'confirm'
      confirm_tweets_path
    when 'edit', 'update'
      tweet_path
    else
      raise "called by unexpected controller #{action_name}"
    end
  end
end
