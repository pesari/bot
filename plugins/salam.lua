do

local function run(msg, matches)
if matches[1]=="سلام" and is_sudo(msg) then 
return  "سلام بابا جونم😍♥️"
elseif matches[1]=="سلام" and is_admin(msg) then 
return  "سلام مامان جونم😍♥️"
end

end

return {
  patterns = {
    "^(سلام)$",
    },
  run = run
}
end