command! -nargs=0 UtestAppend call <SID>UtestAppend()

function! s:UtestAppend() abort
  " 対象のファイル名を得る。
  let target = s:GetTargetName()

  if strlen(target) <=# 0
    echomsg 'Not test target file' . expand('%')
    return 0
  endif

  let testfile = s:GetTestFileName(target)
  if strlen(testfile) <=# 0 || target ==# testfile
    echomsg 'Cannot generate test file name:' . target
  endif

  call s:OpenFile(testfile)

endfunction

function! s:GetTargetName() abort
  "拡張子がcならファイル名を返す
  if expand('%:e') ==# 'c'
    return expand('%')
  else
    return ''
  endif
endfunction

function! s:GetTestFileName(target) abort
  "テストファイル名を得る。
  let testfile = a:target
  let testfile = substitute(testfile,'\.c$','Test&','')
  return testfile
endfunction

function! s:OpenFile(filepath)
  execute 'split ' . a:filepath
endfunction
