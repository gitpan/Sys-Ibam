#include "ibam.hpp"

extern "C" {
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#include "const-c.inc"
}

MODULE = Sys::Ibam		PACKAGE = Sys::Ibam		

PROTOTYPES: ENABLE

INCLUDE: const-xs.inc

ibam*
ibam::new()

void
ibam::DESTROY()

void
ibam::import_old_data()
	CODE:
		THIS->import();

void
ibam::load_battery()

void
ibam::load_charge()

void
ibam::update_statistics()

void
ibam::ignore_statistics()

void
ibam::save()

string
ibam::profile_filename(n, type)
		int n
		int type

int
ibam::current_profile_number()

int
ibam::current_profile_type()

void
ibam::set_profile_logging(n)
		int n

int
ibam::profile_logging_setting()

int
ibam::seconds_left_battery_bios()

int
ibam::seconds_left_battery()

int
ibam::seconds_left_battery_adaptive()

int
ibam::percent_battery_bios()

int
ibam::percent_battery()

int
ibam::seconds_left_charge()

int
ibam::seconds_left_charge_adaptive()

int
ibam::percent_charge()

int
ibam::seconds_battery_total()

int
ibam::seconds_battery_total_adaptive()

int
ibam::seconds_charge_total()

int
ibam::seconds_charge_total_adaptive()

int
ibam::seconds_battery_correction()

int
ibam::seconds_charge_correction()

int
ibam::onBattery()

int
ibam::charging()

int
ibam::valid()

void
ibam::update()
