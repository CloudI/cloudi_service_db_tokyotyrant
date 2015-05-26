defmodule CloudIServiceDbTokyotyrant do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_tokyotyrant,
     version: "1.5.0",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:etokyotyrant,
      [git: "https://github.com/okeuday/etokyotyrant.git",
       branch: "master"]},
     {:cloudi_core, "~> 1.5.0"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework Tokyo Tyrant Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_tokyotyrant"}]
   end
end
