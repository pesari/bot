function run(msg, matches) 
if matches[1] == 'insta' then
data,res = http.request('http://mail.milad.avanhost.ir/instagram/index.php?username='..matches[2])
if res == 200 then
jdat = json:decode(data)
if jdat.result == true then
local file = download_to_file(jdat.results.profile_pic_url,'instagram.jpg')
tdbot.sendPhoto(msg.to.id, msg.id, file, 0, {}, 0, 0,'بیوگرافی :'..jdat.results.biography..'\n\nنام : '..jdat.results.full_name..'\n\nتعداد فالور : '..jdat.results.edge_followed_by.count..'\n\nتعداد فالو : '..jdat.results.edge_follow.count, 0, 0, 1)
else
tdbot.sendMessage(msg.chat_id, 0, 1,'کاربری با این مشخصات یافت نشد', 1, 'html')
end
end
end
end
return {               
	patterns = {
      "^(insta) (.*)$",
		}, 
	run = run,
}