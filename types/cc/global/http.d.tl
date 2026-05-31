local type Headers = {string: string}

local record RequestOptions
    url: string
    body: string | nil
    headers: Headers | nil
    binary: boolean | nil
    method: string | nil
    redirect: boolean | nil
    timeout: number | nil
end

local record WebsocketOptions
    url: string
    headers: Headers | nil
    timeout: number | nil
end

local record Response
    getResponseCode: function(): integer
    getResponseHeaders: function(): Headers
    read: function(count?: integer): string | integer | nil
    readAll: function(): string | nil
    readLine: function(withTrailing?: boolean): string | nil
    close: function()
end

local record Websocket
    getResponseHeaders: function(): Headers
    receive: function(timeout?: number): string | nil, boolean | string
    send: function(message: string, binary?: boolean)
    close: function()
end

global record http
    get: function(
        url: string,
        headers?: Headers,
        binary?: boolean
    ): Response | nil, string | nil, Response | nil
    get: function(
        request: RequestOptions
    ): Response | nil, string | nil, Response | nil
    post: function(
        url: string,
        body: string,
        headers?: Headers,
        binary?: boolean
    ): Response | nil, string | nil, Response | nil
    post: function(
        request: RequestOptions
    ): Response | nil, string | nil, Response | nil
    request: function(
        url: string,
        body?: string,
        headers?: Headers,
        binary?: boolean
    ): Response | nil, string | nil, Response | nil
    request: function(
        request: RequestOptions
    ): Response | nil, string | nil, Response | nil
    checkURLAsync: function(url: string): boolean, string | nil
    checkURL: function(url: string): boolean, string | nil
    websocketAsync: function(url: string, headers: Headers)
    websocketAsync: function(request: WebsocketOptions)
    websocket: function(
        url: string,
        headers: Headers
    ): Websocket | boolean, string | nil
    websocket: function(
        request: WebsocketOptions
    ): Websocket | boolean, string | nil
end