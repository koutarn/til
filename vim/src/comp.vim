function Min(arg1,arg2)
  if a:arg1 > a:arg2
    let smaller = a:arg1
  else
    let smaller = a:arg2
  endif

  return smaller
endfunction
