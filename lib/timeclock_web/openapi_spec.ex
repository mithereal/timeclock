defmodule TimeclockWeb.ApiSpec do
  @moduledoc "Auto-generated OpenAPI spec (minimal)"
  alias OpenApiSpex.{Components, Info, OpenApi, Paths, Server}
  alias MyAppWeb.{Endpoint, Router}
  @behaviour OpenApi

  @impl OpenApi
  def spec do
    %OpenApi{info: %Info{title: to_string(Application.spec(:timeclock, :description)),
      version: to_string(Application.spec(:timeclock, :vsn))},
      servers: [Server.from_endpoint(Endpoint)],
      paths: Paths.from_router(Router)} |> OpenApiSpex.resolve_schema_modules()
  end
end
