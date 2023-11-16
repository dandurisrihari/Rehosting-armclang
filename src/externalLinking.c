#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <pthread.h>

void ble_npl_hw_set_isr(void) {
    printf("ble_npl_hw_set_isr\n");
}

void ble_npl_hw_enter_critical(void) {
    printf("ble_npl_hw_enter_critical\n");
}

void ble_npl_hw_exit_critical(void) {
    printf("ble_npl_hw_exit_critical\n");
}

void vApplicationMallocFailedHook(void) {
    printf("vApplicationMallocFailedHook\n");
}

void vApplicationStackOverflowHook(void) {
    printf("vApplicationStackOverflowHook\n");
}

void vPortStartFirstTask(void) {
    printf("vPortStartFirstTask\n");
}

void npl_freertos_hw_set_isr(void) {
    printf("npl_freertos_hw_set_isr\n");
}

void npl_freertos_hw_enter_critical(void) {
    printf("npl_freertos_hw_enter_critical\n");
}

void npl_freertos_hw_exit_critical(void) {
    printf("npl_freertos_hw_exit_critical\n");
}

void nimble_port_ll_task_func(void) {
    printf("nimble_port_ll_task_func\n");
}

void nimble_port_get_dflt_eventq(void) {
    printf("nimble_port_get_dflt_eventq\n");
}

void nimble_port_init(void) {
    printf("nimble_port_init\n");
}

void nimble_port_run(void) {
    printf("nimble_port_run\n");
}

void nimble_port_stop(void) {
    printf("nimble_port_stop\n");
}


void nimble_port_ll_init(void) {
    printf("nimble_port_ll_init\n");
}

void nimble_port_ll_stop(void) {
    printf("nimble_port_ll_stop\n");
}

int main(void) {
    printf("main\n");
}