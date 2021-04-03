command!  -nargs=0 Today call <SID>Today()

function! s:Today() abort
  let target_file = system('date -I')
  let target_file = target_file . '.md'
  echo target_file
  execute 'vnew ' . target_file
endfunction

