do

local function run(msg, matches)
if matches[1]=="salam" and is_sudo(msg) then 
return  "سلام بابا جان😁♥"
elseif matches[1]=="salam" and is_admin(msg) then 
return  "سلام مامان گل😍♥"
elseif matches[1]=="salam" and is_owner(msg) then 
return  "سلام مدیر😌"
elseif matches[1]=="salam" and is_mod(msg) then 
return  "سلام ادمین😒"
else
return  "سلام بشکفته کیر😆😂"
end

end

return {
  patterns = {
    "^(salam)$",
    },
  run = run
}
end