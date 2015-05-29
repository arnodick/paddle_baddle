var i = 0, file_length = 0, 
while (!file_text_eof(argument0))
{
    file_length += 1;
    file_text_readln(argument0);
}
file_text_close(argument0);
return file_length;