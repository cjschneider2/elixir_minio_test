defmodule Minioex.Repo do
  use Ecto.Repo,
    otp_app: :minioex,
    adapter: Ecto.Adapters.Postgres
end
