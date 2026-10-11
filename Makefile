# SPDX-License-Identifier: GPL-2.0-only
# ################################################################
# Copyright (C) 2025, LunarKernel Project.
# All rights reserved.
# ################################################################

GCOV_PROFILE := y

# fix tracepoint header (trace_lse.h) not found under M= external module build
ccflags-y += -I$(src)

obj-$(CONFIG_LUNAR_SCHED_EXT) += lunar_bsp_ext_sched.o

lunar_bsp_ext_sched-y := \
	cpufreq_lse.o \
	lse_cfs.o \
	lse_main.o \
	lse_sched_cluster.o \
	lse_sysctl.o \
	lse_task_struct_ext.o \
	lse_util_track.o