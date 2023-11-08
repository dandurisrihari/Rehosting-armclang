#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <pthread.h>

int readFromAsmRetInt(void){
    return 0;
}

int readFromIntrinsicRetInt(void){
    return 0;
}

typedef struct {
    int a;
    int b;
} retStruct;

retStruct readFromAsmRetStruct(void){
    retStruct ret;
    ret.a = 0;
    ret.b = 0;
    return ret;
}

void z_arm_int_exit(void){
    return;
}

void z_arm_fatal_error(unsigned int reason, const void *esf){
    return;
}

char _vector_start;
char _vector_end;
char __rom_start_start;
char __rom_start_load_start;

char __rom_start_end;
char __rom_start_size;
char __text_start;
char __text_load_start;
char __text_end;
char __text_size;
char __init_EARLY_start;
char __init_PRE_KERNEL_1_start;
char __init_PRE_KERNEL_2_start;
char __init_POST_KERNEL_start;
char __init_APPLICATION_start;
char __init_SMP_start;
char __init_start;
char __init_load_start;

char _isr_wrapper;
char __init_end;
char _device_list_start;
char _device_list_end;
char __device_area_start;
char __device_area_load_start;

char __device_area_end;
char __sw_isr_table_start;
char __sw_isr_table_load_start;

char __sw_isr_table_end;
char __sw_isr_table_size;
char __initlevel_error_start;
char __initlevel_error_load_start;

char __initlevel_error_end;
char __app_shmem_regions_start;
char __app_shmem_regions_load_start;

char __app_shmem_regions_end;
char _bt_l2cap_fixed_chan_list_start;
char _bt_l2cap_fixed_chan_list_end;
char __bt_l2cap_fixed_chan_area_start;
char __bt_l2cap_fixed_chan_area_load_start;

char __bt_l2cap_fixed_chan_area_end;
char _bt_gatt_service_static_list_start;
char _bt_gatt_service_static_list_end;
char __bt_gatt_service_static_area_start;
char __bt_gatt_service_static_area_load_start;

char __bt_gatt_service_static_area_end;
char _k_p4wq_initparam_list_start;
char _k_p4wq_initparam_list_end;
char __k_p4wq_initparam_area_start;
char __k_p4wq_initparam_area_load_start;

char __k_p4wq_initparam_area_end;
char _log_strings_list_start;
char _log_strings_list_end;
char __log_strings_area_start;
char __log_strings_area_load_start;

char __log_strings_area_end;
char _log_const_list_start;
char _log_const_list_end;
char __log_const_area_start;
char __log_const_area_load_start;

char __log_const_area_end;
char _shell_list_start;
char _shell_list_end;
char __shell_area_start;
char __shell_area_load_start;

char __shell_area_end;
char _shell_root_cmds_list_start;
char _shell_root_cmds_list_end;
char __shell_root_cmds_area_start;
char __shell_root_cmds_area_load_start;

char __shell_root_cmds_area_end;
char _shell_subcmds_list_start;
char _shell_subcmds_list_end;
char __shell_subcmds_area_start;
char __shell_subcmds_area_load_start;

char __shell_subcmds_area_end;
char _shell_dynamic_subcmds_list_start;
char _shell_dynamic_subcmds_list_end;
char __shell_dynamic_subcmds_area_start;
char __shell_dynamic_subcmds_area_load_start;

char __shell_dynamic_subcmds_area_end;
char _cfb_font_list_start;
char _cfb_font_list_end;
char __cfb_font_area_start;
char __cfb_font_area_load_start;

char __cfb_font_area_end;
char _tracing_backend_list_start;
char _tracing_backend_list_end;
char __tracing_backend_area_start;
char __tracing_backend_area_load_start;

char __tracing_backend_area_end;
char __zephyr_dbg_info_start;
char __zephyr_dbg_info_load_start;

char __zephyr_dbg_info_end;
char __zephyr_dbg_info_size;
char __static_thread_data_list_start;
char __static_thread_data_list_end;
char ___static_thread_data_area_start;
char ___static_thread_data_area_load_start;

char ___static_thread_data_area_end;
char _log_link_list_start;
char _log_link_list_end;
char __log_link_area_start;
char __log_link_area_load_start;

char __log_link_area_end;
char _log_backend_list_start;
char _log_backend_list_end;
char __log_backend_area_start;
char __log_backend_area_load_start;

char __log_backend_area_end;
char __rodata_start;
char __rodata_load_start;

char __rodata_end;
char __rodata_size;
char __ARM_exidx_start;
char __ARM_exidx_load_start;

char __ARM_exidx_end;
char __ARM_exidx_size;
char __data_load_start;

char __data_end;
char __data_size;
char __device_states_start;
char __device_states_load_start;

char __device_states_end;
char __device_states_size;
char _log_dynamic_list_start;
char _log_dynamic_list_end;
char __log_dynamic_area_start;
char __log_dynamic_area_load_start;

char __log_dynamic_area_end;
char _k_timer_list_start;
char _k_timer_list_end;
char __k_timer_area_start;
char __k_timer_area_load_start;

char __k_timer_area_end;
char _k_mem_slab_list_start;
char _k_mem_slab_list_end;
char __k_mem_slab_area_start;
char __k_mem_slab_area_load_start;

char __k_mem_slab_area_end;
char _k_heap_list_start;
char _k_heap_list_end;
char __k_heap_area_start;
char __k_heap_area_load_start;

char __k_heap_area_end;
char _k_mutex_list_start;
char _k_mutex_list_end;
char __k_mutex_area_start;
char __k_mutex_area_load_start;

char __k_mutex_area_end;
char _k_stack_list_start;
char _k_stack_list_end;
char __k_stack_area_start;
char __k_stack_area_load_start;

char __k_stack_area_end;
char _k_msgq_list_start;
char _k_msgq_list_end;
char __k_msgq_area_start;
char __k_msgq_area_load_start;

char __k_msgq_area_end;
char _k_mbox_list_start;
char _k_mbox_list_end;
char __k_mbox_area_start;
char __k_mbox_area_load_start;

char __k_mbox_area_end;
char _k_pipe_list_start;
char _k_pipe_list_end;
char __k_pipe_area_start;
char __k_pipe_area_load_start;

char __k_pipe_area_end;
char _k_sem_list_start;
char _k_sem_list_end;
char __k_sem_area_start;
char __k_sem_area_load_start;

char __k_sem_area_end;
char _k_queue_list_start;
char _k_queue_list_end;
char __k_queue_area_start;
char __k_queue_area_load_start;

char __k_queue_area_end;
char _k_condvar_list_start;
char _k_condvar_list_end;
char __k_condvar_area_start;
char __k_condvar_area_load_start;

char __k_condvar_area_end;
char _k_event_list_start;
char _k_event_list_end;
char __k_event_area_start;
char __k_event_area_load_start;

char __k_event_area_end;
char _net_buf_pool_list_start;
char _net_buf_pool_list_end;
char __net_buf_pool_area_start;
char __net_buf_pool_area_load_start;

char __net_buf_pool_area_end;
char _log_mpsc_pbuf_list_start;
char _log_mpsc_pbuf_list_end;
char __log_mpsc_pbuf_area_start;
char __log_mpsc_pbuf_area_load_start;

char __log_mpsc_pbuf_area_end;
char _log_msg_ptr_list_start;
char _log_msg_ptr_list_end;
char __log_msg_ptr_area_start;
char __log_msg_ptr_area_load_start;

char __log_msg_ptr_area_end;
char __ramfunc_start;
char __ramfunc_load_start;

char __ramfunc_end;
char __ramfunc_size;
char __noinit_start;
char __noinit_load_start;

char __noinit_end;
char __noinit_size;
char __bss_start;
char __bss_load_start;

char __bss_end;
char __bss_size;
char __last_ram_section_start;
char __last_ram_section_load_start;

char __last_ram_section_end;
char __last_ram_section_size;
char __rom_region_start;

char __rom_region_load_start;

char __rom_region_end;
char __text_region_start;

char __text_region_load_start;

char __text_region_end;
char __rodata_region_start;

char __rodata_region_load_start;

char __rodata_region_end;
char __ram_region_start;

char __ram_region_load_start;

char __ram_region_end;
char __data_region_start;

char __data_region_load_start;

char __data_region_end;
char __kernel_ram_start;
char __kernel_ram_end;
char __kernel_ram_size;
char _image_ram_start;
char ARM_LIB_STACKHEAP;
char __init_size;
char __device_area_size;
char __initlevel_error_size;
char __app_shmem_regions_size;
char __bt_l2cap_fixed_chan_area_size;
char __bt_gatt_service_static_area_size;
char __k_p4wq_initparam_area_size;
char __log_strings_area_size;
char __log_const_area_size;
char __shell_area_size;
char __shell_root_cmds_area_size;
char __shell_subcmds_area_size;
char __shell_dynamic_subcmds_area_size;
char __cfb_font_area_size;
char __tracing_backend_area_size;
char ___static_thread_data_area_size;
char __log_link_area_size;
char __log_backend_area_size;
char __log_dynamic_area_size;
char __k_timer_area_size;
char __k_mem_slab_area_size;
char __k_heap_area_size;
char __k_mutex_area_size;
char __k_stack_area_size;
char __k_msgq_area_size;
char __k_mbox_area_size;
char __k_pipe_area_size;
char __k_sem_area_size;
char __k_queue_area_size;
char __k_condvar_area_size;
char __k_event_area_size;
char __net_buf_pool_area_size;
char __log_mpsc_pbuf_area_size;
char __log_msg_ptr_area_size;
char __rom_region_size;
char __text_region_size;
char __rodata_region_size;
char __ram_region_size;
char __data_region_size;

char __kernel_ram_start;
char __kernel_ram_end;
char __kernel_ram_size;
char _image_ram_star;
char ARM_LIB_STACKHEAP;
char __init_size;
char __device_area_size;
char __initlevel_error_size;
char __app_shmem_regions_size;
char __bt_l2cap_fixed_chan_area_size;
char __bt_gatt_service_static_area_size;
char __k_p4wq_initparam_area_size;
char __log_strings_area_size;
char __log_const_area_size;
char __shell_area_size;
char __shell_root_cmds_area_size;
char __shell_subcmds_area_siz;
char __shell_dynamic_subcmds_area_size;
char __cfb_font_area_size;
char __tracing_backend_area_size;
char ___static_thread_data_area_size;
char __log_link_area_siz;
char __log_backend_area_size;
char __log_dynamic_area_size;
char __k_timer_area_siz;
char __k_mem_slab_area_size;
char __k_heap_area_size;
char __k_mutex_area_size;
char __k_stack_area_siz;
char __k_msgq_area_size;
char __k_mbox_area_size;
char __k_pipe_area_size;
char __k_sem_area_size;
char __k_queue_area_size;
char __k_condvar_area_size;
char __k_event_area_size;
char __net_buf_pool_area_size;
char __log_mpsc_pbuf_area_size;
char __log_msg_ptr_area_siz;
char __rom_region_size;
char __text_region_siz;
char __rodata_region_size;
char __ram_region_size;
char __data_region_size;

char _ram_vector_start;

const int __aeabi_EDOM = 33;    /**< Argument too large */
const int __aeabi_ERANGE = 34;  /**< Result too large */
const int __aeabi_EILSEQ = 138; /**< Illegal byte sequence */
unsigned char const __aeabi_ctype_table_[257];



void arch_cpu_atomic_idle(unsigned int key) {
    // Dummy implementation
}

void z_check_thread_stack_fail(uintptr_t addr) {
    // Dummy implementation
}

void arch_cpu_idle(void) {
    // Dummy implementation
}

void z_arm_cpu_idle_init(void) {
    // Dummy implementation
}

void arch_switch_to_main_thread(void *main_thread, void *stack,
                                size_t stack_size, int _main) {
    // Dummy implementation
}

void z_SysNmiOnReset(unsigned int reason) {
    // Dummy implementation
}


void arch_new_thread(void *new_thread, void *stack,
                        size_t stack_size, int entry,
                        void *p1, void *p2, void *p3,
                        int prio, unsigned int options) {
    // Dummy implementation
}