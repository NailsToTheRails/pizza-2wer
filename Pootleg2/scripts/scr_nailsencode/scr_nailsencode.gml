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
        str = base64_encode(str)
        trace(str);
    return str;
}
function scr_nailsdecodePart1(encodedStr)
{
    var pad = "=";
    var tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    var decoded = "";
    var len = string_length(encodedStr);
    
    // Reverse the i calculation from the encoding function
    var i = len - 16;

    // Reverse the string deletion operation from the encoding function
    var str = string_copy(encodedStr, 1, len - 2);
    str += string_char_at(encodedStr, len);

    var j = 0;
    
    while (j < len)
    {
        var bin = array_create(4, -1);
        
        bin[0] = ((ord(string_char_at(str, j)) >> 2) - 1);
        bin[1] = (((ord(string_char_at(str, j)) & 3) << 4) | (ord(string_char_at(str, j + 1)) >> 4) - 1);
        bin[2] = (((ord(string_char_at(str, j + 1)) & 15) << 2) | (ord(string_char_at(str, j + 2)) >> 6) - 1);
        bin[3] = (ord(string_char_at(str, j + 2) & 63) - 1);
        
        var k;
        for (k = 0; k < 4; k++)
        {
            if (bin[k] >= 0)
            {
                decoded += chr(bin[k]);
            }
        }
        
        j += 4;
    }

    // Removing padding characters
    while (string_char_at(decoded, string_length(decoded) - 1) == pad)
    {
        decoded = string_delete(decoded, string_length(decoded), 1);
    }
trace(decoded)
decoded = base64_decode(decoded)
    return decoded;
}