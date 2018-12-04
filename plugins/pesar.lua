do

local function run(msg, matches)
if matches[1]=="پسر" and is_sudo(msg) then 
return  "جونم بابا😍"
elseif matches[1]=="دخمل" and is_admin(msg) then 
return  "جونم مامان😍"
elseif matches[1]=="دخمل" and is_owner(msg) then 
return  "بله مدیر"
elseif matches[1]=="دخمل" and is_mod(msg) then 
return  "چیه ادمین"
else
return  "چیه گاوکص😄"
end

end

return {
  patterns = {
    "^(پسر)$",
    },
  run = run
}
end