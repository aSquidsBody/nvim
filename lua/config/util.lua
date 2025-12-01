
function File_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end

function Read_file(file)
  if not file_exists(file) then return {} end
  local lines = {}
  local i = 0
  for line in io.lines(file) do
    lines[i + 1] = line
    i=i+1
  end
  return lines
end

function Write_file(file, lines)
  local f = io.open(file, "w")
  io.write(file, lines)
  if f then
    for line in lines do
      f:write(line)
    end

    f:close()
  else
    vim.notify(
      "Util Write_file: failed to open " .. file,
      vim.log.levels.WARN,
      { title = "Util" }
    )
  end
end
