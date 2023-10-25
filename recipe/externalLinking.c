#include <stdio.h>
#include <stdint.h>

extern int read_from_asm(void);
// ROM & RAM related
int rom_start_0(void){return read_from_asm();};
int rom_start(void){return read_from_asm();};
int text(void){return read_from_asm();};
int data(void){return read_from_asm();};
int rodata(void){return read_from_asm();};
int ARM_exidx(void){return read_from_asm();};
int device_states(void){return read_from_asm();};
int ramfunc(void){return read_from_asm();};
int noinit(void){return read_from_asm();};
int bss(void){return read_from_asm();};
int last_ram_section(void){return read_from_asm();};
int net_buf_pool_area(void){return read_from_asm();};
int __kernel_ram_start(void){return read_from_asm();};
int __kernel_ram_end(void){return read_from_asm();};
int __kernel_ram_size(void){return read_from_asm();};
int _image_ram_start(void){return read_from_asm();};
int ARM_LIB_STACKHEAP(void){return read_from_asm();};

// Initialization related
int init_100(void){return read_from_asm();};
int init_102(void){return read_from_asm();};
int init_104(void){return read_from_asm();};
int init_106(void){return read_from_asm();};
int init_108(void){return read_from_asm();};
int init_110(void){return read_from_asm();};
int init(void){return read_from_asm();};
int init_end(void){return read_from_asm();};

// Device related
int device_area_100(void){return read_from_asm();};
int device_area(void){return read_from_asm();};
int device_area_end(void){return read_from_asm();};

// Interrupts
int sw_isr_table(void){return read_from_asm();};
int initlevel_error(void){return read_from_asm();};
int initlevel_error_end(void){return read_from_asm();};

// Bluetooth related
int bt_l2cap_fixed_chan_area_100(void){return read_from_asm();};
int bt_l2cap_fixed_chan_area(void){return read_from_asm();};
int bt_l2cap_fixed_chan_area_end(void){return read_from_asm();};
int bt_gatt_service_static_area_100(void){return read_from_asm();};
int bt_gatt_service_static_area(void){return read_from_asm();};
int bt_gatt_service_static_area_end(void){return read_from_asm();};

// Other areas
int app_shmem_regions(void){return read_from_asm();};
int app_shmem_regions_end(void){return read_from_asm();};
int log_strings_area_100(void){return read_from_asm();};
int log_strings_area(void){return read_from_asm();};
int log_strings_area_end(void){return read_from_asm();};
int log_const_area_100(void){return read_from_asm();};
int log_const_area(void){return read_from_asm();};
int log_const_area_end(void){return read_from_asm();};
int shell_area_100(void){return read_from_asm();};
int shell_area(void){return read_from_asm();};
int shell_area_end(void){return read_from_asm();};
// ... and so on