require "bindings"
require "pg"

b = Bindings.from_service_binding_root
b = Bindings.filter(b, "postgresql")
raise "Incorrect number of PostgreSQL bindings: #{b.length}" if b.length != 1

u = b[0].get("url")
raise "No URL in binding" if url.nil?

conn = PG.connect(u)

# ...
