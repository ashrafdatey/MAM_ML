% Ashraf Datey
% Registration Number: 210109641
% MSc Dissertaion Project: Fault detection in metal additive manufacturing for laser powder bed fusion systems using machine learning
% Supervisor: Professor George Panoutsos
% Automatic Control and Systems Engineering Department
% The University of Sheffield


%% Clear the workspace, command window and close all figures then initialise the data

clear, close all, clc

data_store_layers = tabularTextDatastore('XXX','FileExtensions','.csv'); % replace XXX with file path
file_name_layers = data_store_layers.Files;
total_layers = height(file_name_layers);

l_001 = table2array(readtable(char(file_name_layers(1,1)),'NumHeaderLines',1));
l_002 = table2array(readtable(char(file_name_layers(2,1)),'NumHeaderLines',1));
l_003 = table2array(readtable(char(file_name_layers(3,1)),'NumHeaderLines',1));
l_004 = table2array(readtable(char(file_name_layers(4,1)),'NumHeaderLines',1));
l_005 = table2array(readtable(char(file_name_layers(5,1)),'NumHeaderLines',1));
l_006 = table2array(readtable(char(file_name_layers(6,1)),'NumHeaderLines',1));
l_007 = table2array(readtable(char(file_name_layers(7,1)),'NumHeaderLines',1));
l_008 = table2array(readtable(char(file_name_layers(8,1)),'NumHeaderLines',1));
l_009 = table2array(readtable(char(file_name_layers(9,1)),'NumHeaderLines',1));
l_010 = table2array(readtable(char(file_name_layers(10,1)),'NumHeaderLines',1));
l_011 = table2array(readtable(char(file_name_layers(11,1)),'NumHeaderLines',1));
l_012 = table2array(readtable(char(file_name_layers(12,1)),'NumHeaderLines',1));
l_013 = table2array(readtable(char(file_name_layers(13,1)),'NumHeaderLines',1));
l_014 = table2array(readtable(char(file_name_layers(14,1)),'NumHeaderLines',1));
l_015 = table2array(readtable(char(file_name_layers(15,1)),'NumHeaderLines',1));
l_016 = table2array(readtable(char(file_name_layers(16,1)),'NumHeaderLines',1));
l_017 = table2array(readtable(char(file_name_layers(17,1)),'NumHeaderLines',1));
l_018 = table2array(readtable(char(file_name_layers(18,1)),'NumHeaderLines',1));
l_019 = table2array(readtable(char(file_name_layers(19,1)),'NumHeaderLines',1));
l_020 = table2array(readtable(char(file_name_layers(20,1)),'NumHeaderLines',1));
l_021 = table2array(readtable(char(file_name_layers(21,1)),'NumHeaderLines',1));
l_022 = table2array(readtable(char(file_name_layers(22,1)),'NumHeaderLines',1));
l_023 = table2array(readtable(char(file_name_layers(23,1)),'NumHeaderLines',1));
l_024 = table2array(readtable(char(file_name_layers(24,1)),'NumHeaderLines',1));
l_025 = table2array(readtable(char(file_name_layers(25,1)),'NumHeaderLines',1));
l_026 = table2array(readtable(char(file_name_layers(26,1)),'NumHeaderLines',1));
l_027 = table2array(readtable(char(file_name_layers(27,1)),'NumHeaderLines',1));
l_028 = table2array(readtable(char(file_name_layers(28,1)),'NumHeaderLines',1));
l_029 = table2array(readtable(char(file_name_layers(29,1)),'NumHeaderLines',1));
l_030 = table2array(readtable(char(file_name_layers(30,1)),'NumHeaderLines',1));
l_031 = table2array(readtable(char(file_name_layers(31,1)),'NumHeaderLines',1));
l_032 = table2array(readtable(char(file_name_layers(32,1)),'NumHeaderLines',1));
l_033 = table2array(readtable(char(file_name_layers(33,1)),'NumHeaderLines',1));
l_034 = table2array(readtable(char(file_name_layers(34,1)),'NumHeaderLines',1));
l_035 = table2array(readtable(char(file_name_layers(35,1)),'NumHeaderLines',1));
l_036 = table2array(readtable(char(file_name_layers(36,1)),'NumHeaderLines',1));
l_037 = table2array(readtable(char(file_name_layers(37,1)),'NumHeaderLines',1));
l_038 = table2array(readtable(char(file_name_layers(38,1)),'NumHeaderLines',1));
l_039 = table2array(readtable(char(file_name_layers(39,1)),'NumHeaderLines',1));
l_040 = table2array(readtable(char(file_name_layers(40,1)),'NumHeaderLines',1));
l_041 = table2array(readtable(char(file_name_layers(41,1)),'NumHeaderLines',1));
l_042 = table2array(readtable(char(file_name_layers(42,1)),'NumHeaderLines',1));
l_043 = table2array(readtable(char(file_name_layers(43,1)),'NumHeaderLines',1));
l_044 = table2array(readtable(char(file_name_layers(44,1)),'NumHeaderLines',1));
l_045 = table2array(readtable(char(file_name_layers(45,1)),'NumHeaderLines',1));
l_046 = table2array(readtable(char(file_name_layers(46,1)),'NumHeaderLines',1));
l_047 = table2array(readtable(char(file_name_layers(47,1)),'NumHeaderLines',1));
l_048 = table2array(readtable(char(file_name_layers(48,1)),'NumHeaderLines',1));
l_049 = table2array(readtable(char(file_name_layers(49,1)),'NumHeaderLines',1));
l_050 = table2array(readtable(char(file_name_layers(50,1)),'NumHeaderLines',1));
l_051 = table2array(readtable(char(file_name_layers(51,1)),'NumHeaderLines',1));
l_052 = table2array(readtable(char(file_name_layers(52,1)),'NumHeaderLines',1));
l_053 = table2array(readtable(char(file_name_layers(53,1)),'NumHeaderLines',1));
l_054 = table2array(readtable(char(file_name_layers(54,1)),'NumHeaderLines',1));
l_055 = table2array(readtable(char(file_name_layers(55,1)),'NumHeaderLines',1));
l_056 = table2array(readtable(char(file_name_layers(56,1)),'NumHeaderLines',1));
l_057 = table2array(readtable(char(file_name_layers(57,1)),'NumHeaderLines',1));
l_058 = table2array(readtable(char(file_name_layers(58,1)),'NumHeaderLines',1));
l_059 = table2array(readtable(char(file_name_layers(59,1)),'NumHeaderLines',1));
l_060 = table2array(readtable(char(file_name_layers(60,1)),'NumHeaderLines',1));
l_061 = table2array(readtable(char(file_name_layers(61,1)),'NumHeaderLines',1));
l_062 = table2array(readtable(char(file_name_layers(62,1)),'NumHeaderLines',1));
l_063 = table2array(readtable(char(file_name_layers(63,1)),'NumHeaderLines',1));
l_064 = table2array(readtable(char(file_name_layers(64,1)),'NumHeaderLines',1));
l_065 = table2array(readtable(char(file_name_layers(65,1)),'NumHeaderLines',1));
l_066 = table2array(readtable(char(file_name_layers(66,1)),'NumHeaderLines',1));
l_067 = table2array(readtable(char(file_name_layers(67,1)),'NumHeaderLines',1));
l_068 = table2array(readtable(char(file_name_layers(68,1)),'NumHeaderLines',1));
l_069 = table2array(readtable(char(file_name_layers(69,1)),'NumHeaderLines',1));
l_070 = table2array(readtable(char(file_name_layers(70,1)),'NumHeaderLines',1));
l_071 = table2array(readtable(char(file_name_layers(71,1)),'NumHeaderLines',1));
l_072 = table2array(readtable(char(file_name_layers(72,1)),'NumHeaderLines',1));
l_073 = table2array(readtable(char(file_name_layers(73,1)),'NumHeaderLines',1));
l_074 = table2array(readtable(char(file_name_layers(74,1)),'NumHeaderLines',1));
l_075 = table2array(readtable(char(file_name_layers(75,1)),'NumHeaderLines',1));
l_076 = table2array(readtable(char(file_name_layers(76,1)),'NumHeaderLines',1));
l_077 = table2array(readtable(char(file_name_layers(77,1)),'NumHeaderLines',1));
l_078 = table2array(readtable(char(file_name_layers(78,1)),'NumHeaderLines',1));
l_079 = table2array(readtable(char(file_name_layers(79,1)),'NumHeaderLines',1));
l_080 = table2array(readtable(char(file_name_layers(80,1)),'NumHeaderLines',1));
l_081 = table2array(readtable(char(file_name_layers(81,1)),'NumHeaderLines',1));
l_082 = table2array(readtable(char(file_name_layers(82,1)),'NumHeaderLines',1));
l_083 = table2array(readtable(char(file_name_layers(83,1)),'NumHeaderLines',1));
l_084 = table2array(readtable(char(file_name_layers(84,1)),'NumHeaderLines',1));
l_085 = table2array(readtable(char(file_name_layers(85,1)),'NumHeaderLines',1));
l_086 = table2array(readtable(char(file_name_layers(86,1)),'NumHeaderLines',1));
l_087 = table2array(readtable(char(file_name_layers(87,1)),'NumHeaderLines',1));
l_088 = table2array(readtable(char(file_name_layers(88,1)),'NumHeaderLines',1));
l_089 = table2array(readtable(char(file_name_layers(89,1)),'NumHeaderLines',1));
l_090 = table2array(readtable(char(file_name_layers(90,1)),'NumHeaderLines',1));
l_091 = table2array(readtable(char(file_name_layers(91,1)),'NumHeaderLines',1));
l_092 = table2array(readtable(char(file_name_layers(92,1)),'NumHeaderLines',1));
l_093 = table2array(readtable(char(file_name_layers(93,1)),'NumHeaderLines',1));
l_094 = table2array(readtable(char(file_name_layers(94,1)),'NumHeaderLines',1));
l_095 = table2array(readtable(char(file_name_layers(95,1)),'NumHeaderLines',1));
l_096 = table2array(readtable(char(file_name_layers(96,1)),'NumHeaderLines',1));
l_097 = table2array(readtable(char(file_name_layers(97,1)),'NumHeaderLines',1));
l_098 = table2array(readtable(char(file_name_layers(98,1)),'NumHeaderLines',1));
l_099 = table2array(readtable(char(file_name_layers(99,1)),'NumHeaderLines',1));
l_100 = table2array(readtable(char(file_name_layers(100,1)),'NumHeaderLines',1));
l_101 = table2array(readtable(char(file_name_layers(101,1)),'NumHeaderLines',1));
l_102 = table2array(readtable(char(file_name_layers(102,1)),'NumHeaderLines',1));
l_103 = table2array(readtable(char(file_name_layers(103,1)),'NumHeaderLines',1));
l_104 = table2array(readtable(char(file_name_layers(104,1)),'NumHeaderLines',1));
l_105 = table2array(readtable(char(file_name_layers(105,1)),'NumHeaderLines',1));
l_106 = table2array(readtable(char(file_name_layers(106,1)),'NumHeaderLines',1));
l_107 = table2array(readtable(char(file_name_layers(107,1)),'NumHeaderLines',1));
l_108 = table2array(readtable(char(file_name_layers(108,1)),'NumHeaderLines',1));
l_109 = table2array(readtable(char(file_name_layers(109,1)),'NumHeaderLines',1));
l_110 = table2array(readtable(char(file_name_layers(110,1)),'NumHeaderLines',1));
l_111 = table2array(readtable(char(file_name_layers(111,1)),'NumHeaderLines',1));
l_112 = table2array(readtable(char(file_name_layers(112,1)),'NumHeaderLines',1));
l_113 = table2array(readtable(char(file_name_layers(113,1)),'NumHeaderLines',1));
l_114 = table2array(readtable(char(file_name_layers(114,1)),'NumHeaderLines',1));
l_115 = table2array(readtable(char(file_name_layers(115,1)),'NumHeaderLines',1));
l_116 = table2array(readtable(char(file_name_layers(116,1)),'NumHeaderLines',1));
l_117 = table2array(readtable(char(file_name_layers(117,1)),'NumHeaderLines',1));
l_118 = table2array(readtable(char(file_name_layers(118,1)),'NumHeaderLines',1));
l_119 = table2array(readtable(char(file_name_layers(119,1)),'NumHeaderLines',1));
l_120 = table2array(readtable(char(file_name_layers(120,1)),'NumHeaderLines',1));
l_121 = table2array(readtable(char(file_name_layers(121,1)),'NumHeaderLines',1));
l_122 = table2array(readtable(char(file_name_layers(122,1)),'NumHeaderLines',1));
l_123 = table2array(readtable(char(file_name_layers(123,1)),'NumHeaderLines',1));
l_124 = table2array(readtable(char(file_name_layers(124,1)),'NumHeaderLines',1));
l_125 = table2array(readtable(char(file_name_layers(125,1)),'NumHeaderLines',1));
l_126 = table2array(readtable(char(file_name_layers(126,1)),'NumHeaderLines',1));
l_127 = table2array(readtable(char(file_name_layers(127,1)),'NumHeaderLines',1));
l_128 = table2array(readtable(char(file_name_layers(128,1)),'NumHeaderLines',1));
l_129 = table2array(readtable(char(file_name_layers(129,1)),'NumHeaderLines',1));
l_130 = table2array(readtable(char(file_name_layers(130,1)),'NumHeaderLines',1));
l_131 = table2array(readtable(char(file_name_layers(131,1)),'NumHeaderLines',1));
l_132 = table2array(readtable(char(file_name_layers(132,1)),'NumHeaderLines',1));
l_133 = table2array(readtable(char(file_name_layers(133,1)),'NumHeaderLines',1));
l_134 = table2array(readtable(char(file_name_layers(134,1)),'NumHeaderLines',1));
l_135 = table2array(readtable(char(file_name_layers(135,1)),'NumHeaderLines',1));
l_136 = table2array(readtable(char(file_name_layers(136,1)),'NumHeaderLines',1));
l_137 = table2array(readtable(char(file_name_layers(137,1)),'NumHeaderLines',1));
l_138 = table2array(readtable(char(file_name_layers(138,1)),'NumHeaderLines',1));
l_139 = table2array(readtable(char(file_name_layers(139,1)),'NumHeaderLines',1));
l_140 = table2array(readtable(char(file_name_layers(140,1)),'NumHeaderLines',1));
l_141 = table2array(readtable(char(file_name_layers(141,1)),'NumHeaderLines',1));
l_142 = table2array(readtable(char(file_name_layers(142,1)),'NumHeaderLines',1));
l_143 = table2array(readtable(char(file_name_layers(143,1)),'NumHeaderLines',1));
l_144 = table2array(readtable(char(file_name_layers(144,1)),'NumHeaderLines',1));
l_145 = table2array(readtable(char(file_name_layers(145,1)),'NumHeaderLines',1));
l_146 = table2array(readtable(char(file_name_layers(146,1)),'NumHeaderLines',1));
l_147 = table2array(readtable(char(file_name_layers(147,1)),'NumHeaderLines',1));
l_148 = table2array(readtable(char(file_name_layers(148,1)),'NumHeaderLines',1));
l_149 = table2array(readtable(char(file_name_layers(149,1)),'NumHeaderLines',1));
l_150 = table2array(readtable(char(file_name_layers(150,1)),'NumHeaderLines',1));
l_151 = table2array(readtable(char(file_name_layers(151,1)),'NumHeaderLines',1));
l_152 = table2array(readtable(char(file_name_layers(152,1)),'NumHeaderLines',1));
l_153 = table2array(readtable(char(file_name_layers(153,1)),'NumHeaderLines',1));
l_154 = table2array(readtable(char(file_name_layers(154,1)),'NumHeaderLines',1));
l_155 = table2array(readtable(char(file_name_layers(155,1)),'NumHeaderLines',1));
l_156 = table2array(readtable(char(file_name_layers(156,1)),'NumHeaderLines',1));
l_157 = table2array(readtable(char(file_name_layers(157,1)),'NumHeaderLines',1));
l_158 = table2array(readtable(char(file_name_layers(158,1)),'NumHeaderLines',1));
l_159 = table2array(readtable(char(file_name_layers(159,1)),'NumHeaderLines',1));
l_160 = table2array(readtable(char(file_name_layers(160,1)),'NumHeaderLines',1));
l_161 = table2array(readtable(char(file_name_layers(161,1)),'NumHeaderLines',1));
l_162 = table2array(readtable(char(file_name_layers(162,1)),'NumHeaderLines',1));
l_163 = table2array(readtable(char(file_name_layers(163,1)),'NumHeaderLines',1));
l_164 = table2array(readtable(char(file_name_layers(164,1)),'NumHeaderLines',1));
l_165 = table2array(readtable(char(file_name_layers(165,1)),'NumHeaderLines',1));
l_166 = table2array(readtable(char(file_name_layers(166,1)),'NumHeaderLines',1));
l_167 = table2array(readtable(char(file_name_layers(167,1)),'NumHeaderLines',1));
l_168 = table2array(readtable(char(file_name_layers(168,1)),'NumHeaderLines',1));
l_169 = table2array(readtable(char(file_name_layers(169,1)),'NumHeaderLines',1));
l_170 = table2array(readtable(char(file_name_layers(170,1)),'NumHeaderLines',1));
l_171 = table2array(readtable(char(file_name_layers(171,1)),'NumHeaderLines',1));
l_172 = table2array(readtable(char(file_name_layers(172,1)),'NumHeaderLines',1));
l_173 = table2array(readtable(char(file_name_layers(173,1)),'NumHeaderLines',1));
l_174 = table2array(readtable(char(file_name_layers(174,1)),'NumHeaderLines',1));
l_175 = table2array(readtable(char(file_name_layers(175,1)),'NumHeaderLines',1));
l_176 = table2array(readtable(char(file_name_layers(176,1)),'NumHeaderLines',1));
l_177 = table2array(readtable(char(file_name_layers(177,1)),'NumHeaderLines',1));
l_178 = table2array(readtable(char(file_name_layers(178,1)),'NumHeaderLines',1));
l_179 = table2array(readtable(char(file_name_layers(179,1)),'NumHeaderLines',1));
l_180 = table2array(readtable(char(file_name_layers(180,1)),'NumHeaderLines',1));
l_181 = table2array(readtable(char(file_name_layers(181,1)),'NumHeaderLines',1));
l_182 = table2array(readtable(char(file_name_layers(182,1)),'NumHeaderLines',1));
l_183 = table2array(readtable(char(file_name_layers(183,1)),'NumHeaderLines',1));
l_184 = table2array(readtable(char(file_name_layers(184,1)),'NumHeaderLines',1));
l_185 = table2array(readtable(char(file_name_layers(185,1)),'NumHeaderLines',1));
l_186 = table2array(readtable(char(file_name_layers(186,1)),'NumHeaderLines',1));
l_187 = table2array(readtable(char(file_name_layers(187,1)),'NumHeaderLines',1));
l_188 = table2array(readtable(char(file_name_layers(188,1)),'NumHeaderLines',1));
l_189 = table2array(readtable(char(file_name_layers(189,1)),'NumHeaderLines',1));
l_190 = table2array(readtable(char(file_name_layers(190,1)),'NumHeaderLines',1));
l_191 = table2array(readtable(char(file_name_layers(191,1)),'NumHeaderLines',1));
l_192 = table2array(readtable(char(file_name_layers(192,1)),'NumHeaderLines',1));
l_193 = table2array(readtable(char(file_name_layers(193,1)),'NumHeaderLines',1));
l_194 = table2array(readtable(char(file_name_layers(194,1)),'NumHeaderLines',1));
l_195 = table2array(readtable(char(file_name_layers(195,1)),'NumHeaderLines',1));
l_196 = table2array(readtable(char(file_name_layers(196,1)),'NumHeaderLines',1));
l_197 = table2array(readtable(char(file_name_layers(197,1)),'NumHeaderLines',1));
l_198 = table2array(readtable(char(file_name_layers(198,1)),'NumHeaderLines',1));
l_199 = table2array(readtable(char(file_name_layers(199,1)),'NumHeaderLines',1));
l_200 = table2array(readtable(char(file_name_layers(200,1)),'NumHeaderLines',1));
l_201 = table2array(readtable(char(file_name_layers(201,1)),'NumHeaderLines',1));
l_202 = table2array(readtable(char(file_name_layers(202,1)),'NumHeaderLines',1));
l_203 = table2array(readtable(char(file_name_layers(203,1)),'NumHeaderLines',1));
l_204 = table2array(readtable(char(file_name_layers(204,1)),'NumHeaderLines',1));
l_205 = table2array(readtable(char(file_name_layers(205,1)),'NumHeaderLines',1));
l_206 = table2array(readtable(char(file_name_layers(206,1)),'NumHeaderLines',1));
l_207 = table2array(readtable(char(file_name_layers(207,1)),'NumHeaderLines',1));
l_208 = table2array(readtable(char(file_name_layers(208,1)),'NumHeaderLines',1));
l_209 = table2array(readtable(char(file_name_layers(209,1)),'NumHeaderLines',1));
l_210 = table2array(readtable(char(file_name_layers(210,1)),'NumHeaderLines',1));
l_211 = table2array(readtable(char(file_name_layers(211,1)),'NumHeaderLines',1));
l_212 = table2array(readtable(char(file_name_layers(212,1)),'NumHeaderLines',1));
l_213 = table2array(readtable(char(file_name_layers(213,1)),'NumHeaderLines',1));
l_214 = table2array(readtable(char(file_name_layers(214,1)),'NumHeaderLines',1));
l_215 = table2array(readtable(char(file_name_layers(215,1)),'NumHeaderLines',1));
l_216 = table2array(readtable(char(file_name_layers(216,1)),'NumHeaderLines',1));
l_217 = table2array(readtable(char(file_name_layers(217,1)),'NumHeaderLines',1));
l_218 = table2array(readtable(char(file_name_layers(218,1)),'NumHeaderLines',1));
l_219 = table2array(readtable(char(file_name_layers(219,1)),'NumHeaderLines',1));
l_220 = table2array(readtable(char(file_name_layers(220,1)),'NumHeaderLines',1));
l_221 = table2array(readtable(char(file_name_layers(221,1)),'NumHeaderLines',1));
l_222 = table2array(readtable(char(file_name_layers(222,1)),'NumHeaderLines',1));
l_223 = table2array(readtable(char(file_name_layers(223,1)),'NumHeaderLines',1));
l_224 = table2array(readtable(char(file_name_layers(224,1)),'NumHeaderLines',1));
l_225 = table2array(readtable(char(file_name_layers(225,1)),'NumHeaderLines',1));
l_226 = table2array(readtable(char(file_name_layers(226,1)),'NumHeaderLines',1));
l_227 = table2array(readtable(char(file_name_layers(227,1)),'NumHeaderLines',1));
l_228 = table2array(readtable(char(file_name_layers(228,1)),'NumHeaderLines',1));
l_229 = table2array(readtable(char(file_name_layers(229,1)),'NumHeaderLines',1));
l_230 = table2array(readtable(char(file_name_layers(230,1)),'NumHeaderLines',1));
l_231 = table2array(readtable(char(file_name_layers(231,1)),'NumHeaderLines',1));
l_232 = table2array(readtable(char(file_name_layers(232,1)),'NumHeaderLines',1));
l_233 = table2array(readtable(char(file_name_layers(233,1)),'NumHeaderLines',1));
l_234 = table2array(readtable(char(file_name_layers(234,1)),'NumHeaderLines',1));
l_235 = table2array(readtable(char(file_name_layers(235,1)),'NumHeaderLines',1));
l_236 = table2array(readtable(char(file_name_layers(236,1)),'NumHeaderLines',1));
l_237 = table2array(readtable(char(file_name_layers(237,1)),'NumHeaderLines',1));
l_238 = table2array(readtable(char(file_name_layers(238,1)),'NumHeaderLines',1));
l_239 = table2array(readtable(char(file_name_layers(239,1)),'NumHeaderLines',1));
l_240 = table2array(readtable(char(file_name_layers(240,1)),'NumHeaderLines',1));

index = [
'l_001';'l_002';'l_003';'l_004';'l_005';'l_006';'l_007';'l_008';'l_009';'l_010';
'l_011';'l_012';'l_013';'l_014';'l_015';'l_016';'l_017';'l_018';'l_019';'l_020';
'l_021';'l_022';'l_023';'l_024';'l_025';'l_026';'l_027';'l_028';'l_029';'l_030';
'l_031';'l_032';'l_033';'l_034';'l_035';'l_036';'l_037';'l_038';'l_039';'l_040';
'l_041';'l_042';'l_043';'l_044';'l_045';'l_046';'l_047';'l_048';'l_049';'l_050';
'l_051';'l_052';'l_053';'l_054';'l_055';'l_056';'l_057';'l_058';'l_059';'l_060';
'l_061';'l_062';'l_063';'l_064';'l_065';'l_066';'l_067';'l_068';'l_069';'l_070';
'l_071';'l_072';'l_073';'l_074';'l_075';'l_076';'l_077';'l_078';'l_079';'l_080';
'l_081';'l_082';'l_083';'l_084';'l_085';'l_086';'l_087';'l_088';'l_089';'l_090';
'l_091';'l_092';'l_093';'l_094';'l_095';'l_096';'l_097';'l_098';'l_099';'l_100';
'l_101';'l_102';'l_103';'l_104';'l_105';'l_106';'l_107';'l_108';'l_109';'l_110';
'l_111';'l_112';'l_113';'l_114';'l_115';'l_116';'l_117';'l_118';'l_119';'l_120';
'l_121';'l_122';'l_123';'l_124';'l_125';'l_126';'l_127';'l_128';'l_129';'l_130';
'l_131';'l_132';'l_133';'l_134';'l_135';'l_136';'l_137';'l_138';'l_139';'l_140';
'l_141';'l_142';'l_143';'l_144';'l_145';'l_146';'l_147';'l_148';'l_149';'l_150';
'l_151';'l_152';'l_153';'l_154';'l_155';'l_156';'l_157';'l_158';'l_159';'l_160';
'l_161';'l_162';'l_163';'l_164';'l_165';'l_166';'l_167';'l_168';'l_169';'l_170';
'l_171';'l_172';'l_173';'l_174';'l_175';'l_176';'l_177';'l_178';'l_179';'l_180';
'l_181';'l_182';'l_183';'l_184';'l_185';'l_186';'l_187';'l_188';'l_189';'l_190';
'l_191';'l_192';'l_193';'l_194';'l_195';'l_196';'l_197';'l_198';'l_199';'l_200';
'l_201';'l_202';'l_203';'l_204';'l_205';'l_206';'l_207';'l_208';'l_209';'l_210';
'l_211';'l_212';'l_213';'l_214';'l_215';'l_216';'l_217';'l_218';'l_219';'l_220';
'l_221';'l_222';'l_223';'l_224';'l_225';'l_226';'l_227';'l_228';'l_229';'l_230';
'l_231';'l_232';'l_233';'l_234';'l_235';'l_236';'l_237';'l_238';'l_239';'l_240'];


%% Select the layer to be viewed for the LaserVIEW, MeltVIEW Plasma and MeltVIEW Melt Pool

layer_select = 113;
layer_indexed = eval(index(layer_select,:));

figure(1)
plot3(layer_indexed(:,3),layer_indexed(:,4),layer_indexed(:,5));
title("The LaserVIEW normalised for layer "+ layer_select + " of 240")
xlabel('x position (mm)')
ylabel('y position (mm)')
zlabel('LaserVIEW Normalised (mm)')
grid on

figure(2)
plot3(layer_indexed(:,3),layer_indexed(:,4),layer_indexed(:,6));
title("The MeltVIEW Plasma normalised for layer " + layer_select + " of 240")
xlabel('x position (mm)')
ylabel('y position (mm)')
zlabel('MeltVIEW Plasma Normalised (mm)')
grid on

figure(3)
plot3(layer_indexed(:,3),layer_indexed(:,4),layer_indexed(:,7));
title("The MeltVIEW Melt Pool for layer "+ layer_select + " of 240")
xlabel('x position (mm)')
ylabel('y position (mm)')
zlabel('MeltVIEW Melt Pool Normalised (mm)')
grid on

figure(4)
steps = [0.00002:0.00002:37.08398]';
plot(steps,layer_indexed(:,5));
title("Time Domain Energy Estimate - The LaserVIEW normalised for layer "+ layer_select + " of 240")
xlabel('Time (s)')
ylabel('Magnitude')
xlim([0, 37.08398])
ylim([0, 2000])

figure(5)
steps = [0.00002:0.00002:37.08398]';
plot(steps,layer_indexed(:,6));
title("Time Domain Energy Estimate - The MeltVIEW Plasma normalised for layer " + layer_select + " of 240")
xlabel('Time (s)')
ylabel('Magnitude')
xlim([0, 37.08398])
ylim([0, 2000])

figure(6)
steps = [0.00002:0.00002:37.08398]';
plot(steps,layer_indexed(:,7));
title("Time Domain Energy Estimate - The MeltVIEW Melt Pool for layer "+ layer_select + " of 240")
xlabel('Time (s)')
ylabel('Magnitude')
xlim([0, 37.08398])
ylim([0, 2000])

%% Estimating the Welchs Power Spectral Density (PSD) of the selected layer for the LaserVIEW, MeltVIEW Plasma and MeltVIEW Melt Pool

sample = 50000; %1/20x10^-6

signal_5 = layer_indexed(:,5);
[p_5,f_5] = pwelch(signal_5,[],[],[],sample);

signal_6 = layer_indexed(:,6);
[p_6,f_6] = pwelch(signal_6,[],[],[],sample);

signal_7 = layer_indexed(:,7);
[p_7,f_7] = pwelch(signal_7,[],[],[],sample);

figure(4)
plot(f_5,p_5)
title("The LaserVIEW normalised for layer "+ layer_select + " of 240")
xlabel('Frequency (Hz)')
ylabel('PSD (dB/Hz)')
set(gca, 'YScale', 'log')
grid on

figure(5)
plot(f_6,p_6)
title("The MeltVIEW Plasma normalised for layer " + layer_select + " of 240")
xlabel('Frequency (Hz)')
ylabel('PSD (dB/Hz)')
set(gca, 'YScale', 'log')
grid on

figure(6)
plot(f_7,p_7)
title("The MeltVIEW Melt Pool for layer "+ layer_select + " of 240")
xlabel('Frequency (Hz)')
ylabel('PSD (dB/Hz)')
set(gca, 'YScale', 'log')
grid on


%% Feature set-up for each column

points_used = 10000; % can vary this, but adjust the round function

col_5_height = height(signal_5);
col_5_end = round(col_5_height,-4);
ln_5 = signal_5(1:col_5_end);
col_5 = reshape(ln_5,[10000,(col_5_end/points_used)]);

col_6_height = height(signal_6);
col_6_end = round(col_6_height,-4);
ln_6 = signal_6(1:col_6_end);
col_6 = reshape(ln_6,[10000,(col_6_end/points_used)]);

col_7_height = height(signal_7);
col_7_end = round(col_7_height,-4);
ln_7 = signal_7(1:col_7_end);
col_7 = reshape(ln_7,[10000,(col_7_end/points_used)]);


%% 4 Features Single Layer

f1_5_4 = vecnorm(pwelch(col_5))/sqrt((col_5_end/points_used)); % obtaining feature 1

[B_col_5_f2_4,A_col_5_f2_4] = butter(11,0.1); % creating a 6th order butter worth filter
y2_5_4 = filter(B_col_5_f2_4,A_col_5_f2_4,col_5); % applying the filter to the normalised data
f2_5_4 = vecnorm(pwelch(y2_5_4))/sqrt((col_5_end/points_used)); % obtaining feature 2

[B_col_5_f3_4,A_col_5_f3_4] = butter(13,[0.1 0.4]); % creating a 9th order butterworth filter
y3_5_4 = filter(B_col_5_f3_4,A_col_5_f3_4,col_5); % applying the filter to the normalised data
f3_5_4 = vecnorm(pwelch(y3_5_4))/sqrt((col_5_end/points_used)); % obtaining feature 3

[B_col_5_f4_4,A_col_5_f4_4] = butter(18,0.4,'high'); % creating an 8th order butterworth filter
y4_5_4 = filter(B_col_5_f4_4,A_col_5_f4_4,col_5); % applying the filter to the normalised data
f4_5_4 = vecnorm(pwelch(y4_5_4))/sqrt((col_5_end/points_used)); % obtaining feature 4


f1_6_4 = vecnorm(pwelch(col_6))/sqrt((col_6_end/points_used)); % obtaining feature 1

[B_col_6_f2_4,A_col_6_f2_4] = butter(11,0.1); % creating a 6th order butter worth filter
y2_6_4 = filter(B_col_6_f2_4,A_col_6_f2_4,col_6); % applying the filter to the normalised data
f2_6_4 = vecnorm(pwelch(y2_6_4))/sqrt((col_6_end/points_used)); % obtaining feature 2

[B_col_6_f3_4,A_col_6_f3_4] = butter(13,[0.1 0.4]); % creating a 9th order butterworth filter
y3_6_4 = filter(B_col_6_f3_4,A_col_6_f3_4,col_6); % applying the filter to the normalised data
f3_6_4 = vecnorm(pwelch(y3_6_4))/sqrt((col_6_end/points_used)); % obtaining feature 3

[B_col_6_f4_4,A_col_6_f4_4] = butter(18,0.4,'high'); % creating an 8th order butterworth filter
y4_6_4 = filter(B_col_6_f4_4,A_col_6_f4_4,col_6); % applying the filter to the normalised data
f4_6_4 = vecnorm(pwelch(y4_6_4))/sqrt((col_6_end/points_used)); % obtaining feature 4


f1_7_4 = vecnorm(pwelch(col_7))/sqrt((col_7_end/points_used)); % obtaining feature 1

[B_col_7_f2_4,A_col_7_f2_4] = butter(11,0.1); % creating a 6th order butter worth filter
y2_7_4 = filter(B_col_7_f2_4,A_col_7_f2_4,col_7); % applying the filter to the normalised data
f2_7_4 = vecnorm(pwelch(y2_7_4))/sqrt((col_7_end/points_used)); % obtaining feature 2

[B_col_7_f3_4,A_col_7_f3_4] = butter(13,[0.1 0.4]); % creating a 9th order butterworth filter
y3_7_4 = filter(B_col_7_f3_4,A_col_7_f3_4,col_7); % applying the filter to the normalised data
f3_7_4 = vecnorm(pwelch(y3_7_4))/sqrt((col_7_end/points_used)); % obtaining feature 3

[B_col_7_f4_4,A_col_7_f4_4] = butter(18,0.4,'high'); % creating an 8th order butterworth filter
y4_7_4 = filter(B_col_7_f4_4,A_col_7_f4_4,col_7); % applying the filter to the normalised data
f4_7_4 = vecnorm(pwelch(y4_7_4))/sqrt((col_7_end/points_used)); % obtaining feature 4


fault1_4 = [f1_5_4' f2_5_4' f3_5_4' f4_5_4']; % all features for fault 1
fault2_4 = [f1_6_4' f2_6_4' f3_6_4' f4_6_4']; % all features for fault 2
fault3_4 = [f1_7_4' f2_7_4' f3_7_4' f4_7_4']; % all features for fault 3

G_4 = [fault1_4;fault2_4;fault3_4]; % matrix G combining all the faults
C_4 = corrcoef(G_4); % calculates a correlation coefficient matrix c of G
[V_4,D_4] = eig(C_4); % finding the eigenvectors v and the eigenvalues d of G
T_4 = [V_4(:,end)';V_4(:,end-1)']; % creating the transformation matrix T from the first two principal components
Z_4 = T_4*G_4'; % creating a 2-dimensional feature vector z
Z_4 = Z_4.*[1;-1];

figure(7)
plot(Z_4(1,1:185),Z_4(2,1:185),'.','Color','r') % scatter plot of the 2-dimensional features for bearing
hold on
plot(Z_4(1,186:370),Z_4(2,186:370),'.','Color','b') % scatter plot of the 2-dimensional features for gearmesh
hold on
plot(Z_4(1,371:555),Z_4(2,371:555),'.','Color','g') % scatter plot of the 2-dimensional features for imbalance
hold off
title('Scatter plot of the 2-dimensional features')
subtitle('4 features')
legend('LaserVIEW','MeltVIEW Plasma','MeltVIEW Melt Pool') % legend for the scatter plot
xlabel('First principal component')
ylabel('Second principal component')


%% 6 Features Single Layer

[B_col_5_f1_6,A_col_5_f1_6] = butter(7,0.05,'low'); % creating a low pass filter
y1_5_6 = filter(B_col_5_f1_6,A_col_5_f1_6,col_5); % applying it to the normalised data
f1_5_6 = vecnorm(pwelch(y1_5_6))/sqrt((col_5_end/points_used)); % obtaining feature 1

[B_col_5_f2_6,A_col_5_f2_6] = butter(6,[0.05 0.1]); % creating a 6th order butter worth filter
y2_5_6 = filter(B_col_5_f2_6,A_col_5_f2_6,col_5); % applying the filter to the normalised data
f2_5_6 = vecnorm(pwelch(y2_5_6))/sqrt((col_5_end/points_used)); % obtaining feature 2

[B_col_5_f3_6,A_col_5_f3_6] = butter(9,[0.1 0.2]); % creating a 9th order butterworth filter
y3_5_6 = filter(B_col_5_f3_6,A_col_5_f3_6,col_5); % applying the filter to the normalised data
f3_5_6 = vecnorm(pwelch(y3_5_6))/sqrt((col_5_end/points_used)); % obtaining feature 3

[B_col_5_f4_6,A_col_5_f4_6] = butter(8,[0.2 0.4]); % creating an 8th order butterworth filter
y4_5_6 = filter(B_col_5_f4_6,A_col_5_f4_6,col_5); % applying the filter to the normalised data
f4_5_6 = vecnorm(pwelch(y4_5_6))/sqrt((col_5_end/points_used)); % obtaining feature 4

[B_col_5_f5_6,A_col_5_f5_6] = butter(9,[0.4 0.7]); % creating a 9th order butterworth filter
y5_5_6 = filter(B_col_5_f5_6,A_col_5_f5_6,col_5); % applying the filter to the normalised data
f5_5_6 = vecnorm(pwelch(y5_5_6))/sqrt((col_5_end/points_used)); % obtaining feature 5

[B_col_5_f6_6,A_col_5_f6_6] = butter(16,0.7,'high'); % creating a high pass filter
y6_5_6 = filter(B_col_5_f6_6,A_col_5_f6_6,col_5); % applying it to the normalised data
f6_5_6 = vecnorm(pwelch(y6_5_6))/sqrt((col_5_end/points_used)); % obtaining feature 6


[B_col_6_f1_6,A_col_6_f1_6] = butter(7,0.05,'low'); % creating a low pass filter
y1_6_6 = filter(B_col_6_f1_6,A_col_6_f1_6,col_6); % applying it to the normalised data
f1_6_6 = vecnorm(pwelch(y1_6_6))/sqrt((col_6_end/points_used)); % obtaining feature 1

[B_col_6_f2_6,A_col_6_f2_6] = butter(6,[0.05 0.1]); % creating a 6th order butter worth filter
y2_6_6 = filter(B_col_6_f2_6,A_col_6_f2_6,col_6); % applying the filter to the normalised data
f2_6_6 = vecnorm(pwelch(y2_6_6))/sqrt((col_6_end/points_used)); % obtaining feature 2

[B_col_6_f3_6,A_col_6_f3_6] = butter(9,[0.1 0.2]); % creating a 9th order butterworth filter
y3_6_6 = filter(B_col_6_f3_6,A_col_6_f3_6,col_6); % applying the filter to the normalised data
f3_6_6 = vecnorm(pwelch(y3_6_6))/sqrt((col_6_end/points_used)); % obtaining feature 3

[B_col_6_f4_6,A_col_6_f4_6] = butter(8,[0.2 0.4]); % creating an 8th order butterworth filter
y4_6_6 = filter(B_col_6_f4_6,A_col_6_f4_6,col_6); % applying the filter to the normalised data
f4_6_6 = vecnorm(pwelch(y4_6_6))/sqrt((col_6_end/points_used)); % obtaining feature 4

[B_col_6_f5_6,A_col_6_f5_6] = butter(9,[0.4 0.7]); % creating a 9th order butterworth filter
y5_6_6 = filter(B_col_6_f5_6,A_col_6_f5_6,col_6); % applying the filter to the normalised data
f5_6_6 = vecnorm(pwelch(y5_6_6))/sqrt((col_6_end/points_used)); % obtaining feature 5

[B_col_6_f6_6,A_col_6_f6_6] = butter(16,0.7,'high'); % creating a high pass filter
y6_6_6 = filter(B_col_6_f6_6,A_col_6_f6_6,col_6); % applying it to the normalised data
f6_6_6 = vecnorm(pwelch(y6_6_6))/sqrt((col_6_end/points_used)); % obtaining feature 6


[B_col_7_f1_6,A_col_7_f1_6] = butter(7,0.05,'low'); % creating a low pass filter
y1_7_6 = filter(B_col_7_f1_6,A_col_7_f1_6,col_7); % applying it to the normalised data
f1_7_6 = vecnorm(pwelch(y1_7_6))/sqrt((col_7_end/points_used)); % obtaining feature 1

[B_col_7_f2_6,A_col_7_f2_6] = butter(6,[0.05 0.1]); % creating a 6th order butter worth filter
y2_7_6 = filter(B_col_7_f2_6,A_col_7_f2_6,col_7); % applying the filter to the normalised data
f2_7_6 = vecnorm(pwelch(y2_7_6))/sqrt((col_7_end/points_used)); % obtaining feature 2

[B_col_7_f3_6,A_col_7_f3_6] = butter(9,[0.1 0.2]); % creating a 9th order butterworth filter
y3_7_6 = filter(B_col_7_f3_6,A_col_7_f3_6,col_7); % applying the filter to the normalised data
f3_7_6 = vecnorm(pwelch(y3_7_6))/sqrt((col_7_end/points_used)); % obtaining feature 3

[B_col_7_f4_6,A_col_7_f4_6] = butter(8,[0.2 0.4]); % creating an 8th order butterworth filter
y4_7_6 = filter(B_col_7_f4_6,A_col_7_f4_6,col_7); % applying the filter to the normalised data
f4_7_6 = vecnorm(pwelch(y4_7_6))/sqrt((col_7_end/points_used)); % obtaining feature 4

[B_col_7_f5_6,A_col_7_f5_6] = butter(9,[0.4 0.7]); % creating a 9th order butterworth filter
y5_7_6 = filter(B_col_7_f5_6,A_col_7_f5_6,col_7); % applying the filter to the normalised data
f5_7_6 = vecnorm(pwelch(y5_7_6))/sqrt((col_7_end/points_used)); % obtaining feature 5

[B_col_7_f6_6,A_col_7_f6_6] = butter(16,0.7,'high'); % creating a high pass filter
y6_7_6 = filter(B_col_7_f6_6,A_col_7_f6_6,col_7); % applying it to the normalised data
f6_7_6 = vecnorm(pwelch(y6_7_6))/sqrt((col_7_end/points_used)); % obtaining feature 6


fault1_6 = [f1_5_6' f2_5_6' f3_5_6' f4_5_6' f5_5_6' f6_5_6']; % all features for fault 1
fault2_6 = [f1_6_6' f2_6_6' f3_6_6' f4_6_6' f5_6_6' f6_6_6']; % all features for fault 2
fault3_6 = [f1_7_6' f2_7_6' f3_7_6' f4_7_6' f5_7_6' f6_7_6']; % all features for fault 3

G_6 = [fault1_6;fault2_6;fault3_6]; % matrix G combining all the faults
C_6 = corrcoef(G_6); % calculates a correlation coefficient matrix c of G
[V_6,D_6] = eig(C_6); % finding the eigenvectors v and the eigenvalues d of G
T_6 = [V_6(:,end)';V_6(:,end-1)']; % creating the transformation matrix T from the first two principal components
Z_6 = T_6*G_6'; % creating a 2-dimensional feature vector z

figure(8)
plot(Z_6(1,1:1854),Z_6(2,1:1854),'.','Color','r') % scatter plot of the 2-dimensional features for bearing
hold on
plot(Z_6(1,1855:3708),Z_6(2,1855:3708),'.','Color','b') % scatter plot of the 2-dimensional features for gearmesh
hold on
plot(Z_6(1,3709:5562),Z_6(2,3709:5562),'.','Color','g') % scatter plot of the 2-dimensional features for imbalance
hold off
title('Scatter plot of the 2-dimensional features')
subtitle('6 features')
legend('LaserVIEW','MeltVIEW Plasma','MeltVIEW Melt Pool') % legend for the scatter plot
xlabel('First principal component')
ylabel('Second principal component')


%% k-NN to classify

%set training set and testing set
numberOfTrainingCases = 1298; % 70% of 1854 (col_7_end/points_used)
%Fault1-5 are 50*4 data sets
trainingSet = [fault1_4(1:numberOfTrainingCases,:);fault2_4(1:numberOfTrainingCases,:);fault3_4(1:numberOfTrainingCases,:)];
testingSet = [fault1_4(numberOfTrainingCases+1:end,:);fault2_4(numberOfTrainingCases+1:end,:);fault3_4(numberOfTrainingCases+1:end,:)];
 
%set traing target and testing target
numberOfTestingCases = length(fault1_4) - numberOfTrainingCases;
trainingTarget = [ones(1,numberOfTrainingCases),ones(1,numberOfTrainingCases)*2,ones(1,numberOfTrainingCases)*3];
testingTarget = [ones(1,numberOfTestingCases),ones(1,numberOfTestingCases)*2,ones(1,numberOfTestingCases)*3];
% Calculate the total number of test and train classes
totalNumberOfTestingCases = numberOfTestingCases * 3;
totalNumberOfTrainingCases = numberOfTrainingCases * 3;
% Create a vector to store assigned labels
inferredLabels = zeros(1, totalNumberOfTestingCases);
%set variable k
k = 3;

% This loop cycles through each unlabelled item:
for unlabelledCaseIdx = 1:totalNumberOfTestingCases
    unlabelledCase = testingSet(unlabelledCaseIdx, :);
    % As any distance is shorter than infinity
    shortestDistance = inf;
    shortestDistanceLabel = 0; % Assign a temporary label
    currentDist = zeros(1,totalNumberOfTrainingCases);
    label = trainingTarget;
    % This loop cycles through each labelled item:
    for labelledCaseIdx = 1:totalNumberOfTrainingCases
        labelledCase = trainingSet(labelledCaseIdx, :);
        % Calculate the Euclidean distance:
        currentDist(labelledCaseIdx) = euc(unlabelledCase, labelledCase);
    end % inner loop
    
    % Sort distances and training lables
    for i=1:k
        shortestDistance = currentDist(i);
        for j = i+1:totalNumberOfTrainingCases
           if currentDist(j) < shortestDistance
               shortestDistance = currentDist(j);
               currentLabel = label(j);
               tmp = j;
           end
         end
         currentDist(tmp) = currentDist(i);  %sort distances
         currentDist(i) = shortestDistance;
label(tmp) = label(i);        %sort labels of training set with shortest distances
         label(i) = currentLabel;
    end
    
    %Calculate the total number of shortest distances belongs to which fault
    count = zeros(1,5); 
    for i = 1:k
        if label(i) == 1
           count(1) = count(1) + 1;
        elseif label(i) == 2
              count(2) = count(2) + 1;
        elseif label(i) == 3
              count(3) = count(3) + 1;
        elseif label(i) == 4
              count(4) = count(4) + 1;
        elseif label(i) == 5
              count(5) = count(5) + 1;
        end
    end
    flag = -1;
    for i = 1:5
        if count(i) > flag
            flag = count(i);
            shortestDistanceLabel = i;
        end
    end
    % Assign the found label to the vector of inferred labels:
    inferredLabels(unlabelledCaseIdx) = shortestDistanceLabel;
end % outer loop
Nc = length(find(inferredLabels==testingTarget));
Na = totalNumberOfTestingCases;
ACC = 100*(Nc/Na);

un_identical_values = find(testingTarget'~=inferredLabels');
x_axis = [1:1:length(un_identical_values)]';

figure(9)
plot(x_axis,un_identical_values,'o');
title('Scatter plot of the 2-dimensional features')
xlabel('Wrongly classified count value')
ylabel('Index position')

%% Window of layers
% Clear workspace and re-initialise the set up

window_start = 113; % choose first layer of the window
layer_1 = window_start+1;
layer_2 = window_start+2;
layer_3 = window_start+3;
layer_4 = window_start+4;

layer_indexed_1 = eval(index(window_start,:));
layer_indexed_2 = eval(index(layer_1,:));
layer_indexed_3 = eval(index(layer_2,:));
layer_indexed_4 = eval(index(layer_3,:));
layer_indexed_5 = eval(index(layer_4,:));

window = [layer_indexed_1;layer_indexed_2;layer_indexed_3;layer_indexed_4;layer_indexed_5];

signal_5_window = window(:,5);
signal_6_window = window(:,6);
signal_7_window = window(:,7);

points_used = 1000;

col_5_height_window = height(signal_5_window);
col_5_end_window = round(col_5_height_window,-3)-1000;
ln_5_window = signal_5_window(1:col_5_end_window);
col_5_window = reshape(ln_5_window,[1000,(col_5_end_window/points_used)]);

col_6_height_window = height(signal_6_window);
col_6_end_window = round(col_6_height_window,-3)-1000;
ln_6_window = signal_6_window(1:col_6_end_window);
col_6_window = reshape(ln_6_window,[1000,(col_6_end_window/points_used)]);

col_7_height_window = height(signal_7_window);
col_7_end_window = round(col_7_height_window,-3)-1000;
ln_7_window = signal_7_window(1:col_7_end_window);
col_7_window = reshape(ln_7_window,[1000,(col_7_end_window/points_used)]);


%% 4 Features Window of Layers

f1_5_4_w = vecnorm(pwelch(col_5_window))/sqrt((col_5_end_window/points_used)); % obtaining feature 1

[B_col_5_f2_4_w,A_col_5_f2_4_w] = butter(11,0.1); % creating a 6th order butter worth filter
y2_5_4_w = filter(B_col_5_f2_4_w,A_col_5_f2_4_w,col_5_window); % applying the filter to the normalised data
f2_5_4_w = vecnorm(pwelch(y2_5_4_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 2

[B_col_5_f3_4_w,A_col_5_f3_4_w] = butter(13,[0.1 0.4]); % creating a 9th order butterworth filter
y3_5_4_w = filter(B_col_5_f3_4_w,A_col_5_f3_4_w,col_5_window); % applying the filter to the normalised data
f3_5_4_w = vecnorm(pwelch(y3_5_4_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 3

[B_col_5_f4_4_w,A_col_5_f4_4_w] = butter(18,0.4,'high'); % creating an 8th order butterworth filter
y4_5_4_w = filter(B_col_5_f4_4_w,A_col_5_f4_4_w,col_5_window); % applying the filter to the normalised data
f4_5_4_w = vecnorm(pwelch(y4_5_4_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 4


f1_6_4_w = vecnorm(pwelch(col_6_window))/sqrt((col_6_end_window/points_used)); % obtaining feature 1

[B_col_6_f2_4_w,A_col_6_f2_4_w] = butter(11,0.1); % creating a 6th order butter worth filter
y2_6_4_w = filter(B_col_6_f2_4_w,A_col_6_f2_4_w,col_6_window); % applying the filter to the normalised data
f2_6_4_w = vecnorm(pwelch(y2_6_4_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 2

[B_col_6_f3_4_w,A_col_6_f3_4_w] = butter(13,[0.1 0.4]); % creating a 9th order butterworth filter
y3_6_4_w = filter(B_col_6_f3_4_w,A_col_6_f3_4_w,col_6_window); % applying the filter to the normalised data
f3_6_4_w = vecnorm(pwelch(y3_6_4_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 3

[B_col_6_f4_4_w,A_col_6_f4_4_w] = butter(18,0.4,'high'); % creating an 8th order butterworth filter
y4_6_4_w = filter(B_col_6_f4_4_w,A_col_6_f4_4_w,col_6_window); % applying the filter to the normalised data
f4_6_4_w = vecnorm(pwelch(y4_6_4_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 4


f1_7_4_w = vecnorm(pwelch(col_7_window))/sqrt((col_7_end_window/points_used)); % obtaining feature 1

[B_col_7_f2_4_w,A_col_7_f2_4_w] = butter(11,0.1); % creating a 6th order butter worth filter
y2_7_4_w = filter(B_col_7_f2_4_w,A_col_7_f2_4_w,col_7_window); % applying the filter to the normalised data
f2_7_4_w = vecnorm(pwelch(y2_7_4_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 2

[B_col_7_f3_4_w,A_col_7_f3_4_w] = butter(13,[0.1 0.4]); % creating a 9th order butterworth filter
y3_7_4_w = filter(B_col_7_f3_4_w,A_col_7_f3_4_w,col_7_window); % applying the filter to the normalised data
f3_7_4_w = vecnorm(pwelch(y3_7_4_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 3

[B_col_7_f4_4_w,A_col_7_f4_4_w] = butter(18,0.4,'high'); % creating an 8th order butterworth filter
y4_7_4_w = filter(B_col_7_f4_4_w,A_col_7_f4_4_w,col_7_window); % applying the filter to the normalised data
f4_7_4_w = vecnorm(pwelch(y4_7_4_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 4


fault1_4_w = [f1_5_4_w' f2_5_4_w' f3_5_4_w' f4_5_4_w']; % all features for fault 1
fault2_4_w = [f1_6_4_w' f2_6_4_w' f3_6_4_w' f4_6_4_w']; % all features for fault 2
fault3_4_w = [f1_7_4_w' f2_7_4_w' f3_7_4_w' f4_7_4_w']; % all features for fault 3

G_4_w = [fault1_4_w;fault2_4_w;fault3_4_w]; % matrix G combining all the faults
C_4_w = corrcoef(G_4_w); % calculates a correlation coefficient matrix c of G
[V_4_w,D_4_w] = eig(C_4_w); % finding the eigenvectors v and the eigenvalues d of G
T_4_w = [V_4_w(:,end)';V_4_w(:,end-1)']; % creating the transformation matrix T from the first two principal components
Z_4_w = T_4_w*G_4_w'; % creating a 2-dimensional feature vector z
Z_4_w = Z_4_w.*[1;-1];

figure(10)
plot(Z_4_w(1,1:9266),Z_4_w(2,1:9266),'.','Color','r') % scatter plot of the 2-dimensional features for bearing
hold on
plot(Z_4_w(1,9967:18532),Z_4_w(2,9967:18532),'.','Color','b') % scatter plot of the 2-dimensional features for gearmesh
hold on
plot(Z_4_w(1,18533:27795),Z_4_w(2,18533:27795),'.','Color','g') % scatter plot of the 2-dimensional features for imbalance
hold off
title('Scatter plot of the 2-dimensional features')
subtitle('4 features')
legend('LaserVIEW','MeltVIEW Plasma','MeltVIEW Melt Pool') % legend for the scatter plot
xlabel('First principal component')
ylabel('Second principal component')

%% 6 Features Window of Layers

[B_col_5_f1_6_w,A_col_5_f1_6_w] = butter(7,0.05,'low'); % creating a low pass filter
y1_5_6_w = filter(B_col_5_f1_6_w,A_col_5_f1_6_w,col_5_window); % applying it to the normalised data
f1_5_6_w = vecnorm(pwelch(y1_5_6_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 1

[B_col_5_f2_6_w,A_col_5_f2_6_w] = butter(6,[0.05 0.1]); % creating a 6th order butter worth filter
y2_5_6_w = filter(B_col_5_f2_6_w,A_col_5_f2_6_w,col_5_window); % applying the filter to the normalised data
f2_5_6_w = vecnorm(pwelch(y2_5_6_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 2

[B_col_5_f3_6_w,A_col_5_f3_6_w] = butter(9,[0.1 0.2]); % creating a 9th order butterworth filter
y3_5_6_w = filter(B_col_5_f3_6_w,A_col_5_f3_6_w,col_5_window); % applying the filter to the normalised data
f3_5_6_w = vecnorm(pwelch(y3_5_6_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 3

[B_col_5_f4_6_w,A_col_5_f4_6_w] = butter(8,[0.2 0.4]); % creating an 8th order butterworth filter
y4_5_6_w = filter(B_col_5_f4_6_w,A_col_5_f4_6_w,col_5_window); % applying the filter to the normalised data
f4_5_6_w = vecnorm(pwelch(y4_5_6_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 4

[B_col_5_f5_6_w,A_col_5_f5_6_w] = butter(9,[0.4 0.7]); % creating a 9th order butterworth filter
y5_5_6_w = filter(B_col_5_f5_6_w,A_col_5_f5_6_w,col_5_window); % applying the filter to the normalised data
f5_5_6_w = vecnorm(pwelch(y5_5_6_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 5

[B_col_5_f6_6_w,A_col_5_f6_6_w] = butter(16,0.7,'high'); % creating a high pass filter
y6_5_6_w = filter(B_col_5_f6_6_w,A_col_5_f6_6_w,col_5_window); % applying it to the normalised data
f6_5_6_w = vecnorm(pwelch(y6_5_6_w))/sqrt((col_5_end_window/points_used)); % obtaining feature 6


[B_col_6_f1_6_w,A_col_6_f1_6_w] = butter(7,0.05,'low'); % creating a low pass filter
y1_6_6_w = filter(B_col_6_f1_6_w,A_col_6_f1_6_w,col_6_window); % applying it to the normalised data
f1_6_6_w = vecnorm(pwelch(y1_6_6_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 1

[B_col_6_f2_6_w,A_col_6_f2_6_w] = butter(6,[0.05 0.1]); % creating a 6th order butter worth filter
y2_6_6_w = filter(B_col_6_f2_6_w,A_col_6_f2_6_w,col_6_window); % applying the filter to the normalised data
f2_6_6_w = vecnorm(pwelch(y2_6_6_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 2

[B_col_6_f3_6_w,A_col_6_f3_6_w] = butter(9,[0.1 0.2]); % creating a 9th order butterworth filter
y3_6_6_w = filter(B_col_6_f3_6_w,A_col_6_f3_6_w,col_6_window); % applying the filter to the normalised data
f3_6_6_w = vecnorm(pwelch(y3_6_6_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 3

[B_col_6_f4_6_w,A_col_6_f4_6_w] = butter(8,[0.2 0.4]); % creating an 8th order butterworth filter
y4_6_6_w = filter(B_col_6_f4_6_w,A_col_6_f4_6_w,col_6_window); % applying the filter to the normalised data
f4_6_6_w = vecnorm(pwelch(y4_6_6_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 4

[B_col_6_f5_6_w,A_col_6_f5_6_w] = butter(9,[0.4 0.7]); % creating a 9th order butterworth filter
y5_6_6_w = filter(B_col_6_f5_6_w,A_col_6_f5_6_w,col_6_window); % applying the filter to the normalised data
f5_6_6_w = vecnorm(pwelch(y5_6_6_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 5

[B_col_6_f6_6_w,A_col_6_f6_6_w] = butter(16,0.7,'high'); % creating a high pass filter
y6_6_6_w = filter(B_col_6_f6_6_w,A_col_6_f6_6_w,col_6_window); % applying it to the normalised data
f6_6_6_w = vecnorm(pwelch(y6_6_6_w))/sqrt((col_6_end_window/points_used)); % obtaining feature 6


[B_col_7_f1_6_w,A_col_7_f1_6_w] = butter(7,0.05,'low'); % creating a low pass filter
y1_7_6_w = filter(B_col_7_f1_6_w,A_col_7_f1_6_w,col_7_window); % applying it to the normalised data
f1_7_6_w = vecnorm(pwelch(y1_7_6_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 1

[B_col_7_f2_6_w,A_col_7_f2_6_w] = butter(6,[0.05 0.1]); % creating a 6th order butter worth filter
y2_7_6_w = filter(B_col_7_f2_6_w,A_col_7_f2_6_w,col_7_window); % applying the filter to the normalised data
f2_7_6_w = vecnorm(pwelch(y2_7_6_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 2

[B_col_7_f3_6_w,A_col_7_f3_6_w] = butter(9,[0.1 0.2]); % creating a 9th order butterworth filter
y3_7_6_w = filter(B_col_7_f3_6_w,A_col_7_f3_6_w,col_7_window); % applying the filter to the normalised data
f3_7_6_w = vecnorm(pwelch(y3_7_6_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 3

[B_col_7_f4_6_w,A_col_7_f4_6_w] = butter(8,[0.2 0.4]); % creating an 8th order butterworth filter
y4_7_6_w = filter(B_col_7_f4_6_w,A_col_7_f4_6_w,col_7_window); % applying the filter to the normalised data
f4_7_6_w = vecnorm(pwelch(y4_7_6_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 4

[B_col_7_f5_6_w,A_col_7_f5_6_w] = butter(9,[0.4 0.7]); % creating a 9th order butterworth filter
y5_7_6_w = filter(B_col_7_f5_6_w,A_col_7_f5_6_w,col_7_window); % applying the filter to the normalised data
f5_7_6_w = vecnorm(pwelch(y5_7_6_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 5

[B_col_7_f6_6_w,A_col_7_f6_6_w] = butter(16,0.7,'high'); % creating a high pass filter
y6_7_6_w = filter(B_col_7_f6_6_w,A_col_7_f6_6_w,col_7_window); % applying it to the normalised data
f6_7_6_w = vecnorm(pwelch(y6_7_6_w))/sqrt((col_7_end_window/points_used)); % obtaining feature 6


fault1_6_w = [f1_5_6_w' f2_5_6_w' f3_5_6_w' f4_5_6_w' f5_5_6_w' f6_5_6_w']; % all features for fault 1
fault2_6_w = [f1_6_6_w' f2_6_6_w' f3_6_6_w' f4_6_6_w' f5_6_6_w' f6_6_6_w']; % all features for fault 2
fault3_6_w = [f1_7_6_w' f2_7_6_w' f3_7_6_w' f4_7_6_w' f5_7_6_w' f6_7_6_w']; % all features for fault 3

G_6_w = [fault1_6_w;fault2_6_w;fault3_6_w]; % matrix G combining all the faults
C_6_w = corrcoef(G_6_w); % calculates a correlation coefficient matrix c of G
[V_6_w,D_6_w] = eig(C_6_w); % finding the eigenvectors v and the eigenvalues d of G
T_6_w = [V_6_w(:,end)';V_6_w(:,end-1)']; % creating the transformation matrix T from the first two principal components
Z_6_w = T_6_w*G_6_w'; % creating a 2-dimensional feature vector z

figure(11)
plot(Z_6_w(1,1:9266),Z_6_w(2,1:9266),'.','Color','r') % scatter plot of the 2-dimensional features for bearing
hold on
plot(Z_6_w(1,9967:18532),Z_6_w(2,9967:18532),'.','Color','b') % scatter plot of the 2-dimensional features for gearmesh
hold on
plot(Z_6_w(1,18533:27795),Z_6_w(2,18533:27795),'.','Color','g') % scatter plot of the 2-dimensional features for imbalance
hold off
title('Scatter plot of the 2-dimensional features')
subtitle('6 features')
legend('LaserVIEW','MeltVIEW Plasma','MeltVIEW Melt Pool') % legend for the scatter plot
xlabel('First principal component')
ylabel('Second principal component')


%% k-NN to Classify Window of Layers

%set training set and testing set
numberOfTrainingCases_w = 6487; % 70% of 1854 (col_7_end_window/points_used)
%Fault1-5 are 50*4 data sets
trainingSet_w = [fault1_6_w(1:numberOfTrainingCases_w,:);fault2_6_w(1:numberOfTrainingCases_w,:);fault3_6_w(1:numberOfTrainingCases_w,:)];
testingSet_w = [fault1_6_w(numberOfTrainingCases_w+1:end,:);fault2_6_w(numberOfTrainingCases_w+1:end,:);fault3_6_w(numberOfTrainingCases_w+1:end,:)];
 
%set traing target and testing target
numberOfTestingCases_w = length(fault1_6_w) - numberOfTrainingCases_w;
trainingTarget_w = [ones(1,numberOfTrainingCases_w),ones(1,numberOfTrainingCases_w)*2,ones(1,numberOfTrainingCases_w)*3];
testingTarget_w = [ones(1,numberOfTestingCases_w),ones(1,numberOfTestingCases_w)*2,ones(1,numberOfTestingCases_w)*3];
% Calculate the total number of test and train classes
totalNumberOfTestingCases_w = numberOfTestingCases_w * 3;
totalNumberOfTrainingCases_w = numberOfTrainingCases_w * 3;
% Create a vector to store assigned labels
inferredLabels_w = zeros(1, totalNumberOfTestingCases_w);
%set variable k
k_w = 2;

% This loop cycles through each unlabelled item:
for unlabelledCaseIdx_w = 1:totalNumberOfTestingCases_w
    unlabelledCase_w = testingSet_w(unlabelledCaseIdx_w, :);
    % As any distance is shorter than infinity
    shortestDistance_w = inf;
    shortestDistanceLabel_w = 0; % Assign a temporary label
    currentDist_w = zeros(1,totalNumberOfTrainingCases_w);
    label_w = trainingTarget_w;
    % This loop cycles through each labelled item:
    for labelledCaseIdx_w = 1:totalNumberOfTrainingCases_w
        labelledCase_w = trainingSet_w(labelledCaseIdx_w, :);
        % Calculate the Euclidean distance:
        currentDist_w(labelledCaseIdx_w) = euc(unlabelledCase_w, labelledCase_w);
    end % inner loop
    
    % Sort distances and training lables
    for i_w=1:k_w
        shortestDistance_w = currentDist_w(i_w);
        for j_w = i_w+1:totalNumberOfTrainingCases_w
           if currentDist_w(j_w) < shortestDistance_w
               shortestDistance_w = currentDist_w(j_w);
               currentLabel_w = label_w(j_w);
               tmp_w = j_w;
           end
         end
         currentDist_w(tmp_w) = currentDist_w(i_w);  %sort distances
         currentDist_w(i_w) = shortestDistance_w;
         label_w(tmp_w) = label_w(i_w);        %sort labels of training set with shortest distances
         label_w(i_w) = currentLabel_w;
    end
    
    %Calculate the total number of shortest distances belongs to which fault
    count_w = zeros(1,5); 
    for i_w = 1:k_w
        if label_w(i_w) == 1
           count_w(1) = count_w(1) + 1;
        elseif label_w(i_w) == 2
              count_w(2) = count_w(2) + 1;
        elseif label_w(i_w) == 3
              count_w(3) = count_w(3) + 1;
        elseif label_w(i_w) == 4
              count_w(4) = count_w(4) + 1;
        elseif label_w(i_w) == 5
              count_w(5) = count_w(5) + 1;
        end
    end
    flag_w = -1;
    for i_w = 1:5
        if count_w(i_w) > flag_w
            flag_w = count_w(i_w);
            shortestDistanceLabel_w = i_w;
        end
    end
    % Assign the found label to the vector of inferred labels:
    inferredLabels_w(unlabelledCaseIdx_w) = shortestDistanceLabel_w;
end % outer loop
Nc_w = length(find(inferredLabels_w==testingTarget_w));
Na_w = totalNumberOfTestingCases_w;
ACC_w = 100*(Nc_w/Na_w)

un_identical_values_w = find(testingTarget_w'~=inferredLabels_w');
x_axis_w = [1:1:length(un_identical_values_w)]';

figure(12)
plot(x_axis_w,un_identical_values_w,'o');
title('Scatter plot of the 2-dimensional features')
xlabel('Count value')
ylabel('Index position')
size(un_identical_values)

%% Viewing faults in 44 cubes

data_store_scans = tabularTextDatastore('XXX','FileExtensions','.csv'); % replace XXX with filepath
file_name_scans = data_store_scans.Files;

cube_01 = table2array(readtable(char(file_name_scans(1,1))));
cube_02 = table2array(readtable(char(file_name_scans(2,1))));
cube_03 = table2array(readtable(char(file_name_scans(3,1))));
cube_04 = table2array(readtable(char(file_name_scans(4,1))));
cube_05 = table2array(readtable(char(file_name_scans(5,1))));
cube_06 = table2array(readtable(char(file_name_scans(6,1))));
cube_07 = table2array(readtable(char(file_name_scans(7,1))));
cube_08 = table2array(readtable(char(file_name_scans(8,1))));
cube_09 = table2array(readtable(char(file_name_scans(9,1))));
cube_10 = table2array(readtable(char(file_name_scans(10,1))));
cube_11 = table2array(readtable(char(file_name_scans(11,1))));
cube_12 = table2array(readtable(char(file_name_scans(12,1))));
cube_13 = table2array(readtable(char(file_name_scans(13,1))));
cube_14 = table2array(readtable(char(file_name_scans(14,1))));
cube_15 = table2array(readtable(char(file_name_scans(15,1))));
cube_16 = table2array(readtable(char(file_name_scans(16,1))));
cube_17 = table2array(readtable(char(file_name_scans(17,1))));
cube_18 = table2array(readtable(char(file_name_scans(18,1))));
cube_19 = table2array(readtable(char(file_name_scans(19,1))));
cube_20 = table2array(readtable(char(file_name_scans(20,1))));
cube_21 = table2array(readtable(char(file_name_scans(21,1))));
cube_22 = table2array(readtable(char(file_name_scans(22,1))));
cube_23 = table2array(readtable(char(file_name_scans(23,1))));
cube_24 = table2array(readtable(char(file_name_scans(24,1))));
cube_25 = table2array(readtable(char(file_name_scans(25,1))));
cube_26 = table2array(readtable(char(file_name_scans(26,1))));
cube_27 = table2array(readtable(char(file_name_scans(27,1))));
cube_28 = table2array(readtable(char(file_name_scans(28,1))));
cube_29 = table2array(readtable(char(file_name_scans(29,1))));
cube_30 = table2array(readtable(char(file_name_scans(30,1))));
cube_31 = table2array(readtable(char(file_name_scans(31,1))));
cube_32 = table2array(readtable(char(file_name_scans(32,1))));
cube_33 = table2array(readtable(char(file_name_scans(33,1))));
cube_34 = table2array(readtable(char(file_name_scans(34,1))));
cube_35 = table2array(readtable(char(file_name_scans(35,1))));
cube_36 = table2array(readtable(char(file_name_scans(36,1))));
cube_37 = table2array(readtable(char(file_name_scans(37,1))));
cube_38 = table2array(readtable(char(file_name_scans(38,1))));
cube_39 = table2array(readtable(char(file_name_scans(39,1))));
cube_40 = table2array(readtable(char(file_name_scans(40,1))));
cube_41 = table2array(readtable(char(file_name_scans(41,1))));
cube_42 = table2array(readtable(char(file_name_scans(42,1))));
cube_43 = table2array(readtable(char(file_name_scans(43,1))));
cube_44 = table2array(readtable(char(file_name_scans(44,1))));

all_cubes = [cube_01;cube_02;cube_03;cube_04;cube_05;cube_06;cube_07;cube_08;cube_09;cube_10;cube_11;
             cube_12;cube_13;cube_14;cube_15;cube_16;cube_17;cube_18;cube_19;cube_20;cube_21;cube_22;
             cube_23;cube_24;cube_25;cube_26;cube_27;cube_28;cube_29;cube_30;cube_31;cube_32;cube_33;
             cube_34;cube_35;cube_36;cube_37;cube_38;cube_39;cube_40;cube_41;cube_42;cube_43;cube_44];

figure(13)
plot3(cube_01(:,2),cube_01(:,3),cube_01(:,4),'.');
title("Position of faults in 1 cube")
xlabel('x position (mm)')
ylabel('y position (mm)')
zlabel('z position (mm)')
grid on
