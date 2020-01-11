#include "sw/device/lib/hello.h"
#include "sw/device/lib/uart.h"
#include "sw/device/lib/common.h" 

 int sum(int x,int y)
    {
        int z;
        z=x+y;
       uart_send_str("Addtion :");
       uart_send_uint(z, 8);
        return 0;
    }
 int   sub(int x,int y)
    {
        int z;
        z=x-y;
        //printf("Subtraction : %d\n",z);
         uart_send_str("Sub :");
       uart_send_uint(z, 8);
        return 0;
    }
 int   mult(int x,int y)
    {
        int z;
        z=x*y;
         uart_send_str("Mult :");
       uart_send_uint(z, 8);
       // printf("Multiply : %d\n",z);
        return 0;
    }
  int  div(int x,int y)
    {
        int z;
        z=x/y;
         uart_send_str("Div :");
       uart_send_uint(z, 8);
      //  printf("Div : %d\n",z);
        return 0;
    }
    
uint32_t lz77_compress (uint8_t *uncompressed_text, uint32_t uncompressed_size, uint8_t *compressed_text, uint8_t pointer_length_width)
{
    uint16_t pointer_pos, temp_pointer_pos, output_pointer, pointer_length, temp_pointer_length;
    uint32_t compressed_pointer, output_size, coding_pos, output_lookahead_ref, look_behind, look_ahead;
    uint8_t exp= (16 - pointer_length_width);
    uint16_t result=1;
    for (int i=0;i <exp ;i++){
    result = result * 2;
    }
    uint16_t pointer_pos_max =result;
    uint16_t result2=1;
    for (int i=0;i <pointer_length_width ;i++){
    result2 = result2 * 2;
    }
    uint16_t pointer_length_max =result2;
 
    *((uint32_t *) compressed_text) = uncompressed_size;
    *(compressed_text + 4) = pointer_length_width;
    compressed_pointer = output_size = 5;
    
    for(coding_pos = 0; coding_pos < uncompressed_size; ++coding_pos)
    {
        pointer_pos = 0;
        pointer_length = 0;
        for(temp_pointer_pos = 1; (temp_pointer_pos < pointer_pos_max) && (temp_pointer_pos <= coding_pos); ++temp_pointer_pos)
        {
            look_behind = coding_pos - temp_pointer_pos;
            look_ahead = coding_pos;
            for(temp_pointer_length = 0; uncompressed_text[look_ahead++] == uncompressed_text[look_behind++]; ++temp_pointer_length)
                if(temp_pointer_length == pointer_length_max)
                    break;
            if(temp_pointer_length > pointer_length)
            {
                pointer_pos = temp_pointer_pos;
                pointer_length = temp_pointer_length;
                if(pointer_length == pointer_length_max)
                    break;
            }
        }
        coding_pos += pointer_length;
        if((coding_pos == uncompressed_size) && pointer_length)
        {
            output_pointer = (pointer_length == 1) ? 0 : ((pointer_pos << pointer_length_width) | (pointer_length - 2));
            output_lookahead_ref = coding_pos - 1;
        }
        else
        {
            output_pointer = (pointer_pos << pointer_length_width) | (pointer_length ? (pointer_length - 1) : 0);
            output_lookahead_ref = coding_pos;
        }
        *((uint16_t *) (compressed_text + compressed_pointer)) = output_pointer;
        compressed_pointer += 2;
        *(compressed_text + compressed_pointer++) = *(uncompressed_text + output_lookahead_ref);
        output_size += 3;
    }

    return output_size;
}

