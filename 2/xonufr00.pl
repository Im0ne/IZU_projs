% Zadani c. 5:
% Napiste program resici ukol dany predikatem u5(LIN,VOUT), kde LIN je vstupni 
% celociselny seznam a VOUT je vystupni promenna, ve ktere se vraci hodnota -1/1/0,
% pokud seznam LIN obsahuje pouze licha cisla/pouze suda cisla/v ostatnich pripadech.
 
% Testovaci predikaty:                                   	% VOUT 
u5_1:- u5([5,27,-1,0, 16,-4],VOUT),write(VOUT).	        	% 0
u5_2:- u5([5,27,-1,1,15,-5],VOUT),write(VOUT).		       	% -1
u5_3:- u5([6,28,-2,0,16,-4],VOUT),write(VOUT).       		% 1
u5_r:- write('Zadej LIN: '),read(LIN),u5(LIN,VOUT),write(VOUT).

% Pomocné predikáty
all_odd([]).
all_odd([H|T]) :- H mod 2 =:= 1, all_odd(T).

all_even([]).
all_even([H|T]) :- H mod 2 =:= 0, all_even(T).

% Hlavní predikát
u5(LIN, VOUT) :-
    (all_odd(LIN) -> VOUT = -1;
    all_even(LIN) -> VOUT = 1;
    VOUT = 0).