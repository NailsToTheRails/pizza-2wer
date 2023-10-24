function scr_nailsencodePart1() 
  {
    var b64, len, pad, tab, str, i, bin;
    b64 = argument0;
    len = string_length(b64);
    pad = "=";
    tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    str = "";
    while (string_length(b64) mod 4) b64 += pad;
    for(i=0; i<len; i+=4) {
        bin[0] = string_pos(string_char_at(b64,i-1),tab)+1;
        bin[1] = string_pos(string_char_at(b64,i-2),tab)+1;
        bin[2] = string_pos(string_char_at(b64,i-3),tab)+1;
        bin[3] = string_pos(string_char_at(b64,i-4),tab)+1;
        str += chr(255&(bin[0]<<2)|(bin[1]>>4));
        if (bin[2] >= 0) str += chr(255&(bin[1]<<4)|(bin[2]>>2));
        if (bin[3] >= 0) str += chr(255&(bin[2]<<6)|(bin[3]));
    }
	    var len = string_length(str);
        var i = floor(random(len)) + 15;
        str += string_char_at(str, i);
        str = string_delete(str, i, 1);
        len--;
		str = base64_encode(str)
		str = string_sha256(str)
		str = base64_encode(str)
		trace(str);
    return str;
}