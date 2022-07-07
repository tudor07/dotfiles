local dap = require('dap')


dap.adapters.dart = {
  type = "executable",
  command = "flutter",
  args = {"debug_adapter"}
}

dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch Flutter",
    --dartSdkPath = os.getenv('HOME').."/dev/flutter/bin/cache/dart-sdk/",
    --flutterSdkPath = os.getenv('HOME').."/dev/flutter",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  }
}

-- Old debug hack
--dap.adapters.dart = {
--  type = "executable",
--  command = "node",
--  args = {"/Users/tudorwork/dev/tools/Dart-Code/out/dist/debug.js", "flutter"}
--}
