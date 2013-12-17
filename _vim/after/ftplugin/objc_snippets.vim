if !exists('loaded_snippet') || &cp
    finish
endif

function! UpFirst()
    return substitute(@z,'.','\u&','')
endfunction

function! Count(haystack, needle)
    let counter = 0
    let index = match(a:haystack, a:needle)
    while index > -1
        let counter = counter + 1
        let index = match(a:haystack, a:needle, index+1)
    endwhile
    return counter
endfunction

function! ObjCArgList(count)
    let st = g:snip_start_tag
    let et = g:snip_end_tag

    if a:count == 0
        return ''
    else
        return repeat(', '.st.et, a:count)
    endif
endfunction


let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet imp #import \"".st.et.".h\"<CR>".st.et
exec "Snippet gimp #import <".st.et.".h><CR>".st.et

exec "Snippet inter @interface ".st."ClassName".et." : ".st."NSObject".et." {<CR>".st.et."<CR>}<CR>".st.et."<CR>@end<CR>".st.et
exec "Snippet impl @implementation ".st."ClassName".et."<CR>".st.et."<CR>@end<CR>".st.et
exec "Snippet cinter @interface ".st."InterfaceName".et." (".st."Category".et.")<CR>".st.et."<CR>@end<CR>".st.et
exec "Snippet cimpl @implementation ".st."NSObject".et." (".st."Category".et.")<CR>".st.et."<CR>@end<CR>".st.et
exec "Snippet proto @protocol ".st."ProtocolName".et."<CR>".st.et."<CR>@end<CR>".st.et
exec "Snippet prop @property (".st."\"nonatomic,retain\"".et.") ".st."type".et." ".st."name".et.";<CR>".st.et
exec "Snippet synt @synthesize ".st."name".et.";<CR>".st.et

exec "Snippet init - (id)init<CR>{<CR>if (self = [super init])<CR>{<CR>".st.et."<CR>}<CR>return self;<CR>}<CR>".st.et

exec "Snippet dict NSDictionary *".st."dict".et." = [NSDictionary dictionary];<CR>".st.et
exec "Snippet array NSArray *".st."array".et." = [NSArray array];".st.et
exec "Snippet mdict NSMutableDictionary *".st."dict".et." = [NSMutableDictionary dictionary];<CR>".st.et
exec "Snippet marray NSMutableArray *".st."array".et." = [NSMutableArray array];".st.et

exec "Snippet forin for (".st."id".et." ".st."obj".et." in ".st."container".et.") {<CR>".st.et."<CR>}".st.et
exec "Snippet log NSLog(@\"".st."s".et."\"".st."s:ObjCArgList(Count(@z, '%[^%]'))".et.");".st.et
exec "Snippet format [NSString stringWithFormat:@\"".st."s".et."\", ".st."s:ObjCArgList(Count(@z, '%[^%]'))".et."];".st.et
