#include "ibam.hpp"

extern "C" {
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#include "const-c.inc"
}

MODULE = Sys::Ibam		PACKAGE = Sys::Ibam		

PROTOTYPES: DISABLE

INCLUDE: const-xs.inc

ibam*
ibam::new()

void
ibam::DESTROY()

void
ibam::_import_old_data()
	CODE:
		THIS->import();

void
ibam::_load_battery()
	CODE:
		THIS->load_battery();

void
ibam::_load_charge()
	CODE:
		THIS->load_charge();

void
ibam::_update_statistics()
	CODE:
		THIS->update_statistics();

void
ibam::_ignore_statistics()
	CODE:
		THIS->ignore_statistics();

void
ibam::_save()
	CODE:
		THIS->save();

string
ibam::_profile_filename(n, type)
		int n
		int type
	CODE:
		RETVAL = THIS->profile_filename(n, type);
	OUTPUT:
		RETVAL

int
ibam::_current_profile_number()
	CODE:
		RETVAL = THIS->current_profile_number();
	OUTPUT:
		RETVAL

int
ibam::_current_profile_type()
	CODE:
		RETVAL = THIS->current_profile_type();
	OUTPUT:
		RETVAL

void
ibam::_set_profile_logging(n)
		int n
	CODE:
		THIS->set_profile_logging(n);

int
ibam::_profile_logging_setting()
	CODE:
		RETVAL = THIS->profile_logging_setting();
	OUTPUT:
		RETVAL

int
ibam::_seconds_left_battery_bios()
	CODE:
		RETVAL = THIS->seconds_left_battery_bios();
	OUTPUT:
		RETVAL

int
ibam::_seconds_left_battery()
	CODE:
		RETVAL = THIS->seconds_left_battery();
	OUTPUT:
		RETVAL

int
ibam::_seconds_left_battery_adaptive()
	CODE:
		RETVAL = THIS->seconds_left_battery_adaptive();
	OUTPUT:
		RETVAL

int
ibam::_percent_battery_bios()
	CODE:
		RETVAL = THIS->percent_battery_bios();
	OUTPUT:
		RETVAL

int
ibam::_percent_battery()
	CODE:
		RETVAL = THIS->percent_battery();
	OUTPUT:
		RETVAL

int
ibam::_seconds_left_charge()
	CODE:
		RETVAL = THIS->seconds_left_charge();
	OUTPUT:
		RETVAL

int
ibam::_seconds_left_charge_adaptive()
	CODE:
		RETVAL = THIS->seconds_left_charge_adaptive();
	OUTPUT:
		RETVAL

int
ibam::_percent_charge()
	CODE:
		RETVAL = THIS->percent_charge();
	OUTPUT:
		RETVAL

int
ibam::_seconds_battery_total()
	CODE:
		RETVAL = THIS->seconds_battery_total();
	OUTPUT:
		RETVAL

int
ibam::_seconds_battery_total_adaptive()
	CODE:
		RETVAL = THIS->seconds_battery_total_adaptive();
	OUTPUT:
		RETVAL

int
ibam::_seconds_charge_total()
	CODE:
		RETVAL = THIS->seconds_charge_total();
	OUTPUT:
		RETVAL

int
ibam::_seconds_charge_total_adaptive()
	CODE:
		RETVAL = THIS->seconds_charge_total_adaptive();
	OUTPUT:
		RETVAL

int
ibam::_seconds_battery_correction()
	CODE:
		RETVAL = THIS->seconds_battery_correction();
	OUTPUT:
		RETVAL

int
ibam::_seconds_charge_correction()
	CODE:
		RETVAL = THIS->seconds_charge_correction();
	OUTPUT:
		RETVAL

int
ibam::_onBattery()
	CODE:
		RETVAL = THIS->onBattery();
	OUTPUT:
		RETVAL

int
ibam::_charging()
	CODE:
		RETVAL = THIS->charging();
	OUTPUT:
		RETVAL

int
ibam::_valid()
	CODE:
		RETVAL = THIS->valid();
	OUTPUT:
		RETVAL

void
ibam::_update()
	CODE:
		THIS->update();
