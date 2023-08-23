Debugging = {}

function Debugging:start()
    local require = require
    local json = require 'dkjson'
    local debuggee = require 'vscode-debuggee'

    Debugging.debuggee = debuggee
    local startResult, breakerType = debuggee.start(json)

    print('debuggee start ->', startResult, breakerType)
end

function Debugging:updateDebuggee()
    self.debuggee.poll()
end

return Debugging