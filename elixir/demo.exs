{:ok, status_code, response_headers, client_ref} =
  :hackney.request(:get, "https://swapi.dev/api/people/1/", [], "",
    proxy: System.get_env("HTTP_PROXY"),
    ssl_options: [
      cacertfile: "/data/ca.crt"
    ]
  )

{:ok, body} = :hackney.body(client_ref)

IO.puts("Status: #{status_code}")
IO.puts("Body:")
IO.puts(body)
