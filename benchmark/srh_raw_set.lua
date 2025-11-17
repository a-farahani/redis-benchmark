wrk.method = "POST"
wrk.headers["Authorization"] = "Bearer kar52RHx11vrydWlcV6jDOoXzAxBd8fI08QVQz3IHP4TzSQaO4P0bRJS7JIlqDK8"
wrk.headers["Content-Type"] = "application/json"

counter = 0

function request()
    counter = counter + 1
    local body = string.format('["SET", "bench_key_%d", "value_%d"]', counter, counter)
    return wrk.format("POST", "/", wrk.headers, body)
end
