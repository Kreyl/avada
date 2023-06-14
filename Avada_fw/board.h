/*
 * board.h
 *
 *  Created on: 01.02.2017
 *      Author: Kreyl
 */

#pragma once

// ==== General ====
#define BOARD_NAME          "Avada5"
#define APP_NAME            "Avada"

// MCU type as defined in the ST header.
#define STM32F072xB     // no matter, 8 or B

// Freq of external crystal if any. Leave it here even if not used.
#define CRYSTAL_FREQ_HZ         12000000

// Ch timer
#define STM32_ST_IRQ_PRIORITY   2
#define STM32_ST_USE_TIMER      2
#define STM32_TIMCLK1           (Clk.APBFreqHz)

#define SIMPLESENSORS_ENABLED   TRUE
#define BUTTONS_ENABLED         TRUE
#define ADC_REQUIRED            TRUE
#define I2C1_ENABLED            FALSE
#define I2C_USE_SEMAPHORE       FALSE

// ADC timer
#define ADC_TIM                 TIM1

#if 1 // ========================== GPIO =======================================
// PortMinTim_t: GPIO, Pin, Tim, TimChnl, invInverted, omPushPull, TopValue

// Buttons
#define BTN_PIN         GPIOA, 0, pudPullDown

// LEDs
#define INFO_LED        GPIOB, 14, omPushPull
#define GREEN_LED       GPIOA, 4

// Measurement
#define LED_CURR_PIN    GPIOA, 3, 3 // PA3, ADC channel 3

// Battery
#define IS_CHARGING     GPIOC, 5, pudPullUp

// Buzzer
#define BUZZER_PIN      GPIOC, 6, TIM3, 1, invNotInverted, omPushPull, 45

// UART
#define UART_GPIO       GPIOA
#define UART_TX_PIN     9
#define UART_RX_PIN     10

// USB
#define USB_DETECT_PIN  GPIOC, 13
#define USB_DM          GPIOA, 11
#define USB_DP          GPIOA, 12

#endif // GPIO

#if 1 // ========================== USB ========================================
#define USBDrv          USBD1   // USB driver to use

// CRS
#define CRS_PRESCALER   RCC_CRS_SYNC_DIV1
#define CRS_SOURCE      RCC_CRS_SYNC_SOURCE_USB
#define CRS_POLARITY    RCC_CRS_SYNC_POLARITY_RISING
#define CRS_RELOAD_VAL  ((48000000 / 1000) - 1) // Ftarget / Fsync - 1
#define CRS_ERROR_LIMIT 34
#define HSI48_CALIBRATN 32
#endif

#if 1 // =========================== DMA =======================================
#define STM32_DMA_REQUIRED  TRUE
// ==== Uart ====
#define UART_DMA_TX_MODE(Chnl) (STM32_DMA_CR_CHSEL(Chnl) | DMA_PRIORITY_LOW | STM32_DMA_CR_MSIZE_BYTE | STM32_DMA_CR_PSIZE_BYTE | STM32_DMA_CR_MINC | STM32_DMA_CR_DIR_M2P | STM32_DMA_CR_TCIE)
#define UART_DMA_RX_MODE(Chnl) (STM32_DMA_CR_CHSEL(Chnl) | DMA_PRIORITY_MEDIUM | STM32_DMA_CR_MSIZE_BYTE | STM32_DMA_CR_PSIZE_BYTE | STM32_DMA_CR_MINC | STM32_DMA_CR_DIR_P2M | STM32_DMA_CR_CIRC)
#define UART_DMA_TX     STM32_DMA_STREAM_ID(1, 2)
#define UART_DMA_RX     STM32_DMA_STREAM_ID(1, 3)
#define UART_DMA_CHNL   0   // Dummy


#define LCD_DMA         STM32_DMA_STREAM_ID(1, 7)  // USART3 TX

#define LEDWS_DMA       STM32_DMA_STREAM_ID(1, 5)  // SPI2 TX

#if ADC_REQUIRED
#define ADC_DMA         STM32_DMA_STREAM_ID(1, 1)
#define ADC_DMA_MODE    STM32_DMA_CR_CHSEL(0) |   /* dummy */ \
                        DMA_PRIORITY_HIGH | \
                        STM32_DMA_CR_MSIZE_HWORD | \
                        STM32_DMA_CR_PSIZE_HWORD | \
                        STM32_DMA_CR_MINC |       /* Memory pointer increase */ \
                        STM32_DMA_CR_DIR_P2M |    /* Direction is peripheral to memory */ \
                        STM32_DMA_CR_TCIE         /* Enable Transmission Complete IRQ */
#endif // ADC

#endif // DMA

#if 1 // ========================== USART ======================================
#define PRINTF_FLOAT_EN FALSE
#define UART_TXBUF_SZ   2048
#define UART_RXBUF_SZ   512
#define CMD_BUF_SZ      256

#define CMD_UART        USART1


#define CMD_UART_PARAMS \
    CMD_UART, UART_GPIO, UART_TX_PIN, UART_GPIO, UART_RX_PIN, \
    UART_DMA_TX, UART_DMA_RX, UART_DMA_TX_MODE(UART_DMA_CHNL), UART_DMA_RX_MODE(UART_DMA_CHNL), \
    uartclkHSI // independent clock

#endif
