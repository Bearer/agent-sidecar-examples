# Agent Sidecar Examples

Example usage of the agent sidecar proxy for different languages.

## Usage

### Generate certificates

The proxy needs a Certificate Authority (CA) certificate. This will be used to
generate and sign certificates for each API domain.

You can create a CA certificate using the following commands:

```shell
mkdir -p data
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout ./data/ca.key -out ./data/ca.crt -subj "/CN=Agent CA"
```

### Run an example

See the README for the specific language you wish to use:

- [Elixir](./elixir)
