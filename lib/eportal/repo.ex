defmodule Eportal.Repo do
  use Ecto.Repo,
    otp_app: :eportal,
    adapter: Ecto.Adapters.Postgres
end
