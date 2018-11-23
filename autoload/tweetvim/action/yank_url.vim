let s:save_cpo = &cpo
set cpo&vim


function! tweetvim#action#yank_url#define() abort
  return {
        \ 'description' : 'yank url',
        \}
endfunction


function! tweetvim#action#yank_url#execute(tweet) abort
  let fmt = 'https://twitter.com/%s/status/%s'
  call setreg('+', printf(fmt, a:tweet.user.screen_name, a:tweet.id_str))
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
