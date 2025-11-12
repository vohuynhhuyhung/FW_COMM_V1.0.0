/*-----------------------------------------------------------------------*/
/* Low level disk I/O module SKELETON for FatFs     (C)ChaN, 2025        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control modules to the FatFs module with a defined API.       */
/*-----------------------------------------------------------------------*/

#include "ff.h"			/* Basic definitions of FatFs */
#include "diskio.h"		/* Declarations FatFs MAI */

#include "stm32h7xx_hal.h"
#include "main.h"

/* Example: Declarations of the platform and disk functions in the project */
//#include "platform.h"
//#include "storage.h"

/* Example: Mapping of physical drive number for each drive */
//#define DEV_FLASH	0	/* Map FTL to physical drive 0 */
#define DEV_EMMC		0	/* Map MMC/SD card to physical drive 1 */
//#define DEV_USB		2	/* Map USB MSD to physical drive 2 */

extern MMC_HandleTypeDef hmmc1;
static volatile DSTATUS Stat = STA_NOINIT;

/*-----------------------------------------------------------------------*/
/* Get Drive Status                                                      */
/*-----------------------------------------------------------------------*/

//DSTATUS disk_status (
//	BYTE pdrv		/* Physical drive nmuber to identify the drive */
//)
//{
//	DSTATUS stat;
//	int result;
//
//	switch (pdrv) {
//	case DEV_RAM :
//		result = RAM_disk_status();
//
//		// translate the reslut code here
//
//		return stat;
//
//	case DEV_MMC :
//		result = MMC_disk_status();
//
//		// translate the reslut code here
//
//		return stat;
//
//	case DEV_USB :
//		result = USB_disk_status();
//
//		// translate the reslut code here
//
//		return stat;
//	}
//	return STA_NOINIT;
//}

DSTATUS disk_status (BYTE pdrv)
{
    if (pdrv != DEV_EMMC) return STA_NOINIT;

    if (HAL_MMC_GetCardState(&hmmc1) == HAL_MMC_CARD_TRANSFER) {
        return Stat & ~STA_NOINIT;
    }
    return Stat | STA_NOINIT;
}


/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

//DSTATUS disk_initialize (
//	BYTE pdrv				/* Physical drive nmuber to identify the drive */
//)
//{
//	DSTATUS stat;
//	int result;
//
//	switch (pdrv) {
//	case DEV_RAM :
//		result = RAM_disk_initialize();
//
//		// translate the reslut code here
//
//		return stat;
//
//	case DEV_MMC :
//		result = MMC_disk_initialize();
//
//		// translate the reslut code here
//
//		return stat;
//
//	case DEV_USB :
//		result = USB_disk_initialize();
//
//		// translate the reslut code here
//
//		return stat;
//	}
//	return STA_NOINIT;
//}

DSTATUS disk_initialize(BYTE pdrv)
{
    if (pdrv != DEV_EMMC)
        return STA_NOINIT;

    if (HAL_MMC_Init(&hmmc1) != HAL_OK) {
        Stat |= STA_NOINIT;
        return Stat;
    }

    if (HAL_MMC_InitCard(&hmmc1) != HAL_OK) {
        Stat |= STA_NOINIT;
        return Stat;
    }

    Stat &= ~STA_NOINIT;
    return Stat;
}


/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

//DRESULT disk_read (
//	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
//	BYTE *buff,		/* Data buffer to store read data */
//	LBA_t sector,	/* Start sector in LBA */
//	UINT count		/* Number of sectors to read */
//)
//{
//	DRESULT res;
//	int result;
//
//	switch (pdrv) {
//	case DEV_RAM :
//		// translate the arguments here
//
//		result = RAM_disk_read(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
//
//	case DEV_MMC :
//		// translate the arguments here
//
//		result = MMC_disk_read(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
//
//	case DEV_USB :
//		// translate the arguments here
//
//		result = USB_disk_read(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
//	}
//
//	return RES_PARERR;
//}

DRESULT disk_read (BYTE pdrv, BYTE *buff, LBA_t sector, UINT count)
{
    if (pdrv != DEV_EMMC)        return RES_PARERR;
    if (count == 0)              return RES_PARERR;
    if (Stat & STA_NOINIT)       return RES_NOTRDY;

    if (HAL_MMC_ReadBlocks(&hmmc1, (uint8_t*)buff, (uint32_t)sector, count, HAL_MAX_DELAY) != HAL_OK)
        return RES_ERROR;

    /* Nếu dùng DMA/IT: chờ trạng thái chuyển sẵn sàng */
    while (HAL_MMC_GetCardState(&hmmc1) != HAL_MMC_CARD_TRANSFER) { }

    return RES_OK;
}


/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

#if FF_FS_READONLY == 0

//DRESULT disk_write (
//	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
//	const BYTE *buff,	/* Data to be written */
//	LBA_t sector,		/* Start sector in LBA */
//	UINT count			/* Number of sectors to write */
//)
//{
//	DRESULT res;
//	int result;
//
//	switch (pdrv) {
//	case DEV_RAM :
//		// translate the arguments here
//
//		result = RAM_disk_write(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
//
//	case DEV_MMC :
//		// translate the arguments here
//
//		result = MMC_disk_write(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
//
//	case DEV_USB :
//		// translate the arguments here
//
//		result = USB_disk_write(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
//	}
//
//	return RES_PARERR;
//}
//
//#endif

DRESULT disk_write (BYTE pdrv, const BYTE *buff, LBA_t sector, UINT count)
{
    if (pdrv != DEV_EMMC)        return RES_PARERR;
    if (count == 0)              return RES_PARERR;
    if (Stat & STA_NOINIT)       return RES_NOTRDY;

    if (HAL_MMC_WriteBlocks(&hmmc1, (uint8_t*)buff, (uint32_t)sector, count, HAL_MAX_DELAY) != HAL_OK)
        return RES_ERROR;

    while (HAL_MMC_GetCardState(&hmmc1) != HAL_MMC_CARD_TRANSFER) { }

    return RES_OK;
}
#endif


/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

//DRESULT disk_ioctl (
//	BYTE pdrv,		/* Physical drive nmuber (0..) */
//	BYTE cmd,		/* Control code */
//	void *buff		/* Buffer to send/receive control data */
//)
//{
//	DRESULT res;
//	int result;
//
//	switch (pdrv) {
//	case DEV_RAM :
//
//		// Process of the command for the RAM drive
//
//		return res;
//
//	case DEV_MMC :
//
//		// Process of the command for the MMC/SD card
//
//		return res;
//
//	case DEV_USB :
//
//		// Process of the command the USB drive
//
//		return res;
//	}
//
//	return RES_PARERR;
//}

DRESULT disk_ioctl (BYTE pdrv, BYTE cmd, void *buff)
{
    if (pdrv != DEV_EMMC)        return RES_PARERR;
    if (Stat & STA_NOINIT)       return RES_NOTRDY;

    HAL_MMC_CardInfoTypeDef info;

    switch (cmd) {
    case CTRL_SYNC:
        return RES_OK;

    case GET_SECTOR_COUNT:
        HAL_MMC_GetCardInfo(&hmmc1, &info);
        *(LBA_t*)buff = (LBA_t)info.LogBlockNbr;
        return RES_OK;

    case GET_SECTOR_SIZE:
        HAL_MMC_GetCardInfo(&hmmc1, &info);
        *(WORD*)buff = (WORD)info.LogBlockSize;
        return RES_OK;

    case GET_BLOCK_SIZE:
        HAL_MMC_GetCardInfo(&hmmc1, &info);

        *(DWORD*)buff = (info.LogBlockSize ? (info.BlockSize / info.LogBlockSize) : 1);
        return RES_OK;

    default:
        return RES_PARERR;
    }
}

