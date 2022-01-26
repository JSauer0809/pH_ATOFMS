%%
experimentList = cell(1,5); %experiment list will contain description, start and end times, pid list and index into PART table for all experiments
%create lists of PIDs for different benzoic acid pH conditions

%pH 11 12mM Benzoic Acid + 250mM NaCl + 900uM NaI
experimentList{1,1} = 'Benzoic Acid NaCl NaI pH 11 LP 1';
experimentList{1,2} = datenum('15-MAY-2018 11:39:05');
experimentList{1,3} = datenum('15-MAY-2018 11:50:35');

experimentList{2,1} = 'Benzoic Acid NaCl NaI pH 11 LP 2';
experimentList{2,2} = datenum('15-MAY-2018 11:51:01');
experimentList{2,3} = datenum('15-MAY-2018 11:58:44');

experimentList{3,1} = 'Benzoic Acid NaCl NaI pH 11 LP 3';
experimentList{3,2} = datenum('15-MAY-2018 12:01:14');
experimentList{3,3} = datenum('15-MAY-2018 12:34:28');

%pH 09 12mM Benzoic Acid + 250mM NaCl + 900uM NaI
experimentList{4,1} = 'Benzoic Acid NaCl NaI pH 09 LP 1';
experimentList{4,2} = datenum('15-MAY-2018 13:17:43');
experimentList{4,3} = datenum('15-MAY-2018 13:28:26');

experimentList{5,1} = 'Benzoic Acid NaCl NaI pH 09 LP 2';
experimentList{5,2} = datenum('15-MAY-2018 13:30:06');
experimentList{5,3} = datenum('15-MAY-2018 13:40:14');

experimentList{6,1} = 'Benzoic Acid NaCl NaI pH 09 LP 3';
experimentList{6,2} = datenum('15-MAY-2018 12:59:36');
experimentList{6,3} = datenum('15-MAY-2018 13:15:45');

%pH 06 12mM Benzoic Acid + 250mM NaCl + 900uM NaI
experimentList{7,1} = 'Benzoic Acid NaCl NaI pH 06 LP 1';
experimentList{7,2} = datenum('15-MAY-2018 15:45:16');
experimentList{7,3} = datenum('15-MAY-2018 15:58:43');

experimentList{8,1} = 'Benzoic Acid NaCl NaI pH 06 LP 2';
experimentList{8,2} = datenum('15-MAY-2018 15:34:26');
experimentList{8,3} = datenum('15-MAY-2018 15:44:11');

experimentList{9,1} = 'Benzoic Acid NaCl NaI pH 06 LP 3';
experimentList{9,2} = datenum('15-MAY-2018 15:59:55');
experimentList{9,3} = datenum('15-MAY-2018 16:13:51');

%pH 05 12mM Benzoic Acid + 250mM NaCl + 900uM NaI
experimentList{10,1} = 'Benzoic Acid NaCl NaI pH 05 LP 1';
experimentList{10,2} = datenum('15-MAY-2018 16:40:09');
experimentList{10,3} = datenum('15-MAY-2018 16:50:34');

experimentList{11,1} = 'Benzoic Acid NaCl NaI pH 05 LP 2';
experimentList{11,2} = datenum('15-MAY-2018 16:51:34');
experimentList{11,3} = datenum('15-MAY-2018 16:59:18');

experimentList{12,1} = 'Benzoic Acid NaCl NaI pH 05 LP 3';
experimentList{12,2} = datenum('15-MAY-2018 16:20:23');
experimentList{12,3} = datenum('15-MAY-2018 16:38:42');

%pH 04 12mM Benzoic Acid + 250mM NaCl + 900uM NaI
experimentList{13,1} = 'Benzoic Acid NaCl NaI pH 04 LP 1';
experimentList{13,2} = datenum('16-MAY-2018 09:43:33');
experimentList{13,3} = datenum('16-MAY-2018 09:54:25');

experimentList{14,1} = 'Benzoic Acid NaCl NaI pH 04 LP 2';
experimentList{14,2} = datenum('16-MAY-2018 09:32:24');
experimentList{14,3} = datenum('16-MAY-2018 09:42:52');

experimentList{15,1} = 'Benzoic Acid NaCl NaI pH 04 LP 3';
experimentList{15,2} = datenum('16-MAY-2018 09:55:22');
experimentList{15,3} = datenum('16-MAY-2018 10:16:20');

%pH 03 12mM Benzoic Acid + 250mM NaCl + 900uM NaI
experimentList{16,1} = 'Benzoic Acid NaCl NaI pH 03 LP 1';
experimentList{16,2} = datenum('16-MAY-2018 11:08:02');
experimentList{16,3} = datenum('16-MAY-2018 11:31:05');

experimentList{17,1} = 'Benzoic Acid NaCl NaI pH 03 LP 2';
experimentList{17,2} = datenum('16-MAY-2018 11:32:11');
experimentList{17,3} = datenum('16-MAY-2018 11:46:13');

experimentList{18,1} = 'Benzoic Acid NaCl NaI pH 03 LP 3';
experimentList{18,2} = datenum('16-MAY-2018 10:21:18');
experimentList{18,3} = datenum('16-MAY-2018 11:07:34');


%pH 02 12mM Benzoic Acid + 250mM NaCl + 900uM NaI
experimentList{19,1} = 'Benzoic Acid NaCl NaI pH 02 LP 1';
experimentList{19,2} = datenum('16-MAY-2018 13:26:13');
experimentList{19,3} = datenum('16-MAY-2018 14:04:26');

experimentList{20,1} = 'Benzoic Acid NaCl NaI pH 02 LP 2';
experimentList{20,2} = datenum('16-MAY-2018 11:54:12');
experimentList{20,3} = datenum('16-MAY-2018 13:24:58');

experimentList{21,1} = 'Benzoic Acid NaCl NaI pH 02 LP 3';
experimentList{21,2} = datenum('16-MAY-2018 14:05:23');
experimentList{21,3} = datenum('16-MAY-2018 14:30:31');


%New pH Experiments run on May 31st 2018 with Benzoic Acid

%This section is for wet particles 
%pH 03 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Wet
experimentList{22,1} = 'May Benzoic Acid NaCl NaI pH 03 lp LOW Wet';
experimentList{22,2} = datenum('31-MAY-2018 09:45:13');
experimentList{22,3} = datenum('31-MAY-2018 09:55:54');

experimentList{23,1} = 'May Benzoic Acid NaCl NaI pH 03 lp HIGH Wet';
experimentList{23,2} = datenum('31-MAY-2018 09:56:19');
experimentList{23,3} = datenum('31-MAY-2018 10:21:57');

%pH 04 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Wet
experimentList{24,1} = 'May Benzoic Acid NaCl NaI pH 04 lp LOW Wet';
experimentList{24,2} = datenum('31-MAY-2018 10:48:25');
experimentList{24,3} = datenum('31-MAY-2018 11:41:38');

experimentList{25,1} = 'May Benzoic Acid NaCl NaI pH 04 lp HIGH Wet';
experimentList{25,2} = datenum('31-MAY-2018 10:31:23');
experimentList{25,3} = datenum('31-MAY-2018 10:47:37');

%pH 4.5 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Wet
experimentList{26,1} = 'May Benzoic Acid NaCl NaI pH 4_5 lp LOW Wet';
experimentList{26,2} = datenum('31-MAY-2018 12:41:17');
experimentList{26,3} = datenum('31-MAY-2018 13:22:38');

experimentList{27,1} = 'May Benzoic Acid NaCl NaI pH 4_5 lp HIGH Wet';
experimentList{27,2} = datenum('31-MAY-2018 13:23:04');
experimentList{27,3} = datenum('31-MAY-2018 13:46:32');

%pH 05 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Wet
experimentList{28,1} = 'May Benzoic Acid NaCl NaI pH 05 lp LOW Wet';
experimentList{28,2} = datenum('31-MAY-2018 14:14:22');
experimentList{28,3} = datenum('31-MAY-2018 14:42:39');

experimentList{29,1} = 'May Benzoic Acid NaCl NaI pH 05 lp HIGH Wet';
experimentList{29,2} = datenum('31-MAY-2018 13:59:35');
experimentList{29,3} = datenum('31-MAY-2018 14:14:04');

%pH 06 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Wet
experimentList{30,1} = 'May Benzoic Acid NaCl NaI pH 06 lp LOW Wet';
experimentList{30,2} = datenum('31-MAY-2018 16:20:32');
experimentList{30,3} = datenum('31-MAY-2018 16:48:56');

experimentList{31,1} = 'May Benzoic Acid NaCl NaI pH 06 lp HIGH Wet';
experimentList{31,2} = datenum('31-MAY-2018 16:49:12');
experimentList{31,3} = datenum('31-MAY-2018 17:04:06');

%pH 10 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Wet
experimentList{32,1} = 'May Benzoic Acid NaCl NaI pH 10 lp LOW Wet';
experimentList{32,2} = datenum('31-MAY-2018 17:23:08');
experimentList{32,3} = datenum('31-MAY-2018 17:49:46');

experimentList{33,1} = 'May Benzoic Acid NaCl NaI pH 10 lp HIGH Wet';
experimentList{33,2} = datenum('31-MAY-2018 17:09:14');
experimentList{33,3} = datenum('31-MAY-2018 17:22:48');

%pH 11 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Wet
experimentList{34,1} = 'May Benzoic Acid NaCl NaI pH 11 lp LOW Wet';
experimentList{34,2} = [datenum('31-MAY-2018 18:29:04'); datenum('31-MAY-2018 18:48:40')]; %data from LPlow was taken at 2 separate times
experimentList{34,3} = [datenum('31-MAY-2018 18:40:50'); datenum('31-MAY-2018 18:51:11')];

experimentList{61,1} = 'May Benzoic Acid NaCl NaI pH 11 lp HIGH Wet';
experimentList{61,2} = datenum('31-MAY-2018 18:40:50');
experimentList{61,3} = datenum('31-MAY-2018 18:48:40');

%This section is for dried particles 
%pH 03 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Dry
experimentList{35,1} = 'May Benzoic Acid NaCl NaI pH 03 lp LOW Dry';
experimentList{35,2} = datenum('01-JUN-2018 11:25:17');
experimentList{35,3} = datenum('01-JUN-2018 11:41:47');

experimentList{36,1} = 'May Benzoic Acid NaCl NaI pH 03 lp HIGH Dry';
experimentList{36,2} = [datenum('01-JUN-2018 11:05:24'); datenum('01-JUN-2018 11:41:48')];
experimentList{36,3} = [datenum('01-JUN-2018 11:24:49');datenum('01-JUN-2018 11:59:32')];

%pH 04 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Dry
experimentList{37,1} = 'May Benzoic Acid NaCl NaI pH 04 lp LOW Dry';
experimentList{37,2} = datenum('31-MAY-2018 11:46:13');
experimentList{37,3} = datenum('31-MAY-2018 12:03:40');

experimentList{38,1} = 'May Benzoic Acid NaCl NaI pH 04 lp HIGH Dry';
experimentList{38,2} = datenum('31-MAY-2018 12:03:40');
experimentList{38,3} = datenum('31-MAY-2018 12:15:19');

%pH 4.5 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Dry
experimentList{39,1} = 'May Benzoic Acid NaCl NaI pH 4_5 lp LOW Dry';
experimentList{39,2} = datenum('31-MAY-2018 12:27:15');
experimentList{39,3} = datenum('31-MAY-2018 12:37:28');

experimentList{40,1} = 'May Benzoic Acid NaCl NaI pH 4_5 lp HIGH Dry';
experimentList{40,2} = datenum('31-MAY-2018 12:21:28');
experimentList{40,3} = datenum('31-MAY-2018 12:26:57');

%pH 5 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Dry
experimentList{41,1} = 'May Benzoic Acid NaCl NaI pH 05 lp LOW Dry';
experimentList{41,2} = datenum('31-MAY-2018 15:20:28');
experimentList{41,3} = datenum('31-MAY-2018 15:30:16');

experimentList{42,1} = 'May Benzoic Acid NaCl NaI pH 05 lp HIGH Dry';
experimentList{42,2} = datenum('31-MAY-2018 15:30:46');
experimentList{42,3} = datenum('31-MAY-2018 15:44:12');

%pH 6 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Dry
experimentList{43,1} = 'May Benzoic Acid NaCl NaI pH 06 lp LOW Dry';
experimentList{43,2} = datenum('31-MAY-2018 16:06:54'); 
experimentList{43,3} = datenum('31-MAY-2018 16:19:52'); 

experimentList{44,1} = 'May Benzoic Acid NaCl NaI pH 06 lp HIGH Dry';
experimentList{44,2} = [datenum('31-MAY-2018 15:49:07'); datenum('31-MAY-2018 16:00:08')];
experimentList{44,3} = [datenum('31-MAY-2018 15:53:40'); datenum('31-MAY-2018 16:05:18')];

%pH 10 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Dry
experimentList{45,1} = 'May Benzoic Acid NaCl NaI pH 10 lp LOW Dry';
experimentList{45,2} = datenum('31-MAY-2018 17:53:30'); 
experimentList{45,3} = datenum('31-MAY-2018 18:02:56'); 

experimentList{46,1} = 'May Benzoic Acid NaCl NaI pH 10 lp HIGH Dry';
experimentList{46,2} = datenum('31-MAY-2018 18:02:58'); 
experimentList{46,3} = datenum('31-MAY-2018 18:07:51'); 

%pH 11 12mM Benzoic Acid + 250mM NaCl + 900uM NaI Dry
experimentList{47,1} = 'May Benzoic Acid NaCl NaI pH 11 lp LOW Dry';
experimentList{47,2} = datenum('31-MAY-2018 18:19:04'); 
experimentList{47,3} = datenum('31-MAY-2018 18:27:44'); 

experimentList{48,1} = 'May Benzoic Acid NaCl NaI pH 11 lp HIGH Dry';
experimentList{48,2} = datenum('31-MAY-2018 18:13:33'); 
experimentList{48,3} = datenum('31-MAY-2018 18:19:03'); 

%This section is for particles in which extra NaI was added

%pH 03 12mM Benzoic Acid + 250mM NaCl + 900uM xtraNaI Wet
experimentList{49,1} = 'May Benzoic Acid NaCl xtraNaI pH 03 lp LOW Wet';
experimentList{49,2} = datenum('01-JUN-2018 13:22:59'); 
experimentList{49,3} = datenum('01-JUN-2018 14:06:26'); 

experimentList{50,1} = 'May Benzoic Acid NaCl xtraNaI pH 03 lp HIGH Wet';
experimentList{50,2} = datenum('01-JUN-2018 14:06:30'); 
experimentList{50,3} = datenum('01-JUN-2018 14:44:03'); 

%pH 04 12mM Benzoic Acid + 250mM NaCl + 900uM xtraNaI Wet
experimentList{51,1} = 'May Benzoic Acid NaCl xtraNaI pH 04 lp LOW Wet';
experimentList{51,2} = datenum('01-JUN-2018 12:50:43'); 
experimentList{51,3} = datenum('01-JUN-2018 13:16:58'); 

experimentList{52,1} = 'May Benzoic Acid NaCl xtraNaI pH 04 lp HIGH Wet';
experimentList{52,2} = datenum('01-JUN-2018 12:42:27'); 
experimentList{52,3} = datenum('01-JUN-2018 12:50:19'); 

%pH 4.5 12mM Benzoic Acid + 250mM NaCl + 900uM xtraNaI Wet
experimentList{53,1} = 'May Benzoic Acid NaCl xtraNaI pH 4_5 lp LOW Wet';
experimentList{53,2} = datenum('01-JUN-2018 14:48:40'); 
experimentList{53,3} = datenum('01-JUN-2018 15:13:50'); 

experimentList{54,1} = 'May Benzoic Acid NaCl xtraNaI pH 4_5 lp HIGH Wet';
experimentList{54,2} = datenum('01-JUN-2018 15:17:47'); 
experimentList{54,3} = datenum('01-JUN-2018 15:53:07'); 

%pH 05 12mM Benzoic Acid + 250mM NaCl + 900uM xtraNaI Wet
experimentList{55,1} = 'May Benzoic Acid NaCl xtraNaI pH 05 lp LOW Wet';
experimentList{55,2} = datenum('01-JUN-2018 15:58:46'); 
experimentList{55,3} = datenum('01-JUN-2018 16:15:04'); 

experimentList{56,1} = 'May Benzoic Acid NaCl xtraNaI pH 05 lp HIGH Wet';
experimentList{56,2} = datenum('01-JUN-2018 16:15:22'); 
experimentList{56,3} = datenum('01-JUN-2018 16:26:22'); 

%pH 06 12mM Benzoic Acid + 250mM NaCl + 900uM xtraNaI Wet
experimentList{57,1} = 'May Benzoic Acid NaCl xtraNaI pH 06 lp LOW Wet';
experimentList{57,2} = datenum('01-JUN-2018 17:51:44'); 
experimentList{57,3} = datenum('01-JUN-2018 18:41:27'); 

experimentList{58,1} = 'May Benzoic Acid NaCl xtraNaI pH 06 lp HIGH Wet';
experimentList{58,2} = datenum('01-JUN-2018 16:37:47'); 
experimentList{58,3} = datenum('01-JUN-2018 16:47:23'); 

%pH 11 12mM Benzoic Acid + 250mM NaCl + 900uM xtraNaI Wet
experimentList{59,1} = 'May Benzoic Acid NaCl xtraNaI pH 11 lp LOW Wet';
experimentList{59,2} = datenum('01-JUN-2018 19:24:23'); 
experimentList{59,3} = datenum('01-JUN-2018 19:37:05'); 

experimentList{60,1} = 'May Benzoic Acid NaCl xtraNaI pH 11 lp HIGH Wet';
experimentList{60,2} = datenum('01-JUN-2018 20:09:05'); 
experimentList{60,3} = datenum('01-JUN-2018 20:14:03'); 



%%
for i = 1:size(experimentList,1)
    tmp = zeros(size(PARTidMat,1),1);
    for j = 1:size(experimentList{i,2},1)
        tmp2 = PARTidMat(:,3) > experimentList{i,2}(j) & PARTidMat(:,3) < experimentList{i,3}(j);
        tmp = tmp2 | tmp;
    end
    experimentList{i,4} = tmp;
    experimentList{i,5} = PARTidMat(tmp,1:2);
end





