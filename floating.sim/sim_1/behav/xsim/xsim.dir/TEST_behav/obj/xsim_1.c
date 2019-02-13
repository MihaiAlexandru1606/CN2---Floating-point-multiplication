/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_12(char*, char *);
extern void execute_2592(char*, char *);
extern void execute_2589(char*, char *);
extern void execute_2590(char*, char *);
extern void execute_2591(char*, char *);
extern void execute_15(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_2544(char*, char *);
extern void execute_196(char*, char *);
extern void execute_2543(char*, char *);
extern void execute_99(char*, char *);
extern void execute_101(char*, char *);
extern void execute_103(char*, char *);
extern void execute_105(char*, char *);
extern void execute_107(char*, char *);
extern void execute_109(char*, char *);
extern void execute_111(char*, char *);
extern void execute_113(char*, char *);
extern void execute_115(char*, char *);
extern void execute_117(char*, char *);
extern void execute_119(char*, char *);
extern void execute_121(char*, char *);
extern void execute_123(char*, char *);
extern void execute_125(char*, char *);
extern void execute_127(char*, char *);
extern void execute_129(char*, char *);
extern void execute_131(char*, char *);
extern void execute_133(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_139(char*, char *);
extern void execute_141(char*, char *);
extern void execute_143(char*, char *);
extern void execute_145(char*, char *);
extern void execute_148(char*, char *);
extern void execute_150(char*, char *);
extern void execute_152(char*, char *);
extern void execute_154(char*, char *);
extern void execute_156(char*, char *);
extern void execute_158(char*, char *);
extern void execute_160(char*, char *);
extern void execute_162(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_170(char*, char *);
extern void execute_172(char*, char *);
extern void execute_174(char*, char *);
extern void execute_176(char*, char *);
extern void execute_178(char*, char *);
extern void execute_180(char*, char *);
extern void execute_182(char*, char *);
extern void execute_184(char*, char *);
extern void execute_186(char*, char *);
extern void execute_188(char*, char *);
extern void execute_190(char*, char *);
extern void execute_192(char*, char *);
extern void execute_194(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_2546(char*, char *);
extern void execute_2548(char*, char *);
extern void execute_2588(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_8(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[125] = {(funcp)execute_12, (funcp)execute_2592, (funcp)execute_2589, (funcp)execute_2590, (funcp)execute_2591, (funcp)execute_15, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)execute_2544, (funcp)execute_196, (funcp)execute_2543, (funcp)execute_99, (funcp)execute_101, (funcp)execute_103, (funcp)execute_105, (funcp)execute_107, (funcp)execute_109, (funcp)execute_111, (funcp)execute_113, (funcp)execute_115, (funcp)execute_117, (funcp)execute_119, (funcp)execute_121, (funcp)execute_123, (funcp)execute_125, (funcp)execute_127, (funcp)execute_129, (funcp)execute_131, (funcp)execute_133, (funcp)execute_135, (funcp)execute_137, (funcp)execute_139, (funcp)execute_141, (funcp)execute_143, (funcp)execute_145, (funcp)execute_148, (funcp)execute_150, (funcp)execute_152, (funcp)execute_154, (funcp)execute_156, (funcp)execute_158, (funcp)execute_160, (funcp)execute_162, (funcp)execute_164, (funcp)execute_166, (funcp)execute_168, (funcp)execute_170, (funcp)execute_172, (funcp)execute_174, (funcp)execute_176, (funcp)execute_178, (funcp)execute_180, (funcp)execute_182, (funcp)execute_184, (funcp)execute_186, (funcp)execute_188, (funcp)execute_190, (funcp)execute_192, (funcp)execute_194, (funcp)execute_276, (funcp)execute_277, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)execute_295, (funcp)execute_296, (funcp)execute_297, (funcp)execute_2546, (funcp)execute_2548, (funcp)execute_2588, (funcp)transaction_0, (funcp)transaction_1, (funcp)transaction_2, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_5, (funcp)transaction_8, (funcp)transaction_9, (funcp)transaction_10, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15, (funcp)transaction_16, (funcp)transaction_56, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60};
const int NumRelocateId= 125;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/TEST_behav/xsim.reloc",  (void **)funcTab, 125);
	iki_vhdl_file_variable_register(dp + 278888);
	iki_vhdl_file_variable_register(dp + 278944);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/TEST_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/TEST_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/TEST_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/TEST_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/TEST_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
