SET @CGUID := 396679;
SET @OGUID := 252674;
SET @EVENT := 2;

-- Creature spawns
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
-- Razor Hill
(@CGUID+0, 15760, 1, 14, 362, '0', 0, 0, 0, 1, 330.857635498046875, -4689.734375, 16.5725555419921875, 1.448623299598693847, 120, 0, 0, 112919, 0, 0, 0, 0, 0, 47213), -- Winter Reveler (Area: Razor Hill - Difficulty: 0) (Auras: )
(@CGUID+1, 15760, 1, 14, 362, '0', 0, 0, 0, 1, 331.18402099609375, -4687.06591796875, 16.5725555419921875, 4.694935798645019531, 120, 0, 0, 112919, 0, 0, 0, 0, 0, 47213); -- Winter Reveler (Area: Razor Hill - Difficulty: 0) (Auras: )

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+0, @CGUID+1);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 257, 0, 0, 0, 0, 0, '26247'), -- 15760 (Winter Reveler)
(@CGUID+1, 0, 0, 0, 257, 0, 0, 0, 0, 0, '26248'); -- 15760 (Winter Reveler)

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+126;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
-- Razor Hill
(@OGUID+0, 178426, 1, 14, 362, '0', 0, 0, 310.435760498046875, -4706.01416015625, 11.24321269989013671, 4.136432647705078125, 0, 0, -0.87881660461425781, 0.477159708738327026, 120, 255, 1, 47213), -- XMasTreeLargeHorde01 (Area: Razor Hill - Difficulty: 0)
(@OGUID+1, 178428, 1, 14, 362, '0', 0, 0, 309.892578125, -4708.41015625, 11.32654476165771484, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437, 120, 255, 1, 47213), -- XMasGift01 (Area: Razor Hill - Difficulty: 0)
(@OGUID+2, 178428, 1, 14, 362, '0', 0, 0, 308.830963134765625, -4703.9912109375, 11.32654476165771484, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087, 120, 255, 1, 47213), -- XMasGift01 (Area: Razor Hill - Difficulty: 0)
(@OGUID+3, 178428, 1, 14, 362, '0', 0, 0, 307.82623291015625, -4707.7490234375, 11.32654476165771484, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267, 120, 255, 1, 47213), -- XMasGift01 (Area: Razor Hill - Difficulty: 0)
(@OGUID+4, 178428, 1, 14, 362, '0', 0, 0, 312.6339111328125, -4708.17431640625, 11.32654476165771484, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419, 120, 255, 1, 47213), -- XMasGift01 (Area: Razor Hill - Difficulty: 0)
(@OGUID+5, 178428, 1, 14, 362, '0', 0, 0, 309.547454833984375, -4703.06298828125, 11.32654476165771484, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039, 120, 255, 1, 47213), -- XMasGift01 (Area: Razor Hill - Difficulty: 0)
(@OGUID+6, 178429, 1, 14, 362, '0', 0, 0, 309.61962890625, -4707.2421875, 11.32654476165771484, 4.9218292236328125, 0, 0, -0.62932014465332031, 0.77714616060256958, 120, 255, 1, 47213), -- XMasGift02 (Area: Razor Hill - Difficulty: 0)
(@OGUID+7, 178429, 1, 14, 362, '0', 0, 0, 311.434295654296875, -4706.82568359375, 11.32654476165771484, 4.206246376037597656, 0, 0, -0.86162853240966796, 0.50753939151763916, 120, 255, 1, 47213), -- XMasGift02 (Area: Razor Hill - Difficulty: 0)
(@OGUID+8, 178429, 1, 14, 362, '0', 0, 0, 310.516815185546875, -4704.97265625, 11.32654476165771484, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538, 120, 255, 1, 47213), -- XMasGift02 (Area: Razor Hill - Difficulty: 0)
(@OGUID+9, 178429, 1, 14, 362, '0', 0, 0, 309.44677734375, -4705.162109375, 11.32654476165771484, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712, 120, 255, 1, 47213), -- XMasGift02 (Area: Razor Hill - Difficulty: 0)
(@OGUID+10, 178430, 1, 14, 362, '0', 0, 0, 308.888671875, -4707.71142578125, 11.32654476165771484, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783, 120, 255, 1, 47213), -- XMasGift03 (Area: Razor Hill - Difficulty: 0)
(@OGUID+11, 178430, 1, 14, 362, '0', 0, 0, 310.257965087890625, -4709.357421875, 11.32654476165771484, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023, 120, 255, 1, 47213), -- XMasGift03 (Area: Razor Hill - Difficulty: 0)
(@OGUID+12, 178430, 1, 14, 362, '0', 0, 0, 312.130279541015625, -4707.333984375, 11.32654476165771484, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 120, 255, 1, 47213), -- XMasGift03 (Area: Razor Hill - Difficulty: 0)
(@OGUID+13, 178430, 1, 14, 362, '0', 0, 0, 308.300201416015625, -4706.19091796875, 11.32654476165771484, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507, 120, 255, 1, 47213), -- XMasGift03 (Area: Razor Hill - Difficulty: 0)
(@OGUID+14, 178430, 1, 14, 362, '0', 0, 0, 307.59234619140625, -4703.9931640625, 11.32654476165771484, 4.066620349884033203, 0, 0, -0.89493370056152343, 0.44619917869567871, 120, 255, 1, 47213), -- XMasGift03 (Area: Razor Hill - Difficulty: 0)
(@OGUID+15, 178431, 1, 14, 362, '0', 0, 0, 307.42645263671875, -4706.27001953125, 11.32654476165771484, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 120, 255, 1, 47213), -- XMasGift04 (Area: Razor Hill - Difficulty: 0)
(@OGUID+16, 178431, 1, 14, 362, '0', 0, 0, 308.30999755859375, -4708.787109375, 11.32654476165771484, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 120, 255, 1, 47213), -- XMasGift04 (Area: Razor Hill - Difficulty: 0)
(@OGUID+17, 178431, 1, 14, 362, '0', 0, 0, 310.63232421875, -4707.45263671875, 11.32654476165771484, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333, 120, 255, 1, 47213), -- XMasGift04 (Area: Razor Hill - Difficulty: 0)
(@OGUID+18, 178431, 1, 14, 362, '0', 0, 0, 308.452972412109375, -4704.8720703125, 11.32654476165771484, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, 47213), -- XMasGift04 (Area: Razor Hill - Difficulty: 0)
(@OGUID+19, 178431, 1, 14, 362, '0', 0, 0, 311.895416259765625, -4709.0244140625, 11.35794639587402343, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958, 120, 255, 1, 47213), -- XMasGift04 (Area: Razor Hill - Difficulty: 0)
(@OGUID+20, 178432, 1, 14, 362, '0', 0, 0, 313.254669189453125, -4707.39208984375, 11.32654476165771484, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546, 120, 255, 1, 47213), -- XMasGift05 (Area: Razor Hill - Difficulty: 0)
(@OGUID+21, 178432, 1, 14, 362, '0', 0, 0, 309.724395751953125, -4704.232421875, 11.32654476165771484, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 120, 255, 1, 47213), -- XMasGift05 (Area: Razor Hill - Difficulty: 0)
(@OGUID+22, 178432, 1, 14, 362, '0', 0, 0, 309.162811279296875, -4706.32666015625, 11.32654476165771484, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 120, 255, 1, 47213), -- XMasGift05 (Area: Razor Hill - Difficulty: 0)
(@OGUID+23, 178432, 1, 14, 362, '0', 0, 0, 311.475860595703125, -4705.76806640625, 11.32654476165771484, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347, 120, 255, 1, 47213), -- XMasGift05 (Area: Razor Hill - Difficulty: 0)
(@OGUID+24, 178433, 1, 14, 362, '0', 0, 0, 311.1068115234375, -4708.43017578125, 11.32654476165771484, 0.331610709428787231, 0, 0, 0.16504669189453125, 0.986285746097564697, 120, 255, 1, 47213), -- XMasGift06 (Area: Razor Hill - Difficulty: 0)
(@OGUID+25, 178433, 1, 14, 362, '0', 0, 0, 308.023773193359375, -4703.12255859375, 11.32654476165771484, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958, 120, 255, 1, 47213), -- XMasGift06 (Area: Razor Hill - Difficulty: 0)
(@OGUID+26, 178433, 1, 14, 362, '0', 0, 0, 309.085113525390625, -4709.28662109375, 11.32654476165771484, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281, 120, 255, 1, 47213), -- XMasGift06 (Area: Razor Hill - Difficulty: 0)
(@OGUID+27, 178433, 1, 14, 362, '0', 0, 0, 307.570159912109375, -4705.2060546875, 11.32654476165771484, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111, 120, 255, 1, 47213), -- XMasGift06 (Area: Razor Hill - Difficulty: 0)
(@OGUID+28, 178433, 1, 14, 362, '0', 0, 0, 308.44622802734375, -4706.96923828125, 11.65293407440185546, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163, 120, 255, 1, 47213), -- XMasGift06 (Area: Razor Hill - Difficulty: 0)
(@OGUID+29, 178438, 1, 14, 362, '0', 0, 0, 323.635406494140625, -4668.97216796875, 28.51375389099121093, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+30, 178438, 1, 14, 362, '0', 0, 0, 314.253692626953125, -4774.02587890625, 31.66709327697753906, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.67559051513671875, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+31, 178438, 1, 14, 362, '0', 0, 0, 274.69720458984375, -4813.708984375, 31.664642333984375, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+32, 178438, 1, 14, 362, '0', 0, 0, 291.395843505859375, -4789.32275390625, 31.88609504699707031, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+33, 178438, 1, 14, 362, '0', 0, 0, 321.8560791015625, -4782.07421875, 31.67602157592773437, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+34, 178438, 1, 14, 362, '0', 0, 0, 335.081573486328125, -4788.5234375, 31.73408317565917968, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+35, 178438, 1, 14, 362, '0', 0, 0, 338.285003662109375, -4790.90087890625, 31.68547248840332031, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+36, 178438, 1, 14, 362, '0', 0, 0, 338.545135498046875, -4661.8505859375, 28.20366859436035156, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+37, 178438, 1, 14, 362, '0', 0, 0, 324.53125, -4665.14599609375, 28.61264419555664062, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+38, 178438, 1, 14, 362, '0', 0, 0, 362.91839599609375, -4694.3837890625, 27.51308631896972656, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+39, 178438, 1, 14, 362, '0', 0, 0, 352.06109619140625, -4814.798828125, 31.75491714477539062, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+40, 178438, 1, 14, 362, '0', 0, 0, 346.132598876953125, -4839.27978515625, 31.69241714477539062, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+41, 178438, 1, 14, 362, '0', 0, 0, 293.403228759765625, -4855.49365234375, 31.65075111389160156, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775, 120, 255, 1, 47213), -- Lights (Area: Razor Hill - Difficulty: 0)
(@OGUID+42, 178551, 1, 14, 362, '0', 0, 0, 279.088531494140625, -4798.017578125, 32.13043975830078125, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+43, 178551, 1, 14, 362, '0', 0, 0, 275.344757080078125, -4810.06103515625, 31.71325302124023437, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+44, 178551, 1, 14, 362, '0', 0, 0, 299.255218505859375, -4775.8681640625, 31.88931655883789062, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+45, 178551, 1, 14, 362, '0', 0, 0, 293.361114501953125, -4785.63037109375, 31.96345329284667968, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+46, 178551, 1, 14, 362, '0', 0, 0, 344.83203125, -4801.64501953125, 31.74102783203125, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+47, 178551, 1, 14, 362, '0', 0, 0, 277.774322509765625, -4838.30029296875, 31.78963851928710937, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+48, 178551, 1, 14, 362, '0', 0, 0, 365.986114501953125, -4691.75, 27.67716407775878906, 2.321286916732788085, 0, 0, 0.917059898376464843, 0.398749500513076782, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+49, 178551, 1, 14, 362, '0', 0, 0, 342.34375, -4661.6005859375, 28.22890663146972656, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+50, 178551, 1, 14, 362, '0', 0, 0, 317.986968994140625, -4861.6474609375, 31.754913330078125, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279, 120, 255, 1, 47213), -- Lights, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+51, 178554, 1, 14, 362, '0', 0, 0, 332.307281494140625, -4699.02978515625, 21.29888153076171875, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 120, 255, 1, 47213), -- Mistletoe (Area: Razor Hill - Difficulty: 0)
(@OGUID+52, 178645, 1, 14, 362, '0', 0, 0, 317.02777099609375, -4803.29150390625, 52.93920516967773437, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+53, 178645, 1, 14, 362, '0', 0, 0, 321.461822509765625, -4676.3525390625, 28.53952980041503906, 6.056293010711669921, 0, 0, -0.11320304870605468, 0.993571877479553222, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+54, 178645, 1, 14, 362, '0', 0, 0, 329.6944580078125, -4681.1474609375, 51.28325653076171875, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+55, 178645, 1, 14, 362, '0', 0, 0, 272.54278564453125, -4820.96484375, 31.68547248840332031, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+56, 178645, 1, 14, 362, '0', 0, 0, 335.072906494140625, -4694.59912109375, 51.08914566040039062, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+57, 178645, 1, 14, 362, '0', 0, 0, 284.758697509765625, -4792.96337890625, 32.11165618896484375, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+58, 178645, 1, 14, 362, '0', 0, 0, 322.12847900390625, -4695.1875, 28.28560829162597656, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+59, 178645, 1, 14, 362, '0', 0, 0, 293.232635498046875, -4816.2900390625, 52.96698379516601562, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+60, 178645, 1, 14, 362, '0', 0, 0, 306.748443603515625, -4774.83056640625, 31.66015052795410156, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+61, 178645, 1, 14, 362, '0', 0, 0, 331.291656494140625, -4700.90087890625, 27.97008514404296875, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+62, 178645, 1, 14, 362, '0', 0, 0, 281.30328369140625, -4844.77197265625, 31.74102401733398437, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+63, 178645, 1, 14, 362, '0', 0, 0, 295.09375, -4831.6962890625, 53.01559066772460937, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+64, 178645, 1, 14, 362, '0', 0, 0, 274.056732177734375, -4831.56005859375, 31.68547248840332031, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+65, 178645, 1, 14, 362, '0', 0, 0, 330.493438720703125, -4827.38916015625, 52.98087310791015625, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+66, 178645, 1, 14, 362, '0', 0, 0, 321.23089599609375, -4839.1318359375, 52.9461517333984375, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+67, 178645, 1, 14, 362, '0', 0, 0, 348.33160400390625, -4808.31591796875, 31.74797248840332031, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+68, 178645, 1, 14, 362, '0', 0, 0, 349.2100830078125, -4706.3818359375, 27.60061836242675781, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+69, 178645, 1, 14, 362, '0', 0, 0, 340.97222900390625, -4672.0556640625, 51.5426025390625, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+70, 178645, 1, 14, 362, '0', 0, 0, 331.05035400390625, -4662.8193359375, 28.40434646606445312, 1.727874636650085449, 0, 0, 0.760405540466308593, 0.649448513984680175, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+71, 178645, 1, 14, 362, '0', 0, 0, 349.963531494140625, -4660.611328125, 27.9154815673828125, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+72, 178645, 1, 14, 362, '0', 0, 0, 357.736114501953125, -4664.99658203125, 27.96055793762207031, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+73, 178645, 1, 14, 362, '0', 0, 0, 365.701385498046875, -4684.8681640625, 27.58125686645507812, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+74, 178645, 1, 14, 362, '0', 0, 0, 353.16839599609375, -4679.66650390625, 50.8201446533203125, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+75, 178645, 1, 14, 362, '0', 0, 0, 351.463775634765625, -4821.5751953125, 31.69241714477539062, 6.003933906555175781, 0, 0, -0.13917255401611328, 0.990268170833587646, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+76, 178645, 1, 14, 362, '0', 0, 0, 324.420074462890625, -4858.029296875, 31.67157936096191406, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+77, 178645, 1, 14, 362, '0', 0, 0, 334.2528076171875, -4852.52978515625, 31.65074729919433593, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+78, 178645, 1, 14, 362, '0', 0, 0, 310.85345458984375, -4860.7333984375, 31.66463851928710937, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419, 120, 255, 1, 47213), -- Lights x3 (Area: Razor Hill - Difficulty: 0)
(@OGUID+79, 178745, 1, 14, 362, '0', 0, 0, 340.373260498046875, -4707.09375, 27.95973396301269531, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+80, 178745, 1, 14, 362, '0', 0, 0, 328.08746337890625, -4786.59228515625, 31.85213851928710937, 4.45059061050415039, 0, 0, -0.79335308074951171, 0.608761727809906005, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+81, 178745, 1, 14, 362, '0', 0, 0, 302.39410400390625, -4804.78662109375, 53.00170516967773437, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+82, 178745, 1, 14, 362, '0', 0, 0, 318.782989501953125, -4686.99658203125, 28.59206771850585937, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+83, 178745, 1, 14, 362, '0', 0, 0, 328.558868408203125, -4812.91015625, 52.98781585693359375, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+84, 178745, 1, 14, 362, '0', 0, 0, 306, -4840.72216796875, 53.03642654418945312, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+85, 178745, 1, 14, 362, '0', 0, 0, 361.552093505859375, -4675.1962890625, 27.7902374267578125, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+86, 178745, 1, 14, 362, '0', 0, 0, 349.87152099609375, -4693.48095703125, 50.8245849609375, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+87, 178745, 1, 14, 362, '0', 0, 0, 357.321197509765625, -4699.15283203125, 27.70052909851074218, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+88, 178745, 1, 14, 362, '0', 0, 0, 348.265625, -4832.28369140625, 31.76186180114746093, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+89, 178745, 1, 14, 362, '0', 0, 0, 300.28143310546875, -4857.37060546875, 31.75491714477539062, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691, 120, 255, 1, 47213), -- Lights x3, Broken (Area: Razor Hill - Difficulty: 0)
(@OGUID+90, 180844, 1, 14, 362, '0', 0, 0, 331.0538330078125, -4688.31103515625, 24.24704933166503906, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 120, 255, 1, 47213), -- Mistletoe (Area: Razor Hill - Difficulty: 0)
(@OGUID+91, 187194, 1, 14, 362, '0', 0, 0, 329.355987548828125, -4703.64990234375, 21.95319938659667968, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873, 120, 255, 1, 47213), -- Hanging, Streamer x3 - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+92, 187235, 1, 14, 362, '0', 0, 0, 256.875, -4659.2099609375, 16.21520042419433593, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+93, 187235, 1, 14, 362, '0', 0, 0, 249.5, -4719.77001953125, 15.13210010528564453, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+94, 187235, 1, 14, 362, '0', 0, 0, 278.545013427734375, -4688.89013671875, 14.17140007019042968, 0.593410074710845947, 0, 0, 0.292370796203613281, 0.95630502700805664, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+95, 187235, 1, 14, 362, '0', 0, 0, 328.204986572265625, -4677.91015625, 16.48920059204101562, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+96, 187235, 1, 14, 362, '0', 0, 0, 246.3899993896484375, -4751.75, 12.45009994506835937, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+97, 187235, 1, 14, 362, '0', 0, 0, 335.967010498046875, -4760.06982421875, 12.69839954376220703, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+98, 187235, 1, 14, 362, '0', 0, 0, 312.613006591796875, -4680.740234375, 16.14819908142089843, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+99, 187235, 1, 14, 362, '0', 0, 0, 324.305999755859375, -4703.33984375, 15.96210002899169921, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+100, 187235, 1, 14, 362, '0', 0, 0, 277.614990234375, -4642.5498046875, 19.34659957885742187, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+101, 187235, 1, 14, 362, '0', 0, 0, 351.824005126953125, -4714.06982421875, 14.50829982757568359, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
(@OGUID+102, 187235, 1, 14, 362, '0', 0, 0, 354.42401123046875, -4680, 16.48920059204101562, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Razor Hill - Difficulty: 0)
-- The Dranosh'ar Blockade
(@OGUID+103, 187235, 1, 14, 4982, '0', 0, 0, 1301.5699462890625, -4330.2998046875, 33.035400390625, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: The Dranosh'ar Blockade - Difficulty: 0)
(@OGUID+104, 187235, 1, 14, 4982, '0', 0, 0, 1304.5999755859375, -4345.02001953125, 32.999298095703125, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.95105677843093872, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: The Dranosh'ar Blockade - Difficulty: 0)
(@OGUID+105, 187567, 1, 14, 4982, '0', 0, 0, 1297.5400390625, -4337.66015625, 38.1259002685546875, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 120, 255, 1, 47213), -- Hanging, Streamer - Xmas (Area: The Dranosh'ar Blockade - Difficulty: 0)
-- Valley of Trials
(@OGUID+106, 187235, 1, 6451, 363, '0', 0, 0, -571.69000244140625, -4214.8701171875, 41.47610092163085937, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.67559051513671875, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Valley of Trials - Difficulty: 0)
(@OGUID+107, 187235, 1, 6451, 363, '0', 0, 0, -599.8289794921875, -4200.81005859375, 40.06480026245117187, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Valley of Trials - Difficulty: 0)
(@OGUID+108, 187235, 1, 6451, 363, '0', 0, 0, -607.7860107421875, -4200.10986328125, 39.90959930419921875, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Valley of Trials - Difficulty: 0)
(@OGUID+109, 187235, 1, 6451, 363, '0', 0, 0, -626.49798583984375, -4221.009765625, 38.13389968872070312, 5.6897735595703125, 0, 0, -0.29237174987792968, 0.956304728984832763, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Valley of Trials - Difficulty: 0)
(@OGUID+110, 187235, 1, 6451, 363, '0', 0, 0, -605.34100341796875, -4150.009765625, 43.62179946899414062, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Valley of Trials - Difficulty: 0)
(@OGUID+111, 187235, 1, 6451, 363, '0', 0, 0, -592.7249755859375, -4116.83984375, 44.53910064697265625, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Valley of Trials - Difficulty: 0)
(@OGUID+112, 187567, 1, 6451, 363, '0', 0, 0, -603.59600830078125, -4198.72998046875, 45.64599990844726562, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, 47213), -- Hanging, Streamer - Xmas (Area: Valley of Trials - Difficulty: 0)
-- Sen'jin Village
(@OGUID+113, 187235, 1, 14, 367, '0', 0, 0, -791.625, -4961.7099609375, 22.87039947509765625, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.80385744571685791, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+114, 187235, 1, 14, 367, '0', 0, 0, -840.02301025390625, -4929.14013671875, 20.95560073852539062, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+115, 187235, 1, 14, 367, '0', 0, 0, -776.89202880859375, -4950.43017578125, 22.24629974365234375, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+116, 187235, 1, 14, 367, '0', 0, 0, -799.989990234375, -4899.669921875, 19.44440078735351562, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+117, 187235, 1, 14, 367, '0', 0, 0, -791.83197021484375, -4915.16015625, 19.36300086975097656, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+118, 187235, 1, 14, 367, '0', 0, 0, -809.66998291015625, -4937.419921875, 22.95680046081542968, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+119, 187235, 1, 14, 367, '0', 0, 0, -831.31597900390625, -4896.85986328125, 20.02560043334960937, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+120, 187235, 1, 14, 367, '0', 0, 0, -773.5, -4941.68017578125, 22.24629974365234375, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+121, 187567, 1, 14, 367, '0', 0, 0, -834.85797119140625, -4930.39013671875, 25.55249977111816406, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755, 120, 255, 1, 47213), -- Hanging, Streamer - Xmas (Area: Sen'jin Village - Difficulty: 0)
(@OGUID+122, 187567, 1, 14, 367, '0', 0, 0, -807.3909912109375, -4934.919921875, 28.17510032653808593, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, 47213), -- Hanging, Streamer - Xmas (Area: Sen'jin Village - Difficulty: 0)
-- Echo Isles
(@OGUID+123, 187235, 1, 6453, 5691, '0', 0, 0, -1186.72998046875, -5270.2900390625, 0.852970004081726074, 0.872663915157318115, 0, 0, 0.422617912292480468, 0.906307935714721679, 120, 255, 1, 47213), -- Standing, Exterior, Medium - Xmas (Area: Darkspear Shore - Difficulty: 0)
(@OGUID+124, 187567, 1, 6453, 4875, '0', 0, 0, -1282.27001953125, -5526.9501953125, 28.05100059509277343, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544, 120, 255, 1, 47213), -- Hanging, Streamer - Xmas (Area: Darkspear Isle - Difficulty: 0)
(@OGUID+125, 187567, 1, 6453, 4866, '0', 0, 0, -1297.5400390625, -5579.14990234375, 28.13599967956542968, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 120, 255, 1, 47213), -- Hanging, Streamer - Xmas (Area: Darkspear Hold - Difficulty: 0)
(@OGUID+126, 187567, 1, 6453, 4866, '0', 0, 0, -1269.47998046875, -5572.18017578125, 24.27239990234375, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267, 120, 255, 1, 47213); -- Hanging, Streamer - Xmas (Area: Darkspear Hold - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(@EVENT, @CGUID+0),
(@EVENT, @CGUID+1);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @OGUID+0 AND @OGUID+126;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@EVENT, @OGUID+0),
(@EVENT, @OGUID+1),
(@EVENT, @OGUID+2),
(@EVENT, @OGUID+3),
(@EVENT, @OGUID+4),
(@EVENT, @OGUID+5),
(@EVENT, @OGUID+6),
(@EVENT, @OGUID+7),
(@EVENT, @OGUID+8),
(@EVENT, @OGUID+9),
(@EVENT, @OGUID+10),
(@EVENT, @OGUID+11),
(@EVENT, @OGUID+12),
(@EVENT, @OGUID+13),
(@EVENT, @OGUID+14),
(@EVENT, @OGUID+15),
(@EVENT, @OGUID+16),
(@EVENT, @OGUID+17),
(@EVENT, @OGUID+18),
(@EVENT, @OGUID+19),
(@EVENT, @OGUID+20),
(@EVENT, @OGUID+21),
(@EVENT, @OGUID+22),
(@EVENT, @OGUID+23),
(@EVENT, @OGUID+24),
(@EVENT, @OGUID+25),
(@EVENT, @OGUID+26),
(@EVENT, @OGUID+27),
(@EVENT, @OGUID+28),
(@EVENT, @OGUID+29),
(@EVENT, @OGUID+30),
(@EVENT, @OGUID+31),
(@EVENT, @OGUID+32),
(@EVENT, @OGUID+33),
(@EVENT, @OGUID+34),
(@EVENT, @OGUID+35),
(@EVENT, @OGUID+36),
(@EVENT, @OGUID+37),
(@EVENT, @OGUID+38),
(@EVENT, @OGUID+39),
(@EVENT, @OGUID+40),
(@EVENT, @OGUID+41),
(@EVENT, @OGUID+42),
(@EVENT, @OGUID+43),
(@EVENT, @OGUID+44),
(@EVENT, @OGUID+45),
(@EVENT, @OGUID+46),
(@EVENT, @OGUID+47),
(@EVENT, @OGUID+48),
(@EVENT, @OGUID+49),
(@EVENT, @OGUID+50),
(@EVENT, @OGUID+51),
(@EVENT, @OGUID+52),
(@EVENT, @OGUID+53),
(@EVENT, @OGUID+54),
(@EVENT, @OGUID+55),
(@EVENT, @OGUID+56),
(@EVENT, @OGUID+57),
(@EVENT, @OGUID+58),
(@EVENT, @OGUID+59),
(@EVENT, @OGUID+60),
(@EVENT, @OGUID+61),
(@EVENT, @OGUID+62),
(@EVENT, @OGUID+63),
(@EVENT, @OGUID+64),
(@EVENT, @OGUID+65),
(@EVENT, @OGUID+66),
(@EVENT, @OGUID+67),
(@EVENT, @OGUID+68),
(@EVENT, @OGUID+69),
(@EVENT, @OGUID+70),
(@EVENT, @OGUID+71),
(@EVENT, @OGUID+72),
(@EVENT, @OGUID+73),
(@EVENT, @OGUID+74),
(@EVENT, @OGUID+75),
(@EVENT, @OGUID+76),
(@EVENT, @OGUID+77),
(@EVENT, @OGUID+78),
(@EVENT, @OGUID+79),
(@EVENT, @OGUID+80),
(@EVENT, @OGUID+81),
(@EVENT, @OGUID+82),
(@EVENT, @OGUID+83),
(@EVENT, @OGUID+84),
(@EVENT, @OGUID+85),
(@EVENT, @OGUID+86),
(@EVENT, @OGUID+87),
(@EVENT, @OGUID+88),
(@EVENT, @OGUID+89),
(@EVENT, @OGUID+90),
(@EVENT, @OGUID+91),
(@EVENT, @OGUID+92),
(@EVENT, @OGUID+93),
(@EVENT, @OGUID+94),
(@EVENT, @OGUID+95),
(@EVENT, @OGUID+96),
(@EVENT, @OGUID+97),
(@EVENT, @OGUID+98),
(@EVENT, @OGUID+99),
(@EVENT, @OGUID+100),
(@EVENT, @OGUID+101),
(@EVENT, @OGUID+102),
(@EVENT, @OGUID+103),
(@EVENT, @OGUID+104),
(@EVENT, @OGUID+105),
(@EVENT, @OGUID+106),
(@EVENT, @OGUID+107),
(@EVENT, @OGUID+108),
(@EVENT, @OGUID+109),
(@EVENT, @OGUID+110),
(@EVENT, @OGUID+111),
(@EVENT, @OGUID+112),
(@EVENT, @OGUID+113),
(@EVENT, @OGUID+114),
(@EVENT, @OGUID+115),
(@EVENT, @OGUID+116),
(@EVENT, @OGUID+117),
(@EVENT, @OGUID+118),
(@EVENT, @OGUID+119),
(@EVENT, @OGUID+120),
(@EVENT, @OGUID+121),
(@EVENT, @OGUID+122),
(@EVENT, @OGUID+123),
(@EVENT, @OGUID+124),
(@EVENT, @OGUID+125),
(@EVENT, @OGUID+126);