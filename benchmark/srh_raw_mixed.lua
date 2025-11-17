wrk.method = "POST"
wrk.headers["Authorization"] = "Bearer kar52RHx11vrydWlcV6jDOoXzAxBd8fI08QVQz3IHP4TzSQaO4P0bRJS7JIlqDK8"
wrk.headers["Content-Type"] = "application/json"

counter = 0

function request()
    counter = counter + 1
    local key_num = math.random(1, 1000000)
    
    if math.random() < 0.5 then
        -- GET request (50%)
        local body = string.format('["GET", "bench_key_%d"]', key_num)
        return wrk.format("POST", "/", wrk.headers, body)
    else
        -- SET request (50%)
        local body = string.format('["SET", "bench_key_%d", "value_%d"]', key_num, counter)
        return wrk.format("POST", "/", wrk.headers, body)
    end
end
