-- Design of registerfile for coefficients

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity registerfilecoe is
  generic(
    constant ROW : natural; -- number of words
   -- constant COL : natural; -- wordlength
    constant NOFW : natural); -- 2^NOFW = Number of words in registerfile
  port (
    readAdd : in std_logic_vector(NOFW-1 downto 0);
    dataOut1 : out std_logic_vector(11 downto 0);
    dataOut2 : out std_logic_vector(11 downto 0));

end entity;

architecture structural of registerfilecoe is

  type registerfile is array (ROW-1 downto 0) of std_logic_vector(11 downto 0); -- registerfile of size ROW x COL
  signal regfileReg1, regfileReg2 : registerfile;

  signal readPtr : unsigned(NOFW-1 downto 0);

begin

    -- address conversion
    readPtr <= (unsigned(readAdd));

    -- output logic
    dataOut1 <= regfileReg1(to_integer(readPtr));
    dataOut2 <= regfileReg2(to_integer(readPtr));

    -- coefficients Real
    regfileReg1(0) <= "010000000000";
    regfileReg1(1) <= "010000000000";
    regfileReg1(2) <= "010000000000";
    regfileReg1(3) <= "010000000000";
    regfileReg1(4) <= "010000000000";
    regfileReg1(5) <= "010000000000";
    regfileReg1(6) <= "010000000000";
    regfileReg1(7) <= "010000000000";
    regfileReg1(8) <= "010000000000";
    regfileReg1(9) <= "010000000000";
    regfileReg1(10) <= "010000000000";
    regfileReg1(11) <= "001111111111";
    regfileReg1(12) <= "001111111111";
    regfileReg1(13) <= "001111111111";
    regfileReg1(14) <= "001111111111";
    regfileReg1(15) <= "001111111111";
    regfileReg1(16) <= "001111111111";
    regfileReg1(17) <= "001111111111";
    regfileReg1(18) <= "001111111110";
    regfileReg1(19) <= "001111111110";
    regfileReg1(20) <= "001111111110";
    regfileReg1(21) <= "001111111110";
    regfileReg1(22) <= "001111111110";
    regfileReg1(23) <= "001111111101";
    regfileReg1(24) <= "001111111101";
    regfileReg1(25) <= "001111111101";
    regfileReg1(26) <= "001111111101";
    regfileReg1(27) <= "001111111100";
    regfileReg1(28) <= "001111111100";
    regfileReg1(29) <= "001111111100";
    regfileReg1(30) <= "001111111100";
    regfileReg1(31) <= "001111111011";
    regfileReg1(32) <= "001111111011";
    regfileReg1(33) <= "001111111011";
    regfileReg1(34) <= "001111111010";
    regfileReg1(35) <= "001111111010";
    regfileReg1(36) <= "001111111010";
    regfileReg1(37) <= "001111111001";
    regfileReg1(38) <= "001111111001";
    regfileReg1(39) <= "001111111001";
    regfileReg1(40) <= "001111111000";
    regfileReg1(41) <= "001111111000";
    regfileReg1(42) <= "001111111000";
    regfileReg1(43) <= "001111110111";
    regfileReg1(44) <= "001111110111";
    regfileReg1(45) <= "001111110110";
    regfileReg1(46) <= "001111110110";
    regfileReg1(47) <= "001111110101";
    regfileReg1(48) <= "001111110101";
    regfileReg1(49) <= "001111110100";
    regfileReg1(50) <= "001111110100";
    regfileReg1(51) <= "001111110011";
    regfileReg1(52) <= "001111110011";
    regfileReg1(53) <= "001111110010";
    regfileReg1(54) <= "001111110010";
    regfileReg1(55) <= "001111110001";
    regfileReg1(56) <= "001111110001";
    regfileReg1(57) <= "001111110000";
    regfileReg1(58) <= "001111110000";
    regfileReg1(59) <= "001111101111";
    regfileReg1(60) <= "001111101111";
    regfileReg1(61) <= "001111101110";
    regfileReg1(62) <= "001111101110";
    regfileReg1(63) <= "001111101101";
    regfileReg1(64) <= "001111101100";
    regfileReg1(65) <= "001111101100";
    regfileReg1(66) <= "001111101011";
    regfileReg1(67) <= "001111101010";
    regfileReg1(68) <= "001111101010";
    regfileReg1(69) <= "001111101001";
    regfileReg1(70) <= "001111101000";
    regfileReg1(71) <= "001111101000";
    regfileReg1(72) <= "001111100111";
    regfileReg1(73) <= "001111100110";
    regfileReg1(74) <= "001111100110";
    regfileReg1(75) <= "001111100101";
    regfileReg1(76) <= "001111100100";
    regfileReg1(77) <= "001111100100";
    regfileReg1(78) <= "001111100011";
    regfileReg1(79) <= "001111100010";
    regfileReg1(80) <= "001111100001";
    regfileReg1(81) <= "001111100001";
    regfileReg1(82) <= "001111100000";
    regfileReg1(83) <= "001111011111";
    regfileReg1(84) <= "001111011110";
    regfileReg1(85) <= "001111011101";
    regfileReg1(86) <= "001111011101";
    regfileReg1(87) <= "001111011100";
    regfileReg1(88) <= "001111011011";
    regfileReg1(89) <= "001111011010";
    regfileReg1(90) <= "001111011001";
    regfileReg1(91) <= "001111011000";
    regfileReg1(92) <= "001111010111";
    regfileReg1(93) <= "001111010111";
    regfileReg1(94) <= "001111010110";
    regfileReg1(95) <= "001111010101";
    regfileReg1(96) <= "001111010100";
    regfileReg1(97) <= "001111010011";
    regfileReg1(98) <= "001111010010";
    regfileReg1(99) <= "001111010001";
    regfileReg1(100) <= "001111010000";
    regfileReg1(101) <= "001111001111";
    regfileReg1(102) <= "001111001110";
    regfileReg1(103) <= "001111001101";
    regfileReg1(104) <= "001111001100";
    regfileReg1(105) <= "001111001011";
    regfileReg1(106) <= "001111001010";
    regfileReg1(107) <= "001111001001";
    regfileReg1(108) <= "001111001000";
    regfileReg1(109) <= "001111000111";
    regfileReg1(110) <= "001111000110";
    regfileReg1(111) <= "001111000101";
    regfileReg1(112) <= "001111000100";
    regfileReg1(113) <= "001111000011";
    regfileReg1(114) <= "001111000010";
    regfileReg1(115) <= "001111000001";
    regfileReg1(116) <= "001111000000";
    regfileReg1(117) <= "001110111111";
    regfileReg1(118) <= "001110111110";
    regfileReg1(119) <= "001110111101";
    regfileReg1(120) <= "001110111011";
    regfileReg1(121) <= "001110111010";
    regfileReg1(122) <= "001110111001";
    regfileReg1(123) <= "001110111000";
    regfileReg1(124) <= "001110110111";
    regfileReg1(125) <= "001110110110";
    regfileReg1(126) <= "001110110100";
    regfileReg1(127) <= "001110110011";
    regfileReg1(128) <= "001110110010";
    regfileReg1(129) <= "001110110001";
    regfileReg1(130) <= "001110110000";
    regfileReg1(131) <= "001110101110";
    regfileReg1(132) <= "001110101101";
    regfileReg1(133) <= "001110101100";
    regfileReg1(134) <= "001110101011";
    regfileReg1(135) <= "001110101001";
    regfileReg1(136) <= "001110101000";
    regfileReg1(137) <= "001110100111";
    regfileReg1(138) <= "001110100110";
    regfileReg1(139) <= "001110100100";
    regfileReg1(140) <= "001110100011";
    regfileReg1(141) <= "001110100010";
    regfileReg1(142) <= "001110100000";
    regfileReg1(143) <= "001110011111";
    regfileReg1(144) <= "001110011110";
    regfileReg1(145) <= "001110011100";
    regfileReg1(146) <= "001110011011";
    regfileReg1(147) <= "001110011010";
    regfileReg1(148) <= "001110011000";
    regfileReg1(149) <= "001110010111";
    regfileReg1(150) <= "001110010101";
    regfileReg1(151) <= "001110010100";
    regfileReg1(152) <= "001110010011";
    regfileReg1(153) <= "001110010001";
    regfileReg1(154) <= "001110010000";
    regfileReg1(155) <= "001110001110";
    regfileReg1(156) <= "001110001101";
    regfileReg1(157) <= "001110001011";
    regfileReg1(158) <= "001110001010";
    regfileReg1(159) <= "001110001001";
    regfileReg1(160) <= "001110000111";
    regfileReg1(161) <= "001110000110";
    regfileReg1(162) <= "001110000100";
    regfileReg1(163) <= "001110000011";
    regfileReg1(164) <= "001110000001";
    regfileReg1(165) <= "001110000000";
    regfileReg1(166) <= "001101111110";
    regfileReg1(167) <= "001101111101";
    regfileReg1(168) <= "001101111011";
    regfileReg1(169) <= "001101111001";
    regfileReg1(170) <= "001101111000";
    regfileReg1(171) <= "001101110110";
    regfileReg1(172) <= "001101110101";
    regfileReg1(173) <= "001101110011";
    regfileReg1(174) <= "001101110010";
    regfileReg1(175) <= "001101110000";
    regfileReg1(176) <= "001101101110";
    regfileReg1(177) <= "001101101101";
    regfileReg1(178) <= "001101101011";
    regfileReg1(179) <= "001101101001";
    regfileReg1(180) <= "001101101000";
    regfileReg1(181) <= "001101100110";
    regfileReg1(182) <= "001101100100";
    regfileReg1(183) <= "001101100011";
    regfileReg1(184) <= "001101100001";
    regfileReg1(185) <= "001101011111";
    regfileReg1(186) <= "001101011110";
    regfileReg1(187) <= "001101011100";
    regfileReg1(188) <= "001101011010";
    regfileReg1(189) <= "001101011001";
    regfileReg1(190) <= "001101010111";
    regfileReg1(191) <= "001101010101";
    regfileReg1(192) <= "001101010011";
    regfileReg1(193) <= "001101010010";
    regfileReg1(194) <= "001101010000";
    regfileReg1(195) <= "001101001110";
    regfileReg1(196) <= "001101001100";
    regfileReg1(197) <= "001101001011";
    regfileReg1(198) <= "001101001001";
    regfileReg1(199) <= "001101000111";
    regfileReg1(200) <= "001101000101";
    regfileReg1(201) <= "001101000011";
    regfileReg1(202) <= "001101000010";
    regfileReg1(203) <= "001101000000";
    regfileReg1(204) <= "001100111110";
    regfileReg1(205) <= "001100111100";
    regfileReg1(206) <= "001100111010";
    regfileReg1(207) <= "001100111000";
    regfileReg1(208) <= "001100110110";
    regfileReg1(209) <= "001100110101";
    regfileReg1(210) <= "001100110011";
    regfileReg1(211) <= "001100110001";
    regfileReg1(212) <= "001100101111";
    regfileReg1(213) <= "001100101101";
    regfileReg1(214) <= "001100101011";
    regfileReg1(215) <= "001100101001";
    regfileReg1(216) <= "001100100111";
    regfileReg1(217) <= "001100100101";
    regfileReg1(218) <= "001100100011";
    regfileReg1(219) <= "001100100001";
    regfileReg1(220) <= "001100011111";
    regfileReg1(221) <= "001100011110";
    regfileReg1(222) <= "001100011100";
    regfileReg1(223) <= "001100011010";
    regfileReg1(224) <= "001100011000";
    regfileReg1(225) <= "001100010110";
    regfileReg1(226) <= "001100010100";
    regfileReg1(227) <= "001100010010";
    regfileReg1(228) <= "001100010000";
    regfileReg1(229) <= "001100001110";
    regfileReg1(230) <= "001100001011";
    regfileReg1(231) <= "001100001001";
    regfileReg1(232) <= "001100000111";
    regfileReg1(233) <= "001100000101";
    regfileReg1(234) <= "001100000011";
    regfileReg1(235) <= "001100000001";
    regfileReg1(236) <= "001011111111";
    regfileReg1(237) <= "001011111101";
    regfileReg1(238) <= "001011111011";
    regfileReg1(239) <= "001011111001";
    regfileReg1(240) <= "001011110111";
    regfileReg1(241) <= "001011110101";
    regfileReg1(242) <= "001011110011";
    regfileReg1(243) <= "001011110000";
    regfileReg1(244) <= "001011101110";
    regfileReg1(245) <= "001011101100";
    regfileReg1(246) <= "001011101010";
    regfileReg1(247) <= "001011101000";
    regfileReg1(248) <= "001011100110";
    regfileReg1(249) <= "001011100011";
    regfileReg1(250) <= "001011100001";
    regfileReg1(251) <= "001011011111";
    regfileReg1(252) <= "001011011101";
    regfileReg1(253) <= "001011011011";
    regfileReg1(254) <= "001011011001";
    regfileReg1(255) <= "001011010110";
    regfileReg1(256) <= "001011010100";

    -- coefficients Imaginary
    regfileReg2(0) <= "000000000000";
    regfileReg2(1) <= "111111111101";
    regfileReg2(2) <= "111111111010";
    regfileReg2(3) <= "111111110111";
    regfileReg2(4) <= "111111110011";
    regfileReg2(5) <= "111111110000";
    regfileReg2(6) <= "111111101101";
    regfileReg2(7) <= "111111101010";
    regfileReg2(8) <= "111111100111";
    regfileReg2(9) <= "111111100100";
    regfileReg2(10) <= "111111100001";
    regfileReg2(11) <= "111111011101";
    regfileReg2(12) <= "111111011010";
    regfileReg2(13) <= "111111010111";
    regfileReg2(14) <= "111111010100";
    regfileReg2(15) <= "111111010001";
    regfileReg2(16) <= "111111001110";
    regfileReg2(17) <= "111111001011";
    regfileReg2(18) <= "111111000111";
    regfileReg2(19) <= "111111000100";
    regfileReg2(20) <= "111111000001";
    regfileReg2(21) <= "111110111110";
    regfileReg2(22) <= "111110111011";
    regfileReg2(23) <= "111110111000";
    regfileReg2(24) <= "111110110101";
    regfileReg2(25) <= "111110110010";
    regfileReg2(26) <= "111110101110";
    regfileReg2(27) <= "111110101011";
    regfileReg2(28) <= "111110101000";
    regfileReg2(29) <= "111110100101";
    regfileReg2(30) <= "111110100010";
    regfileReg2(31) <= "111110011111";
    regfileReg2(32) <= "111110011100";
    regfileReg2(33) <= "111110011001";
    regfileReg2(34) <= "111110010101";
    regfileReg2(35) <= "111110010010";
    regfileReg2(36) <= "111110001111";
    regfileReg2(37) <= "111110001100";
    regfileReg2(38) <= "111110001001";
    regfileReg2(39) <= "111110000110";
    regfileReg2(40) <= "111110000011";
    regfileReg2(41) <= "111110000000";
    regfileReg2(42) <= "111101111100";
    regfileReg2(43) <= "111101111001";
    regfileReg2(44) <= "111101110110";
    regfileReg2(45) <= "111101110011";
    regfileReg2(46) <= "111101110000";
    regfileReg2(47) <= "111101101101";
    regfileReg2(48) <= "111101101010";
    regfileReg2(49) <= "111101100111";
    regfileReg2(50) <= "111101100100";
    regfileReg2(51) <= "111101100000";
    regfileReg2(52) <= "111101011101";
    regfileReg2(53) <= "111101011010";
    regfileReg2(54) <= "111101010111";
    regfileReg2(55) <= "111101010100";
    regfileReg2(56) <= "111101010001";
    regfileReg2(57) <= "111101001110";
    regfileReg2(58) <= "111101001011";
    regfileReg2(59) <= "111101001000";
    regfileReg2(60) <= "111101000101";
    regfileReg2(61) <= "111101000001";
    regfileReg2(62) <= "111100111110";
    regfileReg2(63) <= "111100111011";
    regfileReg2(64) <= "111100111000";
    regfileReg2(65) <= "111100110101";
    regfileReg2(66) <= "111100110010";
    regfileReg2(67) <= "111100101111";
    regfileReg2(68) <= "111100101100";
    regfileReg2(69) <= "111100101001";
    regfileReg2(70) <= "111100100110";
    regfileReg2(71) <= "111100100011";
    regfileReg2(72) <= "111100100000";
    regfileReg2(73) <= "111100011101";
    regfileReg2(74) <= "111100011010";
    regfileReg2(75) <= "111100010110";
    regfileReg2(76) <= "111100010011";
    regfileReg2(77) <= "111100010000";
    regfileReg2(78) <= "111100001101";
    regfileReg2(79) <= "111100001010";
    regfileReg2(80) <= "111100000111";
    regfileReg2(81) <= "111100000100";
    regfileReg2(82) <= "111100000001";
    regfileReg2(83) <= "111011111110";
    regfileReg2(84) <= "111011111011";
    regfileReg2(85) <= "111011111000";
    regfileReg2(86) <= "111011110101";
    regfileReg2(87) <= "111011110010";
    regfileReg2(88) <= "111011101111";
    regfileReg2(89) <= "111011101100";
    regfileReg2(90) <= "111011101001";
    regfileReg2(91) <= "111011100110";
    regfileReg2(92) <= "111011100011";
    regfileReg2(93) <= "111011100000";
    regfileReg2(94) <= "111011011101";
    regfileReg2(95) <= "111011011010";
    regfileReg2(96) <= "111011010111";
    regfileReg2(97) <= "111011010100";
    regfileReg2(98) <= "111011010001";
    regfileReg2(99) <= "111011001110";
    regfileReg2(100) <= "111011001011";
    regfileReg2(101) <= "111011001000";
    regfileReg2(102) <= "111011000101";
    regfileReg2(103) <= "111011000010";
    regfileReg2(104) <= "111010111111";
    regfileReg2(105) <= "111010111100";
    regfileReg2(106) <= "111010111001";
    regfileReg2(107) <= "111010110110";
    regfileReg2(108) <= "111010110011";
    regfileReg2(109) <= "111010110000";
    regfileReg2(110) <= "111010101101";
    regfileReg2(111) <= "111010101010";
    regfileReg2(112) <= "111010100111";
    regfileReg2(113) <= "111010100100";
    regfileReg2(114) <= "111010100001";
    regfileReg2(115) <= "111010011110";
    regfileReg2(116) <= "111010011011";
    regfileReg2(117) <= "111010011000";
    regfileReg2(118) <= "111010010101";
    regfileReg2(119) <= "111010010010";
    regfileReg2(120) <= "111010001111";
    regfileReg2(121) <= "111010001101";
    regfileReg2(122) <= "111010001010";
    regfileReg2(123) <= "111010000111";
    regfileReg2(124) <= "111010000100";
    regfileReg2(125) <= "111010000001";
    regfileReg2(126) <= "111001111110";
    regfileReg2(127) <= "111001111011";
    regfileReg2(128) <= "111001111000";
    regfileReg2(129) <= "111001110101";
    regfileReg2(130) <= "111001110010";
    regfileReg2(131) <= "111001101111";
    regfileReg2(132) <= "111001101101";
    regfileReg2(133) <= "111001101010";
    regfileReg2(134) <= "111001100111";
    regfileReg2(135) <= "111001100100";
    regfileReg2(136) <= "111001100001";
    regfileReg2(137) <= "111001011110";
    regfileReg2(138) <= "111001011011";
    regfileReg2(139) <= "111001011000";
    regfileReg2(140) <= "111001010110";
    regfileReg2(141) <= "111001010011";
    regfileReg2(142) <= "111001010000";
    regfileReg2(143) <= "111001001101";
    regfileReg2(144) <= "111001001010";
    regfileReg2(145) <= "111001000111";
    regfileReg2(146) <= "111001000101";
    regfileReg2(147) <= "111001000010";
    regfileReg2(148) <= "111000111111";
    regfileReg2(149) <= "111000111100";
    regfileReg2(150) <= "111000111001";
    regfileReg2(151) <= "111000110110";
    regfileReg2(152) <= "111000110100";
    regfileReg2(153) <= "111000110001";
    regfileReg2(154) <= "111000101110";
    regfileReg2(155) <= "111000101011";
    regfileReg2(156) <= "111000101000";
    regfileReg2(157) <= "111000100110";
    regfileReg2(158) <= "111000100011";
    regfileReg2(159) <= "111000100000";
    regfileReg2(160) <= "111000011101";
    regfileReg2(161) <= "111000011011";
    regfileReg2(162) <= "111000011000";
    regfileReg2(163) <= "111000010101";
    regfileReg2(164) <= "111000010010";
    regfileReg2(165) <= "111000001111";
    regfileReg2(166) <= "111000001101";
    regfileReg2(167) <= "111000001010";
    regfileReg2(168) <= "111000000111";
    regfileReg2(169) <= "111000000101";
    regfileReg2(170) <= "111000000010";
    regfileReg2(171) <= "110111111111";
    regfileReg2(172) <= "110111111100";
    regfileReg2(173) <= "110111111010";
    regfileReg2(174) <= "110111110111";
    regfileReg2(175) <= "110111110100";
    regfileReg2(176) <= "110111110010";
    regfileReg2(177) <= "110111101111";
    regfileReg2(178) <= "110111101100";
    regfileReg2(179) <= "110111101001";
    regfileReg2(180) <= "110111100111";
    regfileReg2(181) <= "110111100100";
    regfileReg2(182) <= "110111100001";
    regfileReg2(183) <= "110111011111";
    regfileReg2(184) <= "110111011100";
    regfileReg2(185) <= "110111011010";
    regfileReg2(186) <= "110111010111";
    regfileReg2(187) <= "110111010100";
    regfileReg2(188) <= "110111010010";
    regfileReg2(189) <= "110111001111";
    regfileReg2(190) <= "110111001100";
    regfileReg2(191) <= "110111001010";
    regfileReg2(192) <= "110111000111";
    regfileReg2(193) <= "110111000100";
    regfileReg2(194) <= "110111000010";
    regfileReg2(195) <= "110110111111";
    regfileReg2(196) <= "110110111101";
    regfileReg2(197) <= "110110111010";
    regfileReg2(198) <= "110110111000";
    regfileReg2(199) <= "110110110101";
    regfileReg2(200) <= "110110110010";
    regfileReg2(201) <= "110110110000";
    regfileReg2(202) <= "110110101101";
    regfileReg2(203) <= "110110101011";
    regfileReg2(204) <= "110110101000";
    regfileReg2(205) <= "110110100110";
    regfileReg2(206) <= "110110100011";
    regfileReg2(207) <= "110110100001";
    regfileReg2(208) <= "110110011110";
    regfileReg2(209) <= "110110011011";
    regfileReg2(210) <= "110110011001";
    regfileReg2(211) <= "110110010110";
    regfileReg2(212) <= "110110010100";
    regfileReg2(213) <= "110110010001";
    regfileReg2(214) <= "110110001111";
    regfileReg2(215) <= "110110001100";
    regfileReg2(216) <= "110110001010";
    regfileReg2(217) <= "110110001000";
    regfileReg2(218) <= "110110000101";
    regfileReg2(219) <= "110110000011";
    regfileReg2(220) <= "110110000000";
    regfileReg2(221) <= "110101111110";
    regfileReg2(222) <= "110101111011";
    regfileReg2(223) <= "110101111001";
    regfileReg2(224) <= "110101110110";
    regfileReg2(225) <= "110101110100";
    regfileReg2(226) <= "110101110010";
    regfileReg2(227) <= "110101101111";
    regfileReg2(228) <= "110101101101";
    regfileReg2(229) <= "110101101010";
    regfileReg2(230) <= "110101101000";
    regfileReg2(231) <= "110101100110";
    regfileReg2(232) <= "110101100011";
    regfileReg2(233) <= "110101100001";
    regfileReg2(234) <= "110101011110";
    regfileReg2(235) <= "110101011100";
    regfileReg2(236) <= "110101011010";
    regfileReg2(237) <= "110101010111";
    regfileReg2(238) <= "110101010101";
    regfileReg2(239) <= "110101010011";
    regfileReg2(240) <= "110101010000";
    regfileReg2(241) <= "110101001110";
    regfileReg2(242) <= "110101001100";
    regfileReg2(243) <= "110101001001";
    regfileReg2(244) <= "110101000111";
    regfileReg2(245) <= "110101000101";
    regfileReg2(246) <= "110101000010";
    regfileReg2(247) <= "110101000000";
    regfileReg2(248) <= "110100111110";
    regfileReg2(249) <= "110100111100";
    regfileReg2(250) <= "110100111001";
    regfileReg2(251) <= "110100110111";
    regfileReg2(252) <= "110100110101";
    regfileReg2(253) <= "110100110011";
    regfileReg2(254) <= "110100110000";
    regfileReg2(255) <= "110100101110";
    regfileReg2(256) <= "110100101100";


end architecture;
