do

local function run(msg, matches)
if matches[1]=="فعلن" and is_sudo(msg) then 
return  "به سلامت بابایی😍♡"
elseif matches[1]=="فعلن" and is_admin(msg) then 
return  "مواظب خودت باش مامان جونم😚♥"
elseif matches[1]=="فعلن" and is_owner(msg) then 
return  "بای مدیر جان🙋"
elseif matches[1]=="فعلن" and is_mod(msg) then 
return  "آخیش کونکش رفت"
else
return  "رفتی؟ به کیر اکبر نفتی میموندی باش ور میرفتی"
end

end

return {
  patterns = {
    "^(فعلن)$",
    },
  run = run
}
end
