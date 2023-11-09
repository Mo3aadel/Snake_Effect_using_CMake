#include "../inc/LBit_Math.h"
#include "../inc/LSTD_Types.h"
#include "MDIO_Private.h"
#include "MDIO_Config.h"
#include "MDIO_Interface.h"

void DIO_voidSetPortDirection(u8 Copy_u8Port, u8 Copy_u8Direction)
{
	switch (Copy_u8Port)
	{
	case PORTA_REG:
		DDRA = Copy_u8Direction;
		break;
	case PORTB_REG:
		DDRB = Copy_u8Direction;
		break;
	case PORTC_REG:
		DDRC = Copy_u8Direction;
		break;
	case PORTD_REG:
		DDRD = Copy_u8Direction;
		break;
	}
}

void DIO_voidSetPinDirection(u8 Copy_u8Port, u8 Copy_u8PinNo, u8 Copy_u8Direction)
{
	if (Copy_u8PinNo <= 7)
	{
		if (Copy_u8Direction == PIN_DIRECTION_OUTPUT)
		{
			switch (Copy_u8Port)
			{
			case PORTA_REG:
				SET_BIT(DDRA, Copy_u8PinNo);
				break;
			case PORTB_REG:
				SET_BIT(DDRB, Copy_u8PinNo);
				break;
			case PORTC_REG:
				SET_BIT(DDRC, Copy_u8PinNo);
				break;
			case PORTD_REG:
				SET_BIT(DDRD, Copy_u8PinNo);
				break;
			}
		}
		else if (Copy_u8Direction == PIN_DIRECTION_INPUT)
		{
			switch (Copy_u8Port)
			{
			case PORTA_REG:
				CLR_BIT(DDRA, Copy_u8PinNo);
				break;
			case PORTB_REG:
				CLR_BIT(DDRB, Copy_u8PinNo);
				break;
			case PORTC_REG:
				CLR_BIT(DDRC, Copy_u8PinNo);
				break;
			case PORTD_REG:
				CLR_BIT(DDRD, Copy_u8PinNo);
				break;
			}
		}
	}
}

void DIO_voidSetPortValue(u8 Copy_u8Port, u8 Copy_u8Value)
{
	switch (Copy_u8Port)
	{
	case PORTA_REG:
		PORTA = Copy_u8Value;
		break;
	case PORTB_REG:
		PORTB = Copy_u8Value;
		break;
	case PORTC_REG:
		PORTC = Copy_u8Value;
		break;
	case PORTD_REG:
		PORTD = Copy_u8Value;
		break;
	}
}

void DIO_voidSetPinValue(u8 Copy_u8Port, u8 Copy_u8PinNo, u8 Copy_u8PinValue)
{
	if (Copy_u8PinNo <= 7)
	{
		if (Copy_u8PinValue == PIN_VALUE_HIGH)
		{
			switch (Copy_u8Port)
			{
			case PORTA_REG:
				SET_BIT(PORTA, Copy_u8PinNo);
				break;
			case PORTB_REG:
				SET_BIT(PORTB, Copy_u8PinNo);
				break;
			case PORTC_REG:
				SET_BIT(PORTC, Copy_u8PinNo);
				break;
			case PORTD_REG:
				SET_BIT(PORTD, Copy_u8PinNo);
				break;
			}
		}
		else if (Copy_u8PinValue == PIN_VALUE_LOW)
		{
			switch (Copy_u8Port)
			{
			case PORTA_REG:
				CLR_BIT(PORTA, Copy_u8PinNo);
				break;
			case PORTB_REG:
				CLR_BIT(PORTB, Copy_u8PinNo);
				break;
			case PORTC_REG:
				CLR_BIT(PORTC, Copy_u8PinNo);
				break;
			case PORTD_REG:
				CLR_BIT(PORTD, Copy_u8PinNo);
				break;
			}
		}
	}
}

u8 DIO_u8GetPinValue(u8 Copy_u8Port, u8 Copy_u8PinNo)
{
	u8 Local_u8Reading = 0;
	if (Copy_u8PinNo < 8)
	{
		switch (Copy_u8Port)
		{
		case PORTA_REG:
			Local_u8Reading = GET_BIT(PINA, Copy_u8PinNo);
			break;
		case PORTB_REG:
			Local_u8Reading = GET_BIT(PINB, Copy_u8PinNo);
			break;
		case PORTC_REG:
			Local_u8Reading = GET_BIT(PINC, Copy_u8PinNo);
			break;
		case PORTD_REG:
			Local_u8Reading = GET_BIT(PIND, Copy_u8PinNo);
			break;
		}
	}
	return Local_u8Reading;
}
