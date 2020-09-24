FROM elixir:latest as builder
WORKDIR /app

COPY . /app

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
RUN mix deps.compile

ENTRYPOINT [ "mix", "run", "/app/demo.exs" ]
