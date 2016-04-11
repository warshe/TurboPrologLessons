/*Aзикович А.А., ИМИ МК, 04.03.92.
   Пример. "Обезьяна и банан".
   exmpl205.pro                   */

DOMAINS
   cstate = state(symbol,symbol,symbol,symbol)
   asymbol = action(symbol,symbol,symbol)
PREDICATES
   motion(cstate,asymbol,cstate)
   can_take(cstate)
CLAUSES
   motion(state(middle,on_box,middle,no_has),
          action(grip,a,b),                   /* схватить */
          state(middle,on_box,middle, has)).
   motion(state(P,on_floor,P,H),
          action(climb,c,d),                  /* залесть */
          state(P,on_box,P,H)).
   motion(state(P1,on_floor,P1,H),
          action(move,P1,P2),                 /* подвинуть */
          state(P2,on_floor,P2,H)).
   motion(state(P1,on_floor,B,H),
          action(cross,P1,P2),                /* перейти */
          state(P2,on_floor,B,H)).
   can_take(state(_,_,_,has)).
   can_take(State1) :- motion(State1,Motion,State2),
                       can_take(State2).
/*
            Трассировка программы "Обезьяна и банан"

CALL:    can_take(state("by_door","on_floor","by_window",
                        "no_has"))

FAIL:    can_take(state("by_door","on_floor","by_window",
                         "no_has"))
REDO:    can_take(state("by_door","on_floor","by_window",
                         "no_has"))
CALL:    motion(state("by_door","on_floor","by_window",
                         "no_has"),_,_)
FAIL:    motion(state("by_door","on_floor","by_window",
                         "no_has"),_,_)
REDO:    motion(state("by_door","on_floor","by_window",
                         "no_has"),_,_)
RETURN:  motion(state("by_door","on_floor","by_window",
                         "no_has"),
         action("cross","by_door",_),state(_,"on_floor",
                         "by_window","no_has"))

CALL:    can_take(state(_,"on_floor","by_window","no_has"))
FAIL:    can_take(state(_,"on_floor","by_window","no_has"))
REDO:    can_take(state(_,"on_floor","by_window","no_has"))
CALL:    motion(state(_,"on_floor","by_window","no_has"),_,_)
FAIL:    motion(state("middle","on_floor","by_window",
                         "no_has"),_,_)
REDO:    motion(state(_,"on_floor","by_window","no_has"),_,_)
RETURN:  *motion(state("by_window","on_floor","by_window",
                         "no_has"),
     action("climb","c","d"),state("by_window","on_box",
                         "by_window","no_has"))

CALL:    can_take(state("by_window","on_box","by_window",
                         "no_has"))
FAIL:    can_take(state("by_window","on_box","by_window",
                         "no_has"))
REDO:    can_take(state("by_window","on_box","by_window",
                         "no_has"))
CALL:    motion(state("by_window","on_box","by_window",
                         "no_has"),_,_)
FAIL:    motion(state("by_window","on_box","by_window",
                         "no_has"),_,_)
REDO:    motion(state("by_window","on_box","by_window",
                         "no_has"),_,_)
FAIL:    motion(state("by_window","on_box","by_window",
                         "no_has"),_,_)
REDO:    motion(state(_,"on_floor","by_window","no_has"),_,_)
RETURN:  *motion(state("by_window","on_floor","by_window",
                         "no_has"),
      action("move","by_window",_),state(_,"on_floor",_,
                         "no_has"))

CALL:    can_take(state(_,"on_floor",_,"no_has"))
FAIL:    can_take(state(_,"on_floor",_,"no_has"))
REDO:    can_take(state(_,"on_floor",_,"no_has"))
CALL:    motion(state(_,"on_floor",_,"no_has"),_,_)
FAIL:    motion(state("middle","on_floor","middle",
                         "no_has"),_,_)
REDO:    motion(state(_,"on_floor",_,"no_has"),_,_)
RETURN:  *motion(state(_,"on_floor",_,"no_has"),
                          action("climb","c","d"),
                          state(_,"on_box",_,"no_has"))

CALL:    can_take(state(_,"on_box",_,"no_has"))
FAIL:    can_take(state(_,"on_box",_,"no_has"))
REDO:    can_take(state(_,"on_box",_,"no_has"))
CALL:    motion(state(_,"on_box",_,"no_has"),_,_)
RETURN:  *motion(state("middle","on_box","middle","no_has"),
                        action("grip","a","b"),
                        state("middle","on_box","middle","has"))

CALL:    can_take(state("middle","on_box","middle","has"))

RETURN:  *can_take(state("middle","on_box","middle","has"))
RETURN:  can_take(state("middle","on_box","middle","no_has"))
RETURN:  can_take(state("by_window","on_floor","by_window",
                         "no_has"))
RETURN:  can_take(state("by_door","on_floor","by_window",
                         "no_has"))
Goal: can_take(state(by_door,on_floor,by_window,no_has))
Yes
*/