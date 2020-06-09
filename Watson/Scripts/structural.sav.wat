declareconstant "goto";
declareconstant "INPUT_AT";
declareconstant "value";
declareconstant "left_case";
declareconstant "right_case";
declareconstant "left";
declareconstant "right";
declareconstant "INPUTS2";
declareconstant "up";
declareconstant "upfun";
declareconstant "BINDLABELS";
declareconstant "APPLYATLABELS";
declareconstant "APPLYATLABEL";
declareconstant "APPLYATLABEL0";
declareconstant "LABELTERM";
declareconstant "LABELTERMS_CASE";
declareconstant "LABELTERMS_UNARY";
declareconstant "LABELTERMS_ABSTRACT";
declareconstant "LABELTERMS_SPLIT";
declareconstant "LABELTERMS_FOUND";
declareconstant "LABELTERMS";
declareconstant "POP_CASE";
declareconstant "POP_CASE_1";
declareconstant "POP_CASE_2";
declareconstant "ANTI_UNEVAL_TAC";
declareconstant "TYPEBIND";
declareconstant "UNEVAL_TAC";
declareconstant "GET";
declareconstant "GET2";
declareconstant "GET1";
declareconstant "GET0";
declareconstant "ALLASSOCS";
declareconstant "ASSOCS";
declareconstant "VIEWCASES";
declareconstant "LOOP_TAC";
declareconstant "ALL_STEPS";
declareconstant "STOPLOOP";
declareconstant "STARTLOOP";
declareconstant "LISTBIND";
declareconstant "PAIRBIND";
declareconstant "VALUE";
declareconstant "VALUE0";
declareconstant "PI2F";
declareconstant "PI1F";
declareconstant "REVPIVOT";
declareconstant "PIVOT";
declareconstant "TOPDOWN_PREFIX";
declareconstant "TOPDOWN_INFIX";
declareconstant "TOPDOWN_CASE";
declareconstant "TOPDOWN";
declareconstant "EVERYWHERE2";
declareconstant "EVERYWHERE";
declareconstant "EVERYWHERE_INFIX";
declareconstant "EVERYWHERE_PREFIX";
declareconstant "EVERYWHERE_ABS";
declareconstant "STRONG_EVERYWHERE_CASE";
declareconstant "EVERYWHERE_CASE";
declareconstant "BOTH_CASES";
declareconstant "RIGHT_CASE";
declareconstant "LEFT_CASE";
declareconstant "RL";
declareconstant "RIGHT";
declareconstant "RIGHT2";
declareconstant "RIGHT1";
declareconstant "LEFT";
declareconstant "LEFT2";
declareconstant "LEFT1";
declareconstant "PCASEINTRO";
declareconstant "ID";
declareconstant "PI2";
declareconstant "PI1";
declareconstant "IGNOREFIRST";
declareconstant "HYP";
declareconstant "ODDCHOICE";
declareconstant "EQUATION";
declareconstant "NONTRIV";
declareconstant "REFLEX";
declareconstant "CASEINTRO";
declareconstant "FNDIST";
declareconstant "Id";
declareconstant "P2";
declareconstant "P1";
declareconstant "COMP";
declareconstant "TYPES";
declareconstant "OUTPUT";
declareconstant "INPUT";
declareconstant "FLIP";
declareconstant "UNEVAL";
declareconstant "EVAL";
declareconstant "BIND";
declareconstant "false";
declareconstant "true";
addoperator "^+" "(0) , 0";
addoperator "^--" "(0) , 0";
addoperator "^-" "(0) , 0";
addoperator "$" "(0) , 0";
addoperator "**" "(0) , 0";
addoperator "." "(0) , 0";
addoperator "@@" "(0) , 0";
setdefaultprec 0;
prefixreader "^--" "";
prefixreader "^-" "";
prefixreader "$" "";
prefixreader "!$" "";
prefixreader "!@" "";
addopaque "^+";
addopaque "^--";
addopaque "^-";
forcetheorem "TYPES" "TYPES , (?t : ?t : ?x) , (?t : ?x) , TYPES , 0";
forcetheorem "COMP" "COMP , ((?f @@ ?g) @ ?x) , (?f @ ?g @ ?x) , COMP , 0";
forcetheorem "P1" "P1 , (P1 @ ?x , ?y) , ?x , P1 , 0";
forcetheorem "P2" "P2 , (P2 @ ?x , ?y) , ?y , P2 , 0";
forcetheorem "Id" "Id , (Id @ ?x) , ?x , Id , 0";
forcetheorem "FNDIST" "FNDIST , (?f @ ?x || ?y , ?z) , (?x || (?f @ ?y) , ?f @ ?z) , FNDIST , 0";
forcetheorem "REFLEX" "REFLEX , (?a = ?a) , true , REFLEX , 0";
forcetheorem "NONTRIV" "NONTRIV , (true = false) , false , NONTRIV , 0";
forcetheorem "EQUATION" "EQUATION , (?a = ?b) , ((?a = ?b) || true , false) , EQUATION , 0";
forcetheorem "ODDCHOICE" "ODDCHOICE , ?x , ?x , ODDCHOICE , 0";
forcetheorem "HYP" "HYP , ((?a = ?b) || (?f @ ?a) , ?c) , ((?a = ?b) || (?f @ ?b) , ?c) , HYP , 0";
forcetheorem "}P1" "P1 , (P1 @ ?x , ?y) , ?x , P1 , 0";
forcetheorem "}P2" "P2 , (P2 @ ?x , ?y) , ?y , P2 , 0";
forcetheorem "ID" "ID , (Id @ ?x) , ?x , Id , 0";
forcetheorem "}Id" "Id , (Id @ ?x) , ?x , Id , 0";
forcetheorem "CASEINTRO" "CASEINTRO , ?x , (?y || ?x , ?x) , CASEINTRO , 0";
forcetheorem "PCASEINTRO" "(PCASEINTRO @ ?p) , ?x , (?p || ?x , ?x) , CASEINTRO , 0";
forcetheorem "**" "(?thm1 ** ?thm2) , ?x , (?thm2 => ?thm1 => ?x) , 0";
forcetheorem "$" "($ ?thm) , ?x , (?thm <= ?x) , 0";
forcetheorem "LEFT2" "(LEFT2 @ ?thm) , (?x || ?y , ?z) , ((?thm => ?x) || ?y , ?z) , 0";
forcetheorem "RIGHT2" "(RIGHT2 @ ?thm) , (^- ?x) , (^- ?thm => ?x) , 0";
forcetheorem "RL" "(RL @ ?thm) , (?p ^+ ?q) , ((?thm => ?p) ^+ ?thm => ?q) , 0";
forcetheorem "LEFT_CASE" "(LEFT_CASE @ ?thm) , (?x || ?y , ?z) , (?x || (?thm => ?y) , ?z) , 0";
forcetheorem "RIGHT_CASE" "(RIGHT_CASE @ ?thm) , (?x || ?y , ?z) , (?x || ?y , ?thm => ?z) , 0";
forcetheorem "BOTH_CASES" "(BOTH_CASES @ ?thm) , (?x || ?y , ?z) , (?x || (?thm => ?y) , ?thm => ?z) , 0";
forcetheorem "EVERYWHERE_CASE" "(EVERYWHERE_CASE @ ?EVERYWHERE , ?thm) , (?a || ?x , ?y) , (?thm => ?a || ((?EVERYWHERE @ ?thm) => ?x) , (?EVERYWHERE @ ?thm) => ?y) , 0";
forcetheorem "STRONG_EVERYWHERE_CASE" "(STRONG_EVERYWHERE_CASE @ ?EVERYWHERE , ?thm) , (?a || ?x , ?y) , (?thm => ((?EVERYWHERE @ ?thm) => ?a) || ((?EVERYWHERE @ ?thm) => ?x) , (?EVERYWHERE @ ?thm) => ?y) , 0";
forcetheorem "EVERYWHERE_ABS" "(EVERYWHERE_ABS @ ?EVERYWHERE , ?thm) , [?f @ ?1] , (?thm => [(?EVERYWHERE @ ?thm) => ?f @ ?1]) , 0";
forcetheorem "EVERYWHERE_PREFIX" "(EVERYWHERE_PREFIX @ ?EVERYWHERE , ?thm) , (^-- ?x) , (?thm => ^-- (?EVERYWHERE @ ?thm) => ?x) , 0";
forcetheorem "EVERYWHERE_INFIX" "(EVERYWHERE_INFIX @ ?EVERYWHERE , ?thm) , (?x ^+ ?y) , (?thm => ((?EVERYWHERE @ ?thm) => ?x) ^+ (?EVERYWHERE @ ?thm) => ?y) , 0";
forcetheorem "EVERYWHERE" "(EVERYWHERE @ ?thm) , ?x , (((EVERYWHERE_CASE @ EVERYWHERE , ?thm) =>> (EVERYWHERE_INFIX @ EVERYWHERE , ?thm) =>> (EVERYWHERE_PREFIX @ EVERYWHERE , ?thm) =>> ?thm) => ?x) , 0";
forcetheorem "EVERYWHERE2" "(EVERYWHERE2 @ ?thm) , ?x , (((STRONG_EVERYWHERE_CASE @ EVERYWHERE2 , ?thm) =>> (EVERYWHERE_INFIX @ EVERYWHERE2 , ?thm) =>> (EVERYWHERE_PREFIX @ EVERYWHERE2 , ?thm) =>> (EVERYWHERE_ABS @ EVERYWHERE2 , ?thm) =>> ?thm) => ?x) , 0";
forcetheorem "TOPDOWN_CASE" "(TOPDOWN_CASE @ ?thm) , (?a || ?x , ?y) , ((BOTH_CASES @ TOPDOWN @ ?thm) => ?thm => ?a || ?x , ?y) , 0";
forcetheorem "TOPDOWN_INFIX" "(TOPDOWN_INFIX @ ?thm) , (?x ^+ ?y) , ((RL @ TOPDOWN @ ?thm) => ?thm => ?x ^+ ?y) , 0";
forcetheorem "TOPDOWN_PREFIX" "(TOPDOWN_PREFIX @ ?thm) , (^-- ?x) , ((RIGHT @ TOPDOWN @ ?thm) => ?thm => ^-- ?x) , 0";
forcetheorem "TOPDOWN" "(TOPDOWN @ ?thm) , ?x , (((TOPDOWN_CASE @ ?thm) =>> (TOPDOWN_INFIX @ ?thm) =>> (TOPDOWN_PREFIX @ ?thm) =>> ?thm) => ?x) , 0";
forcetheorem "PIVOT" "PIVOT , ((?a = ?b) || ?T , ?U) , ((LEFT_CASE @ EVAL) => HYP => (?a = ?b) || ((BIND @ ?a) => ?T) , ?U) , 0";
forcetheorem "REVPIVOT" "REVPIVOT , ((?a = ?b) || ?T , ?U) , ((LEFT_CASE @ EVAL) => HYP <= (?a = ?b) || ((BIND @ ?b) => ?T) , ?U) , 0";
forcetheorem "PI1" "PI1 , (P1 @ ?x , ?y) , ?x , P1 , 0";
forcetheorem "PI2" "PI2 , (P2 @ ?x , ?y) , ?y , P2 , 0";
forcetheorem "VALUE0" "(VALUE0 @ ?thm) , [?P @ ?1] , [?thm => ?P @ ?1] , 0";
forcetheorem "LISTBIND" "(LISTBIND @ ?x , ?y) , ?t , ((PAIRBIND @ ?x , ?y) => ((PAIRBIND @ ?y) *> EVAL) => ((LISTBIND @ ?y) *> EVAL) => ?t) , 0";
forcetheorem "PAIRBIND" "(PAIRBIND @ ?x , ?y) , ?t , ((BIND @ ?x , ?y) => EVAL => (LEFT @ VALUE @ [EVAL]) => (LEFT @ VALUE @ [LEFT @ VALUE @ [EVAL]]) => (LEFT @ VALUE @ [LEFT @ VALUE @ [RIGHT @ PI2F @ ?x]]) => (LEFT @ VALUE @ [LEFT @ VALUE @ [BIND @ ?y]]) => (LEFT @ VALUE @ [RIGHT @ PI1F @ ?y]) => (LEFT @ VALUE @ [BIND @ ?x]) => (BIND @ ?x , ?y) => ?t) , 0";
forcetheorem "PI1F" "(PI1F @ ?y) , ?x , (P1 @ ?x , ?y) , P1 , 0";
forcetheorem "RIGHT" "(RIGHT @ ?thm) , ?x , (((RIGHT1 @ ?thm) =>> RIGHT2 @ ?thm) => ?x) , 0";
forcetheorem "RIGHT1" "(RIGHT1 @ ?thm) , (?p ^+ ?q) , (?p ^+ ?thm => ?q) , 0";
forcetheorem "PI2F" "(PI2F @ ?y) , ?x , (P2 @ ?y , ?x) , P2 , 0";
forcetheorem "LEFT" "(LEFT @ ?thm) , ?x , (((LEFT1 @ ?thm) =>> LEFT2 @ ?thm) => ?x) , 0";
forcetheorem "LEFT1" "(LEFT1 @ ?thm) , (?p ^+ ?q) , ((?thm => ?p) ^+ ?q) , 0";
forcetheorem "VALUE" "(VALUE @ ?thm) , [?P @ ?1] , [(?thm @ ?1) => ?P @ ?1] , 0";
forcetheorem "STARTLOOP" "STARTLOOP , ?x , (?x . ?x) , IGNOREFIRST , 0";
forcetheorem "IGNOREFIRST" "IGNOREFIRST , (?x . ?y) , ?y , IGNOREFIRST , 0";
forcetheorem "STOPLOOP" "STOPLOOP , (?x . ?x) , ?x , IGNOREFIRST , 0";
forcetheorem "ALL_STEPS" "(ALL_STEPS @ ?ONE_STEP) , (?x . ?y) , ((STOPLOOP =>> ALL_STEPS @ ?ONE_STEP) => (RIGHT @ ?ONE_STEP) => STARTLOOP => IGNOREFIRST => ?x . ?y) , 0";
forcetheorem "LOOP_TAC" "(LOOP_TAC @ ?ONE_STEP) , ?x , ((ALL_STEPS @ ?ONE_STEP) => STARTLOOP => ?x) , 0";
forcetheorem "VIEWCASES" "VIEWCASES , (?x || ?y , ?z) , (?x || ((VIEWCASES =>> INPUT) => ?y) , (VIEWCASES =>> INPUT) => ?z) , 0";
forcetheorem "ASSOCS" "(ASSOCS @ ?thm) , ?x , ((?thm *> ASSOCS @ ?thm) => ?x) , 0";
forcetheorem "ALLASSOCS" "(ALLASSOCS @ ?thm) , ?x , ((RIGHT @ ALLASSOCS @ ?thm) => (ASSOCS @ ?thm) => ?x) , 0";
forcetheorem "GET0" "(GET0 @ ?x) , (?x ^+ ?y) , (?x ^+ ?y) , 0";
forcetheorem "GET1" "(GET1 @ ?x , ?comm) , (?y ^+ ?x) , (?comm => ?y ^+ ?x) , 0";
forcetheorem "GET2" "(GET2 @ ?x , ?comm , ?assoc) , (?y ^+ ?x ^+ ?z) , (?assoc => (LEFT @ ?comm) => ?assoc <= ?y ^+ ?x ^+ ?z) , 0";
forcetheorem "GET" "(GET @ ?y , ?comm , ?assoc) , ?x , (((GET1 @ ?y , ?comm) =>> GET2 @ ?y , ?comm , ?assoc) => ((GET0 @ ?y) =>> RIGHT @ GET @ ?y , ?comm , ?assoc) => (ASSOCS @ ?assoc) => ?x) , 0";
forcetheorem "UNEVAL_TAC" "(UNEVAL_TAC @ ?f) , ?x , ((BOTH_CASES @ EVAL) => FNDIST => (UNEVAL @ ?f) => ?x) , 0";
forcetheorem "TYPEBIND" "(TYPEBIND @ ?t) , ?x , ((EVERYWHERE2 @ TYPES) => (BIND @ ?t) => (EVERYWHERE2 @ $ TYPES) => ?x) , 0";
forcetheorem "ANTI_UNEVAL_TAC" "(ANTI_UNEVAL_TAC @ ?f) , (?x || ?y , ?z) , (EVAL => FNDIST <= (BOTH_CASES @ UNEVAL @ ?f) => ?x || ?y , ?z) , 0";
forcetheorem "POP_CASE_1" "POP_CASE_1 , (?n . ?x || ?y , ?z) , (IGNOREFIRST => ?n . (((2 |-| ?n) @ 0) *> POP_CASE_2 @ ?n) <= ?x || ?y , ?z) , 0";
forcetheorem "POP_CASE_2" "(POP_CASE_2 @ ?n) , (?x || ?y , ?z) , (((1 |-| ?n) =>> ((!$ IGNOREFIRST) @ 1 +! ?n) ** POP_CASE_1) => (1 |-| ?n) => ?x || ?y , ?z) , 0";
forcetheorem "POP_CASE" "POP_CASE , (?x || ?y , ?z) , ((((!$ IGNOREFIRST) @ 1) ** POP_CASE_1) => ?x || ?y , ?z) , 0";
forcetheorem "LABELTERMS_FOUND" "(LABELTERMS_FOUND @ ?a , ?no) , ?a , (((!$ IGNOREFIRST) @ ?no) => ?a) , 0";
forcetheorem "LABELTERMS_SPLIT" "(LABELTERMS_SPLIT @ ?a , ?no) , (?x ^+ ?y) , (((LABELTERMS @ ?a , 2 *! ?no) => ?x) ^+ (LABELTERMS @ ?a , 1 +! 2 *! ?no) => ?y) , 0";
forcetheorem "LABELTERMS_ABSTRACT" "(LABELTERMS_ABSTRACT @ ?a , ?no) , [?x @ ?1] , [(LABELTERMS @ ?a , ?no) => ?x @ ?1] , 0";
forcetheorem "LABELTERMS_UNARY" "(LABELTERMS_UNARY @ ?a , ?no) , (^-- ?x) , (^-- (LABELTERMS @ ?a , ?no) => ?x) , 0";
forcetheorem "LABELTERMS_CASE" "(LABELTERMS_CASE @ ?a , ?no) , (?x || ?y , ?z) , (((LABELTERMS @ ?a , 2 *! ?no) => ?x) || ((LABELTERMS @ ?a , 2 *! 1 +! 2 *! ?no) => ?y) , (LABELTERMS @ ?a , 1 +! 2 *! 1 +! 2 *! ?no) => ?z) , 0";
forcetheorem "LABELTERMS" "(LABELTERMS @ ?a , ?no) , ?x , (((LABELTERMS_FOUND @ ?a , ?no) =>> (LABELTERMS_SPLIT @ ?a , ?no) =>> (LABELTERMS_ABSTRACT @ ?a , ?no) =>> (LABELTERMS_UNARY @ ?a , ?no) =>> LABELTERMS_CASE @ ?a , ?no) => ?x) , 0";
forcetheorem "LABELTERM" "(LABELTERM @ ?a) , ?x , ((LABELTERMS @ ?a , 1) => ?x) , 0";
forcetheorem "APPLYATLABEL0" "(APPLYATLABEL0 @ ?thm , ?label) , (?label . ?x) , (?thm => IGNOREFIRST => ?label . ?x) , 0";
forcetheorem "APPLYATLABEL" "(APPLYATLABEL @ ?thm , ?label) , ?x , ((EVERYWHERE2 @ APPLYATLABEL0 @ ?thm , ?label) => ?x) , 0";
forcetheorem "APPLYATLABELS" "(APPLYATLABELS @ ?thm , ?first , ?rest) , ?x , ((APPLYATLABELS @ ?thm , ?rest) => (APPLYATLABEL @ ?thm , ?first) => ?x) , 0";
forcetheorem "BINDLABELS" "(BINDLABELS @ ?y , ?list) , ?x , ((LEFT @ EVERYWHERE2 @ IGNOREFIRST) => (RIGHT @ ID) => (BIND @ Id @ ?y) => (APPLYATLABELS @ ($ ID) , ?list) => ?x) , 0";
forcetheorem "upfun" "upfun , (upfun @ ?x) , ?x , upfun , 0";
forcetheorem "up" "up , ?x , (upfun @ ?x) , upfun , 0";
forcetheorem "INPUTS2" "INPUTS2 , ?x , ((upfun =>> INPUT ** INPUTS2) => ?x) , 0";
forcetheorem "right" "right , ?x , (((RIGHT @ INPUTS2) ** INPUT) => ?x) , 0";
forcetheorem "left" "left , ?x , (((LEFT @ INPUTS2) ** INPUT) => ?x) , 0";
forcetheorem "right_case" "right_case , ?x , (((RIGHT_CASE @ INPUTS2) ** INPUT) => ?x) , 0";
forcetheorem "left_case" "left_case , ?x , (((LEFT_CASE @ INPUTS2) ** INPUT) => ?x) , 0";
forcetheorem "value" "value , ?x , (((VALUE @ INPUTS2) ** INPUT) => ?x) , 0";
forcetheorem "INPUT_AT" "(INPUT_AT @ ?x) , ?x , ((INPUTS2 ** upfun) => ?x) , 0";
forcetheorem "}backup" "backup , ?x , ((INPUTS2 ** upfun) => ?x) , 0";
forcetheorem "goto" "(goto @ ?a) , ?x , ((EVERYWHERE2 @ INPUT_AT @ ?a) => ?x) , 0";
adddef "upfun" "upfun";
adddef "IGNOREFIRST" ".";
adddef "Id" "Id";
adddef "P2" "P2";
adddef "P1" "P1";
adddef "COMP" "@@";
addscript "structural";
adddefdep2 "goto" "0";
adddefdep2 "INPUT_AT" "0";
adddefdep2 "value" "0";
adddefdep2 "left_case" "0";
adddefdep2 "right_case" "0";
adddefdep2 "left" "0";
adddefdep2 "right" "0";
adddefdep2 "INPUTS2" "0";
adddefdep2 "up" "upfun , 0";
adddefdep2 "upfun" "upfun , 0";
adddefdep2 "BINDLABELS" "0";
adddefdep2 "APPLYATLABELS" "0";
adddefdep2 "APPLYATLABEL" "0";
adddefdep2 "APPLYATLABEL0" "IGNOREFIRST , 0";
adddefdep2 "LABELTERM" "0";
adddefdep2 "LABELTERMS" "0";
adddefdep2 "LABELTERMS_CASE" "0";
adddefdep2 "LABELTERMS_UNARY" "0";
adddefdep2 "LABELTERMS_ABSTRACT" "0";
adddefdep2 "LABELTERMS_SPLIT" "0";
adddefdep2 "LABELTERMS_FOUND" "0";
adddefdep2 "POP_CASE" "0";
adddefdep2 "POP_CASE_2" "0";
adddefdep2 "POP_CASE_1" "IGNOREFIRST , 0";
adddefdep2 "ANTI_UNEVAL_TAC" "0";
adddefdep2 "TYPEBIND" "0";
adddefdep2 "UNEVAL_TAC" "0";
adddefdep2 "GET" "0";
adddefdep2 "GET2" "0";
adddefdep2 "GET1" "0";
adddefdep2 "GET0" "0";
adddefdep2 "ALLASSOCS" "0";
adddefdep2 "ASSOCS" "0";
adddefdep2 "VIEWCASES" "0";
adddefdep2 "LOOP_TAC" "0";
adddefdep2 "ALL_STEPS" "IGNOREFIRST , 0";
adddefdep2 "STOPLOOP" "IGNOREFIRST , 0";
adddefdep2 "STARTLOOP" "IGNOREFIRST , 0";
adddefdep2 "LISTBIND" "0";
adddefdep2 "PAIRBIND" "0";
adddefdep2 "VALUE" "0";
adddefdep2 "VALUE0" "0";
adddefdep2 "PI2F" "P2 , 0";
adddefdep2 "PI1F" "P1 , 0";
adddefdep2 "REVPIVOT" "0";
adddefdep2 "PIVOT" "0";
adddefdep2 "TOPDOWN" "0";
adddefdep2 "TOPDOWN_PREFIX" "0";
adddefdep2 "TOPDOWN_INFIX" "0";
adddefdep2 "TOPDOWN_CASE" "0";
adddefdep2 "EVERYWHERE2" "0";
adddefdep2 "EVERYWHERE" "0";
adddefdep2 "EVERYWHERE_INFIX" "0";
adddefdep2 "EVERYWHERE_PREFIX" "0";
adddefdep2 "EVERYWHERE_ABS" "0";
adddefdep2 "STRONG_EVERYWHERE_CASE" "0";
adddefdep2 "EVERYWHERE_CASE" "0";
adddefdep2 "BOTH_CASES" "0";
adddefdep2 "RIGHT_CASE" "0";
adddefdep2 "LEFT_CASE" "0";
adddefdep2 "RL" "0";
adddefdep2 "RIGHT" "0";
adddefdep2 "RIGHT2" "0";
adddefdep2 "RIGHT1" "0";
adddefdep2 "LEFT" "0";
adddefdep2 "LEFT2" "0";
adddefdep2 "LEFT1" "0";
adddefdep2 "$" "0";
adddefdep2 "**" "0";
adddefdep2 "PCASEINTRO" "0";
adddefdep2 "ID" "Id , 0";
adddefdep2 "PI2" "P2 , 0";
adddefdep2 "PI1" "P1 , 0";
adddefdep2 "IGNOREFIRST" "IGNOREFIRST , 0";
adddefdep2 "HYP" "0";
adddefdep2 "ODDCHOICE" "0";
adddefdep2 "EQUATION" "0";
adddefdep2 "NONTRIV" "0";
adddefdep2 "REFLEX" "0";
adddefdep2 "CASEINTRO" "0";
adddefdep2 "FNDIST" "0";
adddefdep2 "Id" "Id , 0";
adddefdep2 "P2" "P2 , 0";
adddefdep2 "P1" "P1 , 0";
adddefdep2 "COMP" "COMP , 0";
adddefdep2 "TYPES" "0";
addthmtextdep2 "goto" "goto , STRONG_EVERYWHERE_CASE , EVERYWHERE2 , EVERYWHERE_INFIX , EVERYWHERE_PREFIX , EVERYWHERE_ABS , INPUT_AT , upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "INPUT_AT" "INPUT_AT , upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "INPUTS2" "upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "**" "(?x ** ?y) , 0";
addthmtextdep2 "upfun" "upfun , 0";
addthmtextdep2 "EVERYWHERE2" "STRONG_EVERYWHERE_CASE , EVERYWHERE2 , EVERYWHERE_INFIX , EVERYWHERE_PREFIX , EVERYWHERE_ABS , 0";
addthmtextdep2 "EVERYWHERE_ABS" "EVERYWHERE_ABS , 0";
addthmtextdep2 "EVERYWHERE_PREFIX" "EVERYWHERE_PREFIX , 0";
addthmtextdep2 "EVERYWHERE_INFIX" "EVERYWHERE_INFIX , 0";
addthmtextdep2 "STRONG_EVERYWHERE_CASE" "STRONG_EVERYWHERE_CASE , 0";
addthmtextdep2 "value" "value , VALUE , upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "VALUE" "VALUE , 0";
addthmtextdep2 "left_case" "left_case , LEFT_CASE , upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "LEFT_CASE" "LEFT_CASE , 0";
addthmtextdep2 "right_case" "right_case , RIGHT_CASE , upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "RIGHT_CASE" "RIGHT_CASE , 0";
addthmtextdep2 "left" "left , LEFT , LEFT1 , LEFT2 , upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "LEFT" "LEFT , LEFT1 , LEFT2 , 0";
addthmtextdep2 "LEFT2" "LEFT2 , 0";
addthmtextdep2 "LEFT1" "LEFT1 , 0";
addthmtextdep2 "right" "right , RIGHT , RIGHT1 , RIGHT2 , upfun , INPUTS2 , (?x ** ?y) , 0";
addthmtextdep2 "RIGHT" "RIGHT , RIGHT1 , RIGHT2 , 0";
addthmtextdep2 "RIGHT2" "RIGHT2 , 0";
addthmtextdep2 "RIGHT1" "RIGHT1 , 0";
addthmtextdep2 "up" "up , upfun , 0";
addthmtextdep2 "BINDLABELS" "BINDLABELS , LEFT , LEFT1 , LEFT2 , STRONG_EVERYWHERE_CASE , EVERYWHERE2 , EVERYWHERE_INFIX , EVERYWHERE_PREFIX , EVERYWHERE_ABS , IGNOREFIRST , RIGHT , RIGHT1 , RIGHT2 , ID , Id , APPLYATLABELS , APPLYATLABEL , APPLYATLABEL0 , (?x $ ?y) , 0";
addthmtextdep2 "$" "(?x $ ?y) , 0";
addthmtextdep2 "APPLYATLABELS" "APPLYATLABELS , APPLYATLABEL , STRONG_EVERYWHERE_CASE , EVERYWHERE2 , EVERYWHERE_INFIX , EVERYWHERE_PREFIX , EVERYWHERE_ABS , APPLYATLABEL0 , IGNOREFIRST , 0";
addthmtextdep2 "APPLYATLABEL" "APPLYATLABEL , STRONG_EVERYWHERE_CASE , EVERYWHERE2 , EVERYWHERE_INFIX , EVERYWHERE_PREFIX , EVERYWHERE_ABS , APPLYATLABEL0 , IGNOREFIRST , 0";
addthmtextdep2 "APPLYATLABEL0" "APPLYATLABEL0 , IGNOREFIRST , 0";
addthmtextdep2 "ID" "ID , Id , 0";
addthmtextdep2 "Id" "Id , 0";
addthmtextdep2 "IGNOREFIRST" "IGNOREFIRST , 0";
addthmtextdep2 "LABELTERM" "LABELTERM , LABELTERMS_FOUND , IGNOREFIRST , LABELTERMS_SPLIT , LABELTERMS , LABELTERMS_ABSTRACT , LABELTERMS_UNARY , LABELTERMS_CASE , 0";
addthmtextdep2 "LABELTERMS" "LABELTERMS_FOUND , IGNOREFIRST , LABELTERMS_SPLIT , LABELTERMS , LABELTERMS_ABSTRACT , LABELTERMS_UNARY , LABELTERMS_CASE , 0";
addthmtextdep2 "LABELTERMS_CASE" "LABELTERMS_FOUND , IGNOREFIRST , LABELTERMS_SPLIT , LABELTERMS , LABELTERMS_ABSTRACT , LABELTERMS_UNARY , LABELTERMS_CASE , 0";
addthmtextdep2 "LABELTERMS_UNARY" "LABELTERMS_FOUND , IGNOREFIRST , LABELTERMS_SPLIT , LABELTERMS , LABELTERMS_ABSTRACT , LABELTERMS_UNARY , LABELTERMS_CASE , 0";
addthmtextdep2 "LABELTERMS_ABSTRACT" "LABELTERMS_FOUND , IGNOREFIRST , LABELTERMS_SPLIT , LABELTERMS , LABELTERMS_ABSTRACT , LABELTERMS_UNARY , LABELTERMS_CASE , 0";
addthmtextdep2 "LABELTERMS_SPLIT" "LABELTERMS_FOUND , IGNOREFIRST , LABELTERMS_SPLIT , LABELTERMS , LABELTERMS_ABSTRACT , LABELTERMS_UNARY , LABELTERMS_CASE , 0";
addthmtextdep2 "LABELTERMS_FOUND" "LABELTERMS_FOUND , IGNOREFIRST , 0";
addthmtextdep2 "POP_CASE" "POP_CASE , IGNOREFIRST , POP_CASE_1 , POP_CASE_2 , (?x ** ?y) , 0";
addthmtextdep2 "POP_CASE_1" "IGNOREFIRST , POP_CASE_1 , POP_CASE_2 , (?x ** ?y) , 0";
addthmtextdep2 "POP_CASE_2" "IGNOREFIRST , POP_CASE_1 , POP_CASE_2 , (?x ** ?y) , 0";
addthmtextdep2 "ANTI_UNEVAL_TAC" "ANTI_UNEVAL_TAC , FNDIST , BOTH_CASES , 0";
addthmtextdep2 "BOTH_CASES" "BOTH_CASES , 0";
addthmtextdep2 "FNDIST" "FNDIST , 0";
addthmtextdep2 "TYPEBIND" "TYPEBIND , STRONG_EVERYWHERE_CASE , EVERYWHERE2 , EVERYWHERE_INFIX , EVERYWHERE_PREFIX , EVERYWHERE_ABS , TYPES , (?x $ ?y) , 0";
addthmtextdep2 "TYPES" "TYPES , 0";
addthmtextdep2 "UNEVAL_TAC" "UNEVAL_TAC , BOTH_CASES , FNDIST , 0";
addthmtextdep2 "GET" "GET1 , GET2 , LEFT , LEFT1 , LEFT2 , GET0 , RIGHT , RIGHT1 , RIGHT2 , GET , ASSOCS , 0";
addthmtextdep2 "ASSOCS" "ASSOCS , 0";
addthmtextdep2 "GET0" "GET0 , 0";
addthmtextdep2 "GET2" "GET2 , LEFT , LEFT1 , LEFT2 , 0";
addthmtextdep2 "GET1" "GET1 , 0";
addthmtextdep2 "ALLASSOCS" "RIGHT , RIGHT1 , RIGHT2 , ALLASSOCS , ASSOCS , 0";
addthmtextdep2 "VIEWCASES" "VIEWCASES , 0";
addthmtextdep2 "LOOP_TAC" "LOOP_TAC , IGNOREFIRST , STOPLOOP , ALL_STEPS , RIGHT , RIGHT1 , RIGHT2 , STARTLOOP , 0";
addthmtextdep2 "ALL_STEPS" "IGNOREFIRST , STOPLOOP , ALL_STEPS , RIGHT , RIGHT1 , RIGHT2 , STARTLOOP , 0";
addthmtextdep2 "STARTLOOP" "STARTLOOP , IGNOREFIRST , 0";
addthmtextdep2 "STOPLOOP" "STOPLOOP , IGNOREFIRST , 0";
addthmtextdep2 "LISTBIND" "PAIRBIND , LEFT , LEFT1 , LEFT2 , VALUE , RIGHT , RIGHT1 , RIGHT2 , PI2F , P2 , PI1F , P1 , LISTBIND , 0";
addthmtextdep2 "PAIRBIND" "PAIRBIND , LEFT , LEFT1 , LEFT2 , VALUE , RIGHT , RIGHT1 , RIGHT2 , PI2F , P2 , PI1F , P1 , 0";
addthmtextdep2 "PI1F" "PI1F , P1 , 0";
addthmtextdep2 "P1" "P1 , 0";
addthmtextdep2 "PI2F" "PI2F , P2 , 0";
addthmtextdep2 "P2" "P2 , 0";
addthmtextdep2 "VALUE0" "VALUE0 , 0";
addthmtextdep2 "REVPIVOT" "REVPIVOT , LEFT_CASE , HYP , 0";
addthmtextdep2 "HYP" "HYP , 0";
addthmtextdep2 "PIVOT" "PIVOT , LEFT_CASE , HYP , 0";
addthmtextdep2 "TOPDOWN_CASE" "TOPDOWN_CASE , BOTH_CASES , TOPDOWN , TOPDOWN_INFIX , RL , TOPDOWN_PREFIX , RIGHT , RIGHT1 , RIGHT2 , 0";
addthmtextdep2 "TOPDOWN_INFIX" "TOPDOWN_CASE , BOTH_CASES , TOPDOWN , TOPDOWN_INFIX , RL , TOPDOWN_PREFIX , RIGHT , RIGHT1 , RIGHT2 , 0";
addthmtextdep2 "TOPDOWN_PREFIX" "TOPDOWN_CASE , BOTH_CASES , TOPDOWN , TOPDOWN_INFIX , RL , TOPDOWN_PREFIX , RIGHT , RIGHT1 , RIGHT2 , 0";
addthmtextdep2 "TOPDOWN" "TOPDOWN_CASE , BOTH_CASES , TOPDOWN , TOPDOWN_INFIX , RL , TOPDOWN_PREFIX , RIGHT , RIGHT1 , RIGHT2 , 0";
addthmtextdep2 "RL" "RL , 0";
addthmtextdep2 "EVERYWHERE" "EVERYWHERE_CASE , EVERYWHERE , EVERYWHERE_INFIX , EVERYWHERE_PREFIX , 0";
addthmtextdep2 "EVERYWHERE_CASE" "EVERYWHERE_CASE , 0";
addthmtextdep2 "PCASEINTRO" "PCASEINTRO , 0";
addthmtextdep2 "PI2" "PI2 , P2 , 0";
addthmtextdep2 "PI1" "PI1 , P1 , 0";
addthmtextdep2 "ODDCHOICE" "ODDCHOICE , 0";
addthmtextdep2 "EQUATION" "EQUATION , 0";
addthmtextdep2 "NONTRIV" "NONTRIV , 0";
addthmtextdep2 "REFLEX" "REFLEX , 0";
addthmtextdep2 "CASEINTRO" "CASEINTRO , 0";
addthmtextdep2 "COMP" "COMP , 0";
quit();