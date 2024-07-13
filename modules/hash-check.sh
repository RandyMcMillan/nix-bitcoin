#!/usr/bin/env bash
echo "https://raw.githubusercontent.com/bitcoin/bitcoin/d6cde007db9d3e6ee93bd98a9bbfdce9bfa9b15b/share/rpcauth/README.md"
curl -Ss https://raw.githubusercontent.com/bitcoin/bitcoin/d6cde007db9d3e6ee93bd98a9bbfdce9bfa9b15b/share/rpcauth/README.md > rpcREADME.md && sha256sum ./rpcREADME.md | sed 's/.\/rpcREADME.md//g'
cat ./rpcREADME.md | sha256sum | sed 's/-//g'
openssl dgst -sha256 rpcREADME.md | sed 's/SHA2-256(rpcREADME.md)= //g'

echo "https://raw.githubusercontent.com/bitcoin/bitcoin/d6cde007db9d3e6ee93bd98a9bbfdce9bfa9b15b/share/rpcauth/rpcauth.py"
echo "https://raw.githubusercontent.com/bitcoin/bitcoin/d6cde007db9d3e6ee93bd98a9bbfdce9bfa9b15b/share/rpcauth/rpcauth.py"
curl -Ss https://raw.githubusercontent.com/bitcoin/bitcoin/d6cde007db9d3e6ee93bd98a9bbfdce9bfa9b15b/share/rpcauth/rpcauth.py > rpcauth.py && sha256sum ./rpcauth.py | sed 's/.\/rpcauth.py//g'
cat ./rpcauth.py | sha256sum | sed 's/-//g'
openssl dgst -sha256 rpcauth.py | sed 's/SHA2-256(rpcauth.py)= //g'
