`include "isa/custom/cv32e40p_defines.svh"

    // LOAD N STORE
`DEFINE_CV32E40P_INSTR(CV_LB , I_FORMAT, POST_INC_LOAD , RV32X)
`DEFINE_CV32E40P_INSTR(CV_LH , I_FORMAT, POST_INC_LOAD , RV32X)
`DEFINE_CV32E40P_INSTR(CV_LW , I_FORMAT, POST_INC_LOAD , RV32X)
`DEFINE_CV32E40P_INSTR(CV_LBU, I_FORMAT, POST_INC_LOAD , RV32X)
`DEFINE_CV32E40P_INSTR(CV_LHU, I_FORMAT, POST_INC_LOAD , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SB , S_FORMAT, POST_INC_STORE, RV32X)
`DEFINE_CV32E40P_INSTR(CV_SH , S_FORMAT, POST_INC_STORE, RV32X)
`DEFINE_CV32E40P_INSTR(CV_SW , S_FORMAT, POST_INC_STORE, RV32X)

    // EVENT LOAD
`DEFINE_CV32E40P_INSTR(CV_ELW, I_FORMAT, EVENT_LOAD , RV32X)

    // BRANCH_IMM
`DEFINE_CV32E40P_INSTR(CV_BEQIMM , B_FORMAT, BRANCH_IMM, RV32X)
`DEFINE_CV32E40P_INSTR(CV_BNEIMM , B_FORMAT, BRANCH_IMM, RV32X)

  // HW LOOPS
`DEFINE_CV32E40P_INSTR(CV_START , I_FORMAT, HWLOOP, RV32X)
`DEFINE_CV32E40P_INSTR(CV_STARTI, I_FORMAT, HWLOOP, RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_END   , I_FORMAT, HWLOOP, RV32X)
`DEFINE_CV32E40P_INSTR(CV_ENDI  , I_FORMAT, HWLOOP, RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_COUNT , I_FORMAT, HWLOOP, RV32X)
`DEFINE_CV32E40P_INSTR(CV_COUNTI, I_FORMAT, HWLOOP, RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SETUP , I_FORMAT, HWLOOP, RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SETUPI, I_FORMAT, HWLOOP, RV32X, UIMM)

  // BIT MANIP
`DEFINE_CV32E40P_INSTR(CV_EXTRACT  , I_FORMAT , BITMANIP , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_EXTRACTU , I_FORMAT , BITMANIP , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_EXTRACTR , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_EXTRACTUR, R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_INSERT   , I_FORMAT , BITMANIP , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_INSERTR  , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_BCLR     , I_FORMAT , BITMANIP , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_BCLRR    , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_BSET     , I_FORMAT , BITMANIP , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_BSETR    , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_BITREV   , I_FORMAT , BITMANIP , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_ROR      , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_FF1      , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_FL1      , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CLB      , R_FORMAT , BITMANIP , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CNT      , R_FORMAT , BITMANIP , RV32X)

  // ALU
`DEFINE_CV32E40P_INSTR(CV_ABS      , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SLE      , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SLEU     , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MIN      , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MINU     , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAX      , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAXU     , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_EXTHS    , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_EXTHZ    , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_EXTBS    , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_EXTBZ    , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CLIP     , R_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CLIPU    , R_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CLIPR    , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CLIPUR   , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADDNR    , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADDUNR   , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADDRNR   , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADDURNR  , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBNR    , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBUNR   , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBRNR   , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBURNR  , R_FORMAT , ALU , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADDN     , S_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_ADDUN    , S_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_ADDRN    , S_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_ADDURN   , S_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SUBN     , S_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SUBUN    , S_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SUBRN    , S_FORMAT , ALU , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SUBURN   , S_FORMAT , ALU , RV32X, UIMM)

  // MAC
`DEFINE_CV32E40P_INSTR(CV_MAC      , R_FORMAT , MAC , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MSU      , R_FORMAT , MAC , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MULSN    , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MULHHSN  , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MULSRN   , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MULHHSRN , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MULUN    , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MULHHUN  , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MULURN   , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MULHHURN , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACSN    , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACHHSN  , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACSRN   , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACHHSRN , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACUN    , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACHHUN  , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACURN   , S_FORMAT , MAC , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MACHHURN , S_FORMAT , MAC , RV32X, UIMM)

  // SIMD
`DEFINE_CV32E40P_INSTR(CV_ADD_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_SCI_H        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_SCI_B        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_SCI_H        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_SCI_B        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVG_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVG_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVG_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVG_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVG_SCI_H        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVG_SCI_B        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVGU_H           , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVGU_B           , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVGU_SC_H        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVGU_SC_B        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AVGU_SCI_H       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_AVGU_SCI_B       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MIN_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MIN_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MIN_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MIN_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MIN_SCI_H        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MIN_SCI_B        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MINU_H           , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MINU_B           , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MINU_SC_H        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MINU_SC_B        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MINU_SCI_H       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MINU_SCI_B       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MAX_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAX_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAX_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAX_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAX_SCI_H        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAX_SCI_B        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAXU_H           , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAXU_B           , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAXU_SC_H        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAXU_SC_B        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_MAXU_SCI_H       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_MAXU_SCI_B       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SRL_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRL_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRL_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRL_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRL_SCI_H        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SRL_SCI_B        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SRA_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRA_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRA_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRA_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SRA_SCI_H        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SRA_SCI_B        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SLL_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SLL_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SLL_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SLL_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SLL_SCI_H        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SLL_SCI_B        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_OR_H             , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_OR_B             , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_OR_SC_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_OR_SC_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_OR_SCI_H         , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_OR_SCI_B         , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_XOR_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_XOR_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_XOR_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_XOR_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_XOR_SCI_H        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_XOR_SCI_B        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AND_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AND_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AND_SC_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AND_SC_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AND_SCI_H        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_AND_SCI_B        , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ABS_H            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ABS_B            , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUP_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUP_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUP_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUP_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUP_SCI_H      , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_DOTUP_SCI_B      , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_DOTUSP_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUSP_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUSP_SC_H      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUSP_SC_B      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUSP_SCI_H     , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTUSP_SCI_B     , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTSP_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTSP_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTSP_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTSP_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTSP_SCI_H      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_DOTSP_SCI_B      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUP_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUP_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUP_SC_H      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUP_SC_B      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUP_SCI_H     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SDOTUP_SCI_B     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SDOTUSP_H        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUSP_B        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUSP_SC_H     , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUSP_SC_B     , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUSP_SCI_H    , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTUSP_SCI_B    , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTSP_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTSP_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTSP_SC_H      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTSP_SC_B      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTSP_SCI_H     , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SDOTSP_SCI_B     , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_EXTRACT_H        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_EXTRACT_B        , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_EXTRACTU_H       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_EXTRACTU_B       , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_INSERT_H         , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_INSERT_B         , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLE_H        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLE_B        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLE_SCI_H    , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLEI0_SCI_B  , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLEI1_SCI_B  , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLEI2_SCI_B  , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLEI3_SCI_B  , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLE2_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SHUFFLE2_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_PACK             , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_PACK_H           , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_PACKHI_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_PACKLO_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPEQ_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPEQ_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPEQ_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPEQ_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPEQ_SCI_H      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPEQ_SCI_B      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPNE_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPNE_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPNE_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPNE_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPNE_SCI_H      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPNE_SCI_B      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGT_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGT_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGT_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGT_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGT_SCI_H      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGT_SCI_B      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGE_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGE_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGE_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGE_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGE_SCI_H      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGE_SCI_B      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLT_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLT_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLT_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLT_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLT_SCI_H      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLT_SCI_B      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLE_H          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLE_B          , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLE_SC_H       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLE_SC_B       , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLE_SCI_H      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLE_SCI_B      , I_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGTU_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGTU_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGTU_SC_H      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGTU_SC_B      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGTU_SCI_H     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CMPGTU_SCI_B     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CMPGEU_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGEU_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGEU_SC_H      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGEU_SC_B      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPGEU_SCI_H     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CMPGEU_SCI_B     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CMPLTU_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLTU_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLTU_SC_H      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLTU_SC_B      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLTU_SCI_H     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CMPLTU_SCI_B     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CMPLEU_H         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLEU_B         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLEU_SC_H      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLEU_SC_B      , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CMPLEU_SCI_H     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CMPLEU_SCI_B     , I_FORMAT , SIMD       , RV32X, UIMM)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_R        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_I        , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_R_DIV2   , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_I_DIV2   , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_R_DIV4   , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_I_DIV4   , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_R_DIV8   , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXMUL_I_DIV8   , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_CPLXCONJ         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBROTMJ         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBROTMJ_DIV2    , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBROTMJ_DIV4    , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUBROTMJ_DIV8    , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_DIV2         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_DIV4         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_ADD_DIV8         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_DIV2         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_DIV4         , R_FORMAT , SIMD       , RV32X)
`DEFINE_CV32E40P_INSTR(CV_SUB_DIV8         , R_FORMAT , SIMD       , RV32X)