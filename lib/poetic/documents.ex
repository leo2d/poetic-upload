defmodule Poetic.Documents do
  import Ecto.Query, warn: false

  alias Poetic.Repo
  alias Poetic.Documents.Upload

  def create_upload_from_plug_upload(%Plug.Upload{
        filename: filename,
        path: tmp_path,
        content_type: content_type
      }) do
    # upload creation logic
  end
end
