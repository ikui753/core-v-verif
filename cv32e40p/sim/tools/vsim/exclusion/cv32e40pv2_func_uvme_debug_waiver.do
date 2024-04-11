coverage exclude -cvgpath {/uvme_cv32e40p_pkg/uvme_debug_covg/cg_debug_with_xpulp_inst/\/uvme_cv32e40p_pkg::uvme_debug_covg::cg_debug_with_xpulp_inst /cr_dbg_req_at_xpulp_instr/<dbg_req_active,cv_elw_pi_ri,not_match>}         -comment {fixme: this waiver is not applicable for pulp_cluster config. elw is currently not tested thoroughly in non-cluster config tb}
coverage exclude -cvgpath {/uvme_cv32e40p_pkg/uvme_debug_covg/cg_debug_with_xpulp_inst/\/uvme_cv32e40p_pkg::uvme_debug_covg::cg_debug_with_xpulp_inst /cr_dbg_req_at_xpulp_instr/<dbg_req_0_to_1,cv_elw_pi_ri,not_match>}         -comment {fixme: this waiver is not applicable for pulp_cluster config. elw is currently not tested thoroughly in non-cluster config tb}
coverage exclude -cvgpath {/uvme_cv32e40p_pkg/uvme_debug_covg/cg_debug_with_xpulp_inst/\/uvme_cv32e40p_pkg::uvme_debug_covg::cg_debug_with_xpulp_inst /cr_trigger_with_xpulp_instr/<not_match,trig_en,cv_elw_pi_ri>}              -comment {fixme: this waiver is not applicable for pulp_cluster config. elw is currently not tested thoroughly in non-cluster config tb}
coverage exclude -cvgpath {/uvme_cv32e40p_pkg/uvme_debug_covg/cg_debug_with_xpulp_inst/\/uvme_cv32e40p_pkg::uvme_debug_covg::cg_debug_with_xpulp_inst /cr_trigger_with_xpulp_instr/<match,trig_en,cv_elw_pi_ri>}                  -comment {fixme: this waiver is not applicable for pulp_cluster config. elw is currently not tested thoroughly in non-cluster config tb}
coverage exclude -cvgpath {/uvme_cv32e40p_pkg/uvme_debug_covg/cg_debug_with_xpulp_inst/\/uvme_cv32e40p_pkg::uvme_debug_covg::cg_debug_with_xpulp_inst /cr_dbg_single_step_xpulp_instr/<dbg_step_mode_set,cv_elw_pi_ri,not_match>} -comment {fixme: this waiver is not applicable for pulp_cluster config. elw is currently not tested thoroughly in non-cluster config tb}
coverage exclude -cvgpath {/uvme_cv32e40p_pkg/uvme_debug_covg/cg_debug_with_xpulp_inst/\/uvme_cv32e40p_pkg::uvme_debug_covg::cg_debug_with_xpulp_inst /cr_xpulp_instructions_in_dbg_mode/<in_debug_mode,cv_elw_pi_ri>}            -comment {fixme: this waiver is not applicable for pulp_cluster config. elw is currently not tested thoroughly in non-cluster config tb}

coverage exclude -cvgpath /uvme_cv32e40p_pkg/uvme_debug_covg/cg_irq_dreq/irq_dreq_trig_branch -comment {not valid in v1.2 due to rtl behaviour change when PULP is enabled; decoding signal is low if debug trigger match during DECODE state; refer line 494 at cv32e40p_controller.sv;}
