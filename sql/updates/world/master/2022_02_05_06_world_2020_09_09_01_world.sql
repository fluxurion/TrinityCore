--
DELETE FROM `creature_formations` WHERE `leaderGUID` = 23473;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(23473,23473,0,0,515,0,0),
(23473,23472,7.5,360,515,0,0);

-- delete old spawns
DELETE FROM `creature` WHERE `guid` IN (272551,272588,272592,272607,272609,272619,272628,272722,272723);
DELETE FROM `creature_addon` WHERE `guid` IN (272551,272588,272592,272607,272609,272619,272628,272722,272723);

-- restore even older spawns
DELETE FROM `creature` WHERE `guid` IN (23468,23469,23472,23473,23474,23477,23478,23481);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(23481, 19951, 1, 0, 0, 1, 1, 0, 1, -8459.6, -4229.26, -214.189, 1.55334, 600, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0),
(23478, 19951, 1, 0, 0, 1, 1, 0, 1, -8465.6, -4519.6, -209.255, 2.23402, 600, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0),
(23477, 19951, 1, 0, 0, 1, 1, 0, 1, -8525.67, -4510.7, -210.954, 1.79769, 600, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0),
(23474, 19951, 1, 0, 0, 1, 1, 0, 1, -8498.54, -4398.82, -217.981, 5.06145, 600, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0),
(23473, 19951, 1, 0, 0, 1, 1, 0, 1, -8144.26, -4902.19, 17.7225, 3.13249, 600, 0, 0, 6986, 0, 2, 0, 0, 0, '', 0),
(23472, 19951, 1, 0, 0, 1, 1, 0, 1, -8151.63, -4901.98, 18.727, 3.08034, 600, 0, 0, 6986, 0, 2, 0, 0, 0, '', 0),
(23469, 19951, 1, 0, 0, 1, 1, 0, 1, -8558.78, -4356.28, -216.507, 3.9619, 600, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0),
(23468, 19951, 1, 0, 0, 1, 1, 0, 1, -8563.47, -4284.08, -215.423, 2.86234, 600, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature_addon` WHERE `guid` IN (23468,23469,23472,23473,23474,23477,23478,23481);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(23468, 0, 0, 0, 4097, 0, 3, NULL),
(23469, 0, 0, 0, 4097, 0, 3, NULL),
(23472, 234720, 0, 0, 4097, 0, 3, NULL),
(23473, 234730, 0, 0, 4097, 0, 3, NULL),
(23474, 0, 0, 0, 4097, 0, 3, NULL),
(23477, 0, 0, 0, 4097, 0, 3, NULL),
(23478, 0, 0, 0, 4097, 0, 3, NULL),
(23481, 0, 0, 0, 4097, 0, 3, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (234720,234730);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(234720, 1, -8140.88, -4900.17, 17.2142, 0, 0, 0, 0, 100, 0),
(234720, 2, -8132.53, -4900.04, 16.1126, 0, 0, 0, 0, 100, 0),
(234720, 3, -8124.6, -4899.66, 14.9936, 0, 0, 0, 0, 100, 0),
(234720, 4, -8115.34, -4898.79, 13.6663, 0, 0, 0, 0, 100, 0),
(234720, 5, -8100.58, -4893.2, 9.57123, 0, 0, 0, 0, 100, 0),
(234720, 6, -8096.45, -4888.77, 7.25628, 0, 0, 0, 0, 100, 0),
(234720, 7, -8087.11, -4877.12, 0.692296, 0, 0, 0, 0, 100, 0),
(234720, 8, -8084.07, -4868.8, -2.86174, 0, 0, 0, 0, 100, 0),
(234720, 9, -8082.03, -4862.62, -5.01038, 0, 0, 0, 0, 100, 0),
(234720, 10, -8083.32, -4852.91, -7.66, 0, 0, 0, 0, 100, 0),
(234720, 11, -8087.76, -4846.9, -10.4461, 0, 0, 0, 0, 100, 0),
(234720, 12, -8096.93, -4839.83, -13.723, 0, 0, 0, 0, 100, 0),
(234720, 13, -8107.87, -4838.93, -15.4384, 0, 0, 0, 0, 100, 0),
(234720, 14, -8124.24, -4845.1, -19.1557, 0, 0, 0, 0, 100, 0),
(234720, 15, -8136.59, -4852.93, -21.3187, 0, 0, 0, 0, 100, 0),
(234720, 16, -8138.62, -4855.47, -21.7766, 0, 0, 0, 0, 100, 0),
(234720, 17, -8148.23, -4876.2, -30.4081, 0, 0, 0, 0, 100, 0),
(234720, 18, -8148.23, -4876.2, -30.4081, 0, 0, 0, 0, 100, 0),
(234720, 19, -8143.05, -4860.51, -24.1494, 0, 0, 0, 0, 100, 0),
(234720, 20, -8134.71, -4849.28, -20.7503, 0, 0, 0, 0, 100, 0),
(234720, 21, -8123.1, -4843.46, -18.8427, 0, 0, 0, 0, 100, 0),
(234720, 22, -8106.18, -4841.42, -15.2485, 0, 0, 0, 0, 100, 0),
(234720, 23, -8093.91, -4845.89, -11.76, 0, 0, 0, 0, 100, 0),
(234720, 24, -8085.85, -4851.35, -8.7781, 0, 0, 0, 0, 100, 0),
(234720, 25, -8079.86, -4860.64, -5.14445, 0, 0, 0, 0, 100, 0),
(234720, 26, -8079.35, -4877.1, -0.421529, 0, 0, 0, 0, 100, 0),
(234720, 27, -8086.59, -4882.75, 2.55188, 0, 0, 0, 0, 100, 0),
(234720, 28, -8102.99, -4892.39, 10.0708, 0, 0, 0, 0, 100, 0),
(234720, 29, -8102.99, -4892.39, 10.0708, 0, 0, 0, 0, 100, 0),
(234720, 30, -8137.44, -4898.27, 16.8457, 0, 0, 0, 0, 100, 0),
(234720, 31, -8155.02, -4899.08, 19.1474, 0, 0, 0, 0, 100, 0),
(234720, 32, -8168.38, -4892.74, 21.9139, 0, 0, 0, 0, 100, 0),
(234720, 33, -8179.74, -4877.37, 25.5326, 0, 0, 0, 0, 100, 0),
(234720, 34, -8180.57, -4866.42, 26.8953, 0, 0, 0, 0, 100, 0),
(234720, 35, -8174.47, -4850.13, 28.0504, 0, 0, 0, 0, 100, 0),
(234720, 36, -8169.24, -4833.43, 30.8913, 0, 0, 0, 0, 100, 0),
(234720, 37, -8164.67, -4816.8, 34.6742, 0, 0, 0, 0, 100, 0),
(234720, 38, -8164.12, -4814.02, 35.1313, 0, 0, 0, 0, 100, 0),
(234720, 39, -8165.88, -4825.07, 33.0371, 0, 0, 0, 0, 100, 0),
(234720, 40, -8177.93, -4853.35, 28.1598, 0, 0, 0, 0, 100, 0),
(234720, 41, -8178.69, -4869.57, 26.0594, 0, 0, 0, 0, 100, 0),
(234720, 42, -8169.57, -4887.23, 22.456, 0, 0, 0, 0, 100, 0),
(234720, 43, -8153.56, -4900.73, 18.9626, 0, 0, 0, 0, 100, 0),
(234730, 1, -8140.88, -4900.17, 17.2142, 0, 0, 0, 0, 100, 0),
(234730, 2, -8132.53, -4900.04, 16.1126, 0, 0, 0, 0, 100, 0),
(234730, 3, -8124.6, -4899.66, 14.9936, 0, 0, 0, 0, 100, 0),
(234730, 4, -8115.34, -4898.79, 13.6663, 0, 0, 0, 0, 100, 0),
(234730, 5, -8100.58, -4893.2, 9.57123, 0, 0, 0, 0, 100, 0),
(234730, 6, -8096.45, -4888.77, 7.25628, 0, 0, 0, 0, 100, 0),
(234730, 7, -8087.11, -4877.12, 0.692296, 0, 0, 0, 0, 100, 0),
(234730, 8, -8084.07, -4868.8, -2.86174, 0, 0, 0, 0, 100, 0),
(234730, 9, -8082.03, -4862.62, -5.01038, 0, 0, 0, 0, 100, 0),
(234730, 10, -8083.32, -4852.91, -7.66, 0, 0, 0, 0, 100, 0),
(234730, 11, -8087.76, -4846.9, -10.4461, 0, 0, 0, 0, 100, 0),
(234730, 12, -8096.93, -4839.83, -13.723, 0, 0, 0, 0, 100, 0),
(234730, 13, -8107.87, -4838.93, -15.4384, 0, 0, 0, 0, 100, 0),
(234730, 14, -8124.24, -4845.1, -19.1557, 0, 0, 0, 0, 100, 0),
(234730, 15, -8136.59, -4852.93, -21.3187, 0, 0, 0, 0, 100, 0),
(234730, 16, -8138.62, -4855.47, -21.7766, 0, 0, 0, 0, 100, 0),
(234730, 17, -8148.23, -4876.2, -30.4081, 0, 0, 0, 0, 100, 0),
(234730, 18, -8148.23, -4876.2, -30.4081, 0, 0, 0, 0, 100, 0),
(234730, 19, -8143.05, -4860.51, -24.1494, 0, 0, 0, 0, 100, 0),
(234730, 20, -8134.71, -4849.28, -20.7503, 0, 0, 0, 0, 100, 0),
(234730, 21, -8123.1, -4843.46, -18.8427, 0, 0, 0, 0, 100, 0),
(234730, 22, -8106.18, -4841.42, -15.2485, 0, 0, 0, 0, 100, 0),
(234730, 23, -8093.91, -4845.89, -11.76, 0, 0, 0, 0, 100, 0),
(234730, 24, -8085.85, -4851.35, -8.7781, 0, 0, 0, 0, 100, 0),
(234730, 25, -8079.86, -4860.64, -5.14445, 0, 0, 0, 0, 100, 0),
(234730, 26, -8079.35, -4877.1, -0.421529, 0, 0, 0, 0, 100, 0),
(234730, 27, -8086.59, -4882.75, 2.55188, 0, 0, 0, 0, 100, 0),
(234730, 28, -8102.99, -4892.39, 10.0708, 0, 0, 0, 0, 100, 0),
(234730, 29, -8102.99, -4892.39, 10.0708, 0, 0, 0, 0, 100, 0),
(234730, 30, -8137.44, -4898.27, 16.8457, 0, 0, 0, 0, 100, 0),
(234730, 31, -8155.02, -4899.08, 19.1474, 0, 0, 0, 0, 100, 0),
(234730, 32, -8168.38, -4892.74, 21.9139, 0, 0, 0, 0, 100, 0),
(234730, 33, -8179.74, -4877.37, 25.5326, 0, 0, 0, 0, 100, 0),
(234730, 34, -8180.57, -4866.42, 26.8953, 0, 0, 0, 0, 100, 0),
(234730, 35, -8174.47, -4850.13, 28.0504, 0, 0, 0, 0, 100, 0),
(234730, 36, -8169.24, -4833.43, 30.8913, 0, 0, 0, 0, 100, 0),
(234730, 37, -8164.67, -4816.8, 34.6742, 0, 0, 0, 0, 100, 0),
(234730, 38, -8164.12, -4814.02, 35.1313, 0, 0, 0, 0, 100, 0),
(234730, 39, -8165.88, -4825.07, 33.0371, 0, 0, 0, 0, 100, 0),
(234730, 40, -8177.93, -4853.35, 28.1598, 0, 0, 0, 0, 100, 0),
(234730, 41, -8178.69, -4869.57, 26.0594, 0, 0, 0, 0, 100, 0),
(234730, 42, -8169.57, -4887.23, 22.456, 0, 0, 0, 0, 100, 0),
(234730, 43, -8153.56, -4900.73, 18.9626, 0, 0, 0, 0, 100, 0);