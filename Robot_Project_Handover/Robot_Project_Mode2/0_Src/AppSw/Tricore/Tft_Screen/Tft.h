/*
 * Tft.h
 *
 *  Created on: 07.02.2019
 *      Author: Gaizi
 */

#ifndef TFT_SCREEN_TFT_H_
#define TFT_SCREEN_TFT_H_

#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "IfxPort.h"
#include "IfxStm.h"
#include "IfxQspi_regdef.h"
#include "IfxQspi_reg.h"
#include "IfxScuWdt.h"
//#include "Cpu0_Main.h"
#include "IFX_logo.h"

#include <stdarg.h>
#include <string.h>

void qspi0_init();

int usr_vsprintf(char *dest, const char *fmt, va_list ap);
int usr_sprintf(char *buf, char const *fmt, ...);

void GLCD_clear(unsigned short color);
void GLCD_init(void);
void GLCD_displayChar(unsigned int ln, unsigned int col, unsigned char c);
void GLCD_displayStringLn(unsigned int ln, const char *s);

extern void lock_wdtcon (void);
extern void unlock_wdtcon (void);
void GLCD_bitmap(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const void *bitmap);


#define BGL_INIT()			(P20_OUT.B.P13 = 0, P20_IOCR12.B.PC13 = 0x10)
#define BGL_ON()			(P20_OUT.B.P13 = 1)

/* definition of used chip selects */
#define CS_CPLD				8
#define CS_TOUCH			9
#define CS_NONE				15

/* error flag bits in STATUS and FLAGSCLEAR */
#define QSPI_ERROR_PE		(1 << 0)	/* Parity Error */
#define QSPI_ERROR_UCE		(1 << 1)	/* unexpected Configuration Error */
#define QSPI_ERROR_BRE		(1 << 2)	/* Baud Rate Error */
#define QSPI_ERROR_TXOVF	(1 << 3)	/* TXFIFO Overflow */
#define QSPI_ERROR_TXUNF	(1 << 4)	/* TXFIFO Underflow */
#define QSPI_ERROR_RXOVF	(1 << 5)	/* RXFIFO Overflow */
#define QSPI_ERROR_RXUNF	(1 << 6)	/* RXFIFO Underflow */
#define QSPI_ERROR_EXPECT	(1 << 7)	/* Expect Timeout error */
#define QSPI_ERROR_SE		(1 << 8)	/* SLSI misplaced inactivation */


/** \\brief  Offset for Ifx_QSPI_GLOBALCON_Bits.EXPECT */
#define IFX_QSPI_GLOBALCON_EXPECT_OFF (10)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON_Bits.SI */
#define IFX_QSPI_GLOBALCON_SI_OFF (9)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON1_Bits.PT1 */
#define IFX_QSPI_GLOBALCON1_PT1_OFF (20)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON1_Bits.USREN */
#define IFX_QSPI_GLOBALCON1_USREN_OFF (15)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON1_Bits.PT2EN */
#define IFX_QSPI_GLOBALCON1_PT2EN_OFF (12)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON1_Bits.PT1EN */
#define IFX_QSPI_GLOBALCON1_PT1EN_OFF (11)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON1_Bits.RXEN */
#define IFX_QSPI_GLOBALCON1_RXEN_OFF (10)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON1_Bits.TXEN */
#define IFX_QSPI_GLOBALCON1_TXEN_OFF (9)
/** \\brief  Offset for Ifx_QSPI_GLOBALCON1_Bits.ERRORENS */
#define IFX_QSPI_GLOBALCON1_ERRORENS_OFF (0)
/** \\brief  Offset for Ifx_QSPI_SSOC_Bits.OEN */
#define IFX_QSPI_SSOC_OEN_OFF (16)
/** \\brief  Offset for Ifx_QSPI_ECON_Bits.CPOL */
#define IFX_QSPI_ECON_CPOL_OFF (13)
/** \\brief  Offset for Ifx_QSPI_ECON_Bits.C */
#define IFX_QSPI_ECON_C_OFF (10)
/** \\brief  Offset for Ifx_QSPI_ECON_Bits.B */
#define IFX_QSPI_ECON_B_OFF (8)
/** \\brief  Offset for Ifx_QSPI_ECON_Bits.A */
#define IFX_QSPI_ECON_A_OFF (6)
/** \\brief  Offset for Ifx_QSPI_ECON_Bits.Q */
#define IFX_QSPI_ECON_Q_OFF (0)



/** \\brief  Offset for Ifx_QSPI_BACON_Bits.CS */
#define IFX_QSPI_BACON_CS_OFF (28)
/** \\brief  Offset for Ifx_QSPI_BACON_Bits.DL */
#define IFX_QSPI_BACON_DL_OFF (23)
/** \\brief  Mask for Ifx_QSPI_BACON_Bits.LAST */
#define IFX_QSPI_BACON_LAST_MSK (0x1)
/** \\brief  Offset for Ifx_QSPI_BACON_Bits.LAST */
#define IFX_QSPI_BACON_LAST_OFF (0)
/** \\brief  Length for Ifx_QSPI_BACON_Bits.LEAD */
//#define IFX_QSPI_BACON_LEAD_LEN (3)
/** \\brief  Mask for Ifx_QSPI_BACON_Bits.LEAD */
#define IFX_QSPI_BACON_LEAD_MSK (0x7)
/** \\brief  Offset for Ifx_QSPI_BACON_Bits.LEAD */
#define IFX_QSPI_BACON_LEAD_OFF (10)
/** \\brief  Mask for Ifx_QSPI_BACON_Bits.MSB */
#define IFX_QSPI_BACON_MSB_MSK (0x1)
/** \\brief  Offset for Ifx_QSPI_BACON_Bits.MSB */
#define IFX_QSPI_BACON_MSB_OFF (21)


/* Colour conversion macros: RGB888 ==> RGB565 */
/* GLCD RGB color definitions (RGB565 format) */
#define COL_R_WIDTH			(5)
#define COL_R_POS			(11)
#define COL_G_WIDTH			(6)
#define COL_G_POS			(5)
#define COL_B_WIDTH			(5)
#define COL_B_POS			(0)

#define COL_PART(x, w, p)	((((x) * (1 << (w))) >> 8) << (p))

#define COL_RGB565(r, g, b)	( COL_PART((r), COL_R_WIDTH, COL_R_POS)\
							| COL_PART((g), COL_G_WIDTH, COL_G_POS)\
							| COL_PART((b), COL_B_WIDTH, COL_B_POS))

#define COLOR_BLACK			COL_RGB565(  0,   0,   0)
#define COLOR_NAVY			COL_RGB565(  0,   0, 127)
#define COLOR_DARKGREEN		COL_RGB565(  0, 127,   0)
#define COLOR_DARKCYAN		COL_RGB565(  0, 127, 127)
#define COLOR_MAROON		COL_RGB565(127,   0,   0)
#define COLOR_PURPLE		COL_RGB565(127,   0, 127)
#define COLOR_OLIVE			COL_RGB565(127, 127,   0)
#define COLOR_LIGHTGREY		COL_RGB565(192, 192, 192)
#define COLOR_DARKGREY		COL_RGB565(127, 127, 127)
#define COLOR_BLUE			COL_RGB565(  0,   0, 255)
#define COLOR_GREEN			COL_RGB565(  0, 255,   0)
#define COLOR_CYAN			COL_RGB565(  0, 255, 255)
#define COLOR_RED			COL_RGB565(255,   0,   0)
#define COLOR_MAGENTA		COL_RGB565(255,   0, 255)
#define COLOR_YELLOW		COL_RGB565(255, 255,   0)
#define COLOR_WHITE			COL_RGB565(255, 255, 255)


/* dimensions of LCD and used font */
#define LCD_WIDTH		320
#define LCD_HEIGHT		240
#define CHAR_HEIGHT		24
#define CHAR_WIDTH		16
#define MAX_LINES		(LCD_HEIGHT / CHAR_HEIGHT)

#ifdef USE_NORMAL_VDIR
/* "normal" vertical direction: bottom to top */
#define LINENO(n)		((n) * CHAR_HEIGHT)
#else
/* "non-normal" vertical direction: top to bottom */
#define LINENO(n)		(((MAX_LINES - (n)) * CHAR_HEIGHT) - 1)
#endif /* USE_NORMAL_VDIR */

#define LINE0			LINENO(0)
#define LINE1			LINENO(1)
#define LINE2			LINENO(2)
#define LINE3			LINENO(3)
#define LINE4			LINENO(4)
#define LINE5			LINENO(5)
#define LINE6			LINENO(6)
#define LINE7			LINENO(7)
#define LINE8			LINENO(8)
#define LINE9			LINENO(9)


#define WIDTH 320
#define HEIGHT 240

/* LCD controller IDs */
#define ID_SPFD5408B		0x5408
#define ID_ILI9320			0x9320
#define ID_ILI9325			0x9325
#define ID_ILI9341			0x9341



#endif /* TFT_SCREEN_TFT_H_ */
