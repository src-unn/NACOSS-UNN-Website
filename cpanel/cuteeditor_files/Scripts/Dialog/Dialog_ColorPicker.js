var OxOdf5a=["=","; path=/;"," expires=",";","cookie","length","","#ffffff","CECC","onmouseover","event","srcElement","target","className","colordiv","style","onmouseout","onclick","CheckboxColorNames","checked","cname","backgroundColor","cvalue","colorpicker.php?UC=","Culture","\x26setting=","EditorSetting","dialogWidth:500px;dialogHeight:420px;help:0;status:0;resizable:1","dialogArguments","object","onchange","color","editor","divpreview","value","#","RecentColors","SPAN","ValidColor"];function SetCookie(name,Ox7,Ox8){var Ox9=name+OxOdf5a[0]+escape(Ox7)+OxOdf5a[1];if(Ox8){var Oxa= new Date();Oxa.setSeconds(Oxa.getSeconds()+Ox8);Ox9+=OxOdf5a[2]+Oxa.toUTCString()+OxOdf5a[3];} ;document[OxOdf5a[4]]=Ox9;} ;function GetCookie(name){var Oxc=document[OxOdf5a[4]].split(OxOdf5a[3]);for(var i=0;i<Oxc[OxOdf5a[5]];i++){var Oxe=Oxc[i].split(OxOdf5a[0]);if(name==Oxe[0].replace(/\s/g,OxOdf5a[6])){return unescape(Oxe[1]);} ;} ;} ;function GetCookieDictionary(){var Ox10={};var Oxc=document[OxOdf5a[4]].split(OxOdf5a[3]);for(var i=0;i<Oxc[OxOdf5a[5]];i++){var Oxe=Oxc[i].split(OxOdf5a[0]);Ox10[Oxe[0].replace(/\s/g,OxOdf5a[6])]=unescape(Oxe[1]);} ;return Ox10;} ;function GetCookieArray(){var arr=[];var Oxc=document[OxOdf5a[4]].split(OxOdf5a[3]);for(var i=0;i<Oxc[OxOdf5a[5]];i++){var Oxe=Oxc[i].split(OxOdf5a[0]);var Ox9={name:Oxe[0].replace(/\s/g,OxOdf5a[6]),value:unescape(Oxe[1])};arr[arr[OxOdf5a[5]]]=Ox9;} ;return arr;} ;var __defaultcustomlist=[OxOdf5a[7],OxOdf5a[7],OxOdf5a[7],OxOdf5a[7],OxOdf5a[7],OxOdf5a[7],OxOdf5a[7],OxOdf5a[7]];function GetCustomColors(){var Ox15=__defaultcustomlist.concat();for(var i=0;i<18;i++){var Ox16=GetCustomColor(i);if(Ox16){Ox15[i]=Ox16;} ;} ;return Ox15;} ;function GetCustomColor(Ox18){return GetCookie(OxOdf5a[8]+Ox18);} ;function SetCustomColor(Ox18,Ox16){SetCookie(OxOdf5a[8]+Ox18,Ox16,60*60*24*365);} ;var _origincolor=OxOdf5a[6];document[OxOdf5a[9]]=function (Oxba){Oxba=window[OxOdf5a[10]]||Oxba;var Ox3e=Oxba[OxOdf5a[11]]||Oxba[OxOdf5a[12]];if(Ox3e[OxOdf5a[13]]==OxOdf5a[14]){firecolorchange(Ox3e[OxOdf5a[15]].backgroundColor);} ;} ;document[OxOdf5a[16]]=function (Oxba){Oxba=window[OxOdf5a[10]]||Oxba;var Ox3e=Oxba[OxOdf5a[11]]||Oxba[OxOdf5a[12]];if(Ox3e[OxOdf5a[13]]==OxOdf5a[14]){firecolorchange(_origincolor);} ;} ;document[OxOdf5a[17]]=function (Oxba){Oxba=window[OxOdf5a[10]]||Oxba;var Ox3e=Oxba[OxOdf5a[11]]||Oxba[OxOdf5a[12]];if(Ox3e[OxOdf5a[13]]==OxOdf5a[14]){var Ox197=document.getElementById(OxOdf5a[18])&&document.getElementById(OxOdf5a[18])[OxOdf5a[19]];if(Ox197){do_select(Ox3e.getAttribute(OxOdf5a[20])||Ox3e[OxOdf5a[15]][OxOdf5a[21]]);} else {do_select(Ox3e.getAttribute(OxOdf5a[22])||Ox3e[OxOdf5a[15]][OxOdf5a[21]]);} ;} ;} ;var _editor;function firecolorchange(Ox19a){} ;function ShowColorDialog(Ox126){var Ox25=OxOdf5a[23]+editor.GetScriptProperty(OxOdf5a[24])+OxOdf5a[25]+editor.GetScriptProperty(OxOdf5a[26]);var Ox19c=OxOdf5a[27];var Ox27=showModalDialog(Ox25,null,Ox19c);if(Ox27!=null&&Ox27!==false){Ox126(Ox27);} ;} ;if(top[OxOdf5a[28]]){if( typeof (top[OxOdf5a[28]])==OxOdf5a[29]){if(top[OxOdf5a[28]][OxOdf5a[30]]){firecolorchange=top[OxOdf5a[28]][OxOdf5a[30]];_origincolor=top[OxOdf5a[28]][OxOdf5a[31]];_editor=top[OxOdf5a[28]][OxOdf5a[32]];} ;} ;} ;var _selectedcolor=null;function do_select(Ox16){_selectedcolor=Ox16;firecolorchange(Ox16);var Ox19f=document.getElementById(OxOdf5a[33]);if(Ox19f){Ox19f[OxOdf5a[34]]=Ox16;} ;} ;function do_saverecent(Ox16){if(!Ox16){return ;} ;if(Ox16[OxOdf5a[5]]!=7){return ;} ;if(Ox16.substring(0,1)!=OxOdf5a[35]){return ;} ;var Ox1c=Ox16.substring(1,7);var Ox1a1=GetCookie(OxOdf5a[36]);if(!Ox1a1){Ox1a1=OxOdf5a[6];} ;if((Ox1a1[OxOdf5a[5]]%6)!=0){Ox1a1=OxOdf5a[6];} ;for(var i=0;i<Ox1a1[OxOdf5a[5]];i+=6){if(Ox1a1.substr(i,6)==Ox1c){Ox1a1=Ox1a1.substr(0,i)+Ox1a1.substr(i+6);i-=6;} ;} ;if(Ox1a1[OxOdf5a[5]]>31*6){Ox1a1=Ox1a1.substr(0,31*6);} ;Ox1a1=Ox1c+Ox1a1;SetCookie(OxOdf5a[36],Ox1a1,60*60*24*365);} ;function do_insert(){var Ox16;var divpreview=document.getElementById(OxOdf5a[33]);if(divpreview){Ox16=divpreview[OxOdf5a[34]];} else {Ox16=_selectedcolor;} ;try{document.createElement(OxOdf5a[37])[OxOdf5a[15]][OxOdf5a[31]]=Ox16;do_saverecent(Ox16);Window_SetDialogReturnValue(window,Ox16);Window_CloseDialog(window);} catch(x){alert(CE_GetStr(OxOdf5a[38]));divpreview[OxOdf5a[34]]=OxOdf5a[6];return false;} ;} ;