do

local function run(msg, matches)
if matches[1]=="من کیم" and is_sudo(msg) then 
return  "بابام😍"
elseif matches[1]=="من کیم" and is_admin(msg) then 
return  "مامانم😍😚"
elseif matches[1]=="من کیم" and is_owner(msg) then 
return  "مدیر هستی د"
elseif matches[1]=="من کیم" and is_mod(msg) then 
return  "خایه بابام"
else
return  " کیر منم نیستی😂"
end

end

return {
  patterns = {
    "^(من کیم)$",
    },
  run = run
}
end
