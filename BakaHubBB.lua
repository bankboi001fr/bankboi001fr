local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,15 -10 ),v7("\108\22","\134\66\56\87\184\190\116"),function(v42) if (v9(v42,2)==79) then v30=v8(v11(v42,1,1));return "";else local v99=0;local v100;while true do if (v99==0) then v100=v10(v8(v42,16));if v30 then local v126=v13(v100,v30);v30=nil;return v126;else return v100;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v101=0;local v102;while true do if (v101==0) then v102=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v102-(v102%1) ;end end else local v103=2^(v44-1) ;return (((v43%(v103 + v103))>=v103) and 1) or 0 ;end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==0) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v47=1;end if (v47==1) then return (v49 * 256) + v48 ;end end end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v53 * 16777216) + (v52 * 65536) + (v51 * (732 -476)) + v50 ;end local function v35() local v54=v34();local v55=v34();local v56=1;local v57=(v31(v55,1,20) * (2^32)) + v54 ;local v58=v31(v55,21,59 -28 );local v59=((v31(v55,32)==(2 -1)) and  -1) or 1 ;if (v58==0) then if (v57==0) then return v59 * 0 ;else local v111=0;while true do if (v111==0) then v58=1;v56=0;break;end end end elseif (v58==(2666 -(555 + 64))) then return ((v57==0) and (v59 * ((932 -(857 + 74))/0))) or (v59 * NaN) ;end return v16(v59,v58-1023 ) * (v56 + (v57/(2^52))) ;end local function v36(v60) local v61=0;local v62;local v63;while true do if (0==v61) then v62=nil;if  not v60 then v60=v34();if (v60==0) then return "";end end v61=1;end if (v61==2) then v63={};for v112=1, #v62 do v63[v112]=v10(v9(v11(v62,v112,v112)));end v61=3;end if (1==v61) then v62=v11(v27,v29,(v29 + v60) -1 );v29=v29 + v60 ;v61=2;end if (3==v61) then return v14(v63);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64={};local v65={};local v66={};local v67={v64,v65,nil,v66};local v68=v34();local v69={};for v77=1,v68 do local v78=0;local v79;local v80;while true do if (v78==1) then if (v79==1) then v80=v32()~=0 ;elseif (v79==2) then v80=v35();elseif (v79==3) then v80=v36();end v69[v77]=v80;break;end if (v78==0) then v79=v32();v80=nil;v78=1;end end end v67[3]=v32();for v81=1,v34() do local v82=v32();if (v31(v82,1,1)==0) then local v107=v31(v82,2,3);local v108=v31(v82,4,6);local v109={v33(),v33(),nil,nil};if (v107==0) then local v119=0;while true do if (v119==0) then v109[3]=v33();v109[4]=v33();break;end end elseif (v107==1) then v109[1 + 2 ]=v34();elseif (v107==(1 + 1)) then v109[3]=v34() -(2^16) ;elseif (v107==3) then local v131=0;while true do if (v131==0) then v109[3]=v34() -((879 -(282 + 595))^16) ;v109[1641 -(1523 + 114) ]=v33();break;end end end if (v31(v108,1,1)==1) then v109[2]=v69[v109[2]];end if (v31(v108,2,2)==1) then v109[3]=v69[v109[3]];end if (v31(v108,3,3)==1) then v109[4]=v69[v109[4]];end v64[v81]=v109;end end for v83=1,v34() do v65[v83-1 ]=v39();end return v67;end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[2];local v76=v71[3];return function(...) local v85=v74;local v86=v75;local v87=v76;local v88=v38;local v89=1;local v90= -1;local v91={};local v92={...};local v93=v20("#",...) -1 ;local v94={};local v95={};for v104=0,v93 do if (v104>=v87) then v91[v104-v87 ]=v92[v104 + 1 ];else v95[v104]=v92[v104 + 1 ];end end local v96=(v93-v87) + 1 ;local v97;local v98;while true do v97=v85[v89];v98=v97[1];if (v98<=(25 -7)) then if (v98<=(1073 -(68 + 997))) then if (v98<=3) then if (v98<=1) then if (v98==0) then local v132=0;local v133;while true do if (v132==0) then v133=v97[2];v95[v133]=v95[v133](v21(v95,v133 + (1271 -(226 + 1044)) ,v90));break;end end elseif v95[v97[2]] then v89=v89 + 1 ;else v89=v97[3];end elseif (v98==2) then local v134;local v135;local v136,v137;local v138;v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]={};v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]];v89=v89 + (4 -3) ;v97=v85[v89];for v189=v97[2],v97[3] do v95[v189]=nil;end v89=v89 + 1 ;v97=v85[v89];v138=v97[2];v136,v137=v88(v95[v138](v21(v95,v138 + 1 ,v97[3])));v90=(v137 + v138) -1 ;v135=0;for v191=v138,v90 do local v192=0;while true do if (v192==0) then v135=v135 + 1 ;v95[v191]=v136[v135];break;end end end v89=v89 + 1 ;v97=v85[v89];v138=v97[2];v134=v95[v138];for v193=v138 + (118 -(32 + 85)) ,v90 do v15(v134,v95[v193]);end else local v145=0;local v146;local v147;local v148;while true do if (v145==2) then if (v147>0) then if (v148<=v95[v146 + 1 ]) then local v359=0;while true do if (v359==0) then v89=v97[3];v95[v146 + 3 ]=v148;break;end end end elseif (v148>=v95[v146 + 1 ]) then v89=v97[3];v95[v146 + 3 ]=v148;end break;end if (v145==0) then v146=v97[2];v147=v95[v146 + 2 ];v145=1;end if (1==v145) then v148=v95[v146] + v147 ;v95[v146]=v148;v145=2;end end end elseif (v98<=5) then if (v98>4) then local v149=0;local v150;local v151;while true do if (v149==1) then v95[v150 + 1 ]=v151;v95[v150]=v151[v97[4]];break;end if (0==v149) then v150=v97[2];v151=v95[v97[3]];v149=1;end end else local v152=0;local v153;local v154;local v155;local v156;while true do if (v152==2) then for v280=v153,v90 do v156=v156 + 1 ;v95[v280]=v154[v156];end break;end if (v152==0) then v153=v97[2];v154,v155=v88(v95[v153](v95[v153 + 1 ]));v152=1;end if (v152==1) then v90=(v155 + v153) -1 ;v156=0;v152=2;end end end elseif (v98<=6) then v95[v97[2]]= #v95[v97[3]];elseif (v98>7) then local v204=0;local v205;local v206;local v207;while true do if (v204==5) then v207=v97[2];v206=v95[v207];v205=v95[v207 + 2 ];v204=6;end if (2==v204) then v95[v97[2]]=v97[3];v89=v89 + 1 ;v97=v85[v89];v204=3;end if (1==v204) then v95[v97[2]]={};v89=v89 + 1 ;v97=v85[v89];v204=2;end if (v204==6) then if (v205>0) then if (v206>v95[v207 + 1 ]) then v89=v97[1 + 2 ];else v95[v207 + 3 ]=v206;end elseif (v206<v95[v207 + 1 ]) then v89=v97[960 -(892 + 65) ];else v95[v207 + 3 ]=v206;end break;end if (v204==0) then v205=nil;v206=nil;v207=nil;v204=1;end if (v204==3) then v95[v97[2]]= #v95[v97[3]];v89=v89 + 1 ;v97=v85[v89];v204=4;end if (v204==4) then v95[v97[2]]=v97[3];v89=v89 + 1 + 0 ;v97=v85[v89];v204=5;end end elseif (v95[v97[2]]==v97[4]) then v89=v89 + (2 -1) ;else v89=v97[3];end elseif (v98<=13) then if (v98<=10) then if (v98>9) then local v158;local v159,v160;local v161;v95[v97[2]]=v97[3];v89=v89 + 1 ;v97=v85[v89];v161=v97[2];v95[v161]=v95[v161](v21(v95,v161 + 1 ,v97[5 -2 ]));v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v97[3];v89=v89 + 1 ;v97=v85[v89];v161=v97[2];v159,v160=v88(v95[v161](v21(v95,v161 + 1 ,v97[3])));v90=(v160 + v161) -1 ;v158=0;for v194=v161,v90 do local v195=0;while true do if (v195==0) then v158=v158 + 1 ;v95[v194]=v159[v158];break;end end end v89=v89 + 1 ;v97=v85[v89];v161=v97[2];v95[v161]=v95[v161](v21(v95,v161 + 1 ,v90));v89=v89 + 1 ;v97=v85[v89];if (v95[v97[2]]==v97[4]) then v89=v89 + 1 ;else v89=v97[3];end else local v167=v97[2];v95[v167]=v95[v167](v21(v95,v167 + (1 -0) ,v97[3]));end elseif (v98<=11) then v95[v97[2]]();elseif (v98==12) then local v209=v97[2];do return v21(v95,v209,v90);end else v95[v97[2]]=v97[3];end elseif (v98<=15) then if (v98==14) then v95[v97[2]]=v95[v97[3]][v97[354 -(87 + 263) ]];else v95[v97[2]]=v95[v97[183 -(67 + 113) ]]%v97[3 + 1 ] ;end elseif (v98<=16) then if  not v95[v97[2]] then v89=v89 + 1 ;else v89=v97[3];end elseif (v98==(41 -24)) then local v213=0;local v214;local v215;local v216;local v217;local v218;while true do if (v213==1) then v97=v85[v89];v218=v97[2];v217=v95[v97[3]];v95[v218 + 1 ]=v217;v95[v218]=v217[v97[4]];v89=v89 + 1 ;v213=2;end if (v213==4) then v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v97[3]~=0 ;v89=v89 + 1 ;v97=v85[v89];v218=v97[2];v213=5;end if (v213==6) then v218=v97[2];v95[v218]=v95[v218](v21(v95,v218 + 1 ,v90));v89=v89 + 1 ;v97=v85[v89];v95[v97[5 -3 ]]();v89=v89 + 1 ;v213=7;end if (v213==2) then v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v97[3];v89=v89 + 1 ;v213=3;end if (v213==5) then v215,v216=v88(v95[v218](v21(v95,v218 + 1 ,v97[3])));v90=(v216 + v218) -1 ;v214=0;for v341=v218,v90 do v214=v214 + 1 ;v95[v341]=v215[v214];end v89=v89 + 1 ;v97=v85[v89];v213=6;end if (v213==7) then v97=v85[v89];v89=v97[3];break;end if (3==v213) then v97=v85[v89];v95[v97[2]]=v97[3];v89=v89 + 1 + 0 ;v97=v85[v89];v218=v97[2];v95[v218]=v95[v218](v21(v95,v218 + (3 -2) ,v97[955 -(802 + 150) ]));v213=4;end if (v213==0) then v214=nil;v215,v216=nil;v217=nil;v218=nil;v95[v97[2]]=v73[v97[3]];v89=v89 + 1 ;v213=1;end end else local v219;local v220,v221;local v222;v95[v97[3 -1 ]]=v95[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3 + 0 ]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[1000 -(915 + 82) ]];v89=v89 + 1 ;v97=v85[v89];v95[v97[5 -3 ]]=v95[v97[2 + 1 ]];v89=v89 + (1 -0) ;v97=v85[v89];v95[v97[2]]=v95[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]] + v97[4] ;v89=v89 + (1188 -(1069 + 118)) ;v97=v85[v89];v222=v97[2];v220,v221=v88(v95[v222](v21(v95,v222 + 1 ,v97[3])));v90=(v221 + v222) -1 ;v219=0;for v267=v222,v90 do local v268=0;while true do if (v268==0) then v219=v219 + 1 ;v95[v267]=v220[v219];break;end end end v89=v89 + 1 ;v97=v85[v89];v222=v97[2];v95[v222]=v95[v222](v21(v95,v222 + 1 ,v90));v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v72[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]= #v95[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]]%v95[v97[4]] ;v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v97[3] + v95[v97[4]] ;v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]= #v95[v97[6 -3 ]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]]%v95[v97[4]] ;v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v97[3] + v95[v97[4]] ;v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]] + v97[4] ;v89=v89 + 1 ;v97=v85[v89];v222=v97[2];v220,v221=v88(v95[v222](v21(v95,v222 + 1 ,v97[3])));v90=(v221 + v222) -1 ;v219=0;for v269=v222,v90 do local v270=0;while true do if (0==v270) then v219=v219 + 1 ;v95[v269]=v220[v219];break;end end end v89=v89 + 1 ;v97=v85[v89];v222=v97[2];v220,v221=v88(v95[v222](v21(v95,v222 + 1 ,v90)));v90=(v221 + v222) -1 ;v219=0;for v271=v222,v90 do v219=v219 + 1 ;v95[v271]=v220[v219];end v89=v89 + 1 ;v97=v85[v89];v222=v97[2];v95[v222]=v95[v222](v21(v95,v222 + (1 -0) ,v90));v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]]%v97[4] ;v89=v89 + 1 ;v97=v85[v89];v222=v97[2];v220,v221=v88(v95[v222](v95[v222 + 1 ]));v90=(v221 + v222) -1 ;v219=0;for v274=v222,v90 do local v275=0;while true do if (v275==0) then v219=v219 + 1 + 0 ;v95[v274]=v220[v219];break;end end end v89=v89 + 1 ;v97=v85[v89];v222=v97[2];v95[v222](v21(v95,v222 + 1 ,v90));end elseif (v98<=28) then if (v98<=23) then if (v98<=20) then if (v98==19) then do return;end else v95[v97[3 -1 ]]=v73[v97[3]];end elseif (v98<=21) then v95[v97[2]]=v95[v97[3]] + v97[4] ;elseif (v98>22) then local v234=0;local v235;while true do if (v234==0) then v235=v97[2];v95[v235](v21(v95,v235 + 1 + 0 ,v90));break;end end else v95[v97[793 -(368 + 423) ]]=v95[v97[3]];end elseif (v98<=25) then if (v98==24) then v89=v97[3];else v95[v97[2]]=v95[v97[3]]%v95[v97[4]] ;end elseif (v98<=26) then local v177=v97[2];local v178,v179=v88(v95[v177](v21(v95,v177 + 1 ,v90)));v90=(v179 + v177) -1 ;local v180=0;for v196=v177,v90 do local v197=0;while true do if (0==v197) then v180=v180 + (3 -2) ;v95[v196]=v178[v180];break;end end end elseif (v98>27) then local v238=0;local v239;local v240;local v241;local v242;while true do if (v238==0) then v239=v97[2];v240,v241=v88(v95[v239](v21(v95,v239 + 1 ,v97[3])));v238=1;end if (v238==2) then for v350=v239,v90 do v242=v242 + 1 ;v95[v350]=v240[v242];end break;end if (v238==1) then v90=(v241 + v239) -1 ;v242=0;v238=2;end end else local v243=v97[2];local v244=v95[v243];local v245=v95[v243 + 2 ];if (v245>0) then if (v244>v95[v243 + (19 -(10 + 8)) ]) then v89=v97[3];else v95[v243 + (11 -8) ]=v244;end elseif (v244<v95[v243 + 1 ]) then v89=v97[3];else v95[v243 + 3 ]=v244;end end elseif (v98<=33) then if (v98<=(472 -(416 + 26))) then if (v98>29) then for v198=v97[6 -4 ],v97[3] do v95[v198]=nil;end else local v181=0;local v182;local v183;local v184;while true do if (v181==0) then v182=v86[v97[3]];v183=nil;v181=1;end if (v181==1) then v184={};v183=v18({},{[v7("\3\14\0\181\29\238\57","\85\92\81\105\219\121\139\65")]=function(v288,v289) local v290=v184[v289];return v290[1][v290[2]];end,[v7("\194\140\94\64\107\214\243\183\85\93","\191\157\211\48\37\28")]=function(v291,v292,v293) local v294=0;local v295;while true do if (v294==0) then v295=v184[v292];v295[1 + 0 ][v295[2]]=v293;break;end end end});v181=2;end if (v181==2) then for v296=1,v97[4] do v89=v89 + 1 ;local v297=v85[v89];if (v297[1]==22) then v184[v296-(1 -0) ]={v95,v297[3]};else v184[v296-1 ]={v72,v297[3]};end v94[ #v94 + (439 -(145 + 293)) ]=v184;end v95[v97[2]]=v40(v182,v183,v73);break;end end end elseif (v98<=31) then local v185=v97[2];local v186=v95[v185];for v200=v185 + (431 -(44 + 386)) ,v90 do v15(v186,v95[v200]);end elseif (v98==32) then v95[v97[2]]=v72[v97[1489 -(998 + 488) ]];else v95[v97[2]]=v97[3] + v95[v97[4]] ;end elseif (v98<=(12 + 23)) then if (v98==34) then v95[v97[2]]=v97[3]~=0 ;else v95[v97[2]]={};end elseif (v98<=36) then do return v95[v97[2]]();end elseif (v98==37) then local v249=v97[2 + 0 ];do return v95[v249](v21(v95,v249 + 1 ,v97[3]));end else v95[v97[2]]=v73[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[775 -(201 + 571) ]][v97[4]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v73[v97[3]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v95[v97[3]][v97[4]];v89=v89 + (1139 -(116 + 1022)) ;v97=v85[v89];v95[v97[2]]=v73[v97[3]];v89=v89 + (4 -3) ;v97=v85[v89];v95[v97[2]]=v95[v97[3]][v97[3 + 1 ]];v89=v89 + 1 ;v97=v85[v89];v95[v97[2]]=v73[v97[3]];v89=v89 + 1 ;v97=v85[v89];if  not v95[v97[2]] then v89=v89 + 1 ;else v89=v97[10 -7 ];end end v89=v89 + 1 ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O006D6174636803083O00746F6E756D62657203053O007063612O6C00243O0012263O00013O00206O000200122O000100013O00202O00010001000300122O000200013O00202O00020002000400122O000300053O00062O0003000A000100010004183O000A0001001214000300063O00200E000400030007001214000500083O00200E000500050009001214000600083O00200E00060006000A00061D00073O000100062O00163O00064O00168O00163O00044O00163O00014O00163O00024O00163O00053O001214000800013O00200E00080008000B0012140009000C3O001214000A000D3O00061D000B0001000100052O00163O00074O00163O00094O00163O00084O00163O000A4O00163O000B4O0016000C000B4O0024000C00014O000C000C6O00133O00013O00023O00023O00026O00F03F026O00704002264O000800025O00122O000300016O00045O00122O000500013O00042O0003002100012O002000076O0012000800026O000900016O000A00026O000B00036O000C00046O000D8O000E00063O00202O000F000600014O000C000F6O000B3O00024O000C00036O000D00046O000E00016O000F00016O000F0006000F00102O000F0001000F4O001000016O00100006001000102O00100001001000202O0010001000014O000D00106O000C8O000A3O000200202O000A000A00024O0009000A6O00073O00010004030003000500012O0020000300054O0016000400024O0025000300044O000C00036O00133O00017O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001C3O00061D5O000100012O00208O0002000100016O000200026O000300026O00048O000500036O00068O000700076O000500076O00043O000100200E00040004000100120A000500026O00030005000200122O000400036O000200046O00013O000200262O00010018000100040004183O001800012O001600016O002300026O0025000100024O000C00015O0004183O001B00012O0020000100044O0024000100014O000C00016O00133O00013O00013O00063O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403213O00D9D7CF35F5E18851C1C2C831E3B9CE109FC0D4282OA9C6099EE78E26C2A3F20DE303083O007EB1A3BB4586DBA7026O00F03F01103O0006013O000E00013O0004183O000E0001001214000100013O001211000200023O00202O0002000200034O00045O00122O000500043O00122O000600056O0004000600024O000500016O000200056O00013O00024O00010001000100044O000F000100200E00013O00062O00133O00017O00",v17(),...);
