json.extract! postcomment, :id, :title, :body, :article_id, :user_id, :created_at, :updated_at
json.url postcomment_url(postcomment, format: :json)
