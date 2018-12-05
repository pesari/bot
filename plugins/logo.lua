function run(msg, matches) 
if matches[1] == 'لوگو' then
if matches[2] == 'هالووین' then
type_id = 369
elseif matches[2] == 'حلقه' then
type_id = 370
elseif matches[2] == 'شعله' then
type_id = 372
elseif matches[2] == 'خون' then
type_id = 368
elseif matches[2] == 'جوکر' then
type_id = 365
elseif matches[2] == 'هالووین2' then
type_id = 76
elseif matches[2] == 'کیک' then
type_id = 60
elseif matches[2] == 'زیراب' then
type_id = 73
elseif matches[2] == 'رنگ' then
type_id = 72
elseif matches[2] == 'دیوار' then
type_id = 64
elseif matches[2] == 'هالووین2' then
type_id = 76
elseif matches[2] == 'کهکشان' then
type_id = 18
end
if type_id then
local file = download_to_file('http://milad.senatorhost.com/logo/index.php?type='..type_id..'&text='..matches[3],'logo.jpg')
tdbot.sendPhoto(msg.to.id, msg.id, file, 0, {}, 0, 0,'logo', 0, 0, 1)
else
tdbot.sendMessage(msg.to.id,msg.id, 1,'طرح لوگوی انتخابی شما وجود ندارد', 1, 'html')
end
end
end
return {               
	patterns = {
      "^(لوگو) (.*) (.+)$",
		}, 
	run = run,
}