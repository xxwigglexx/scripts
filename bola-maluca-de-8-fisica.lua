-- Bola Maluca de 8: fisica do jogo (fontes decompiladas de ReplicatedStorage.Shared).
-- Arquivo carregado pelo hub (predLoadPhysics). Gerado por ferramentas_bola8/embutir_fisica.py.
-- versao: c18773d332
return {
    ["Config"] = [=====[
local t1 = {
    Table = {
        SizeFeet = 9,
        Sizes = {
            [7] = {
                Length = 78,
                Width = 39
            },
            [8] = {
                Length = 88,
                Width = 44
            },
            [9] = {
                Length = 100,
                Width = 50
            }
        },
        LengthInches = 0,
        WidthInches = 0,
        StudsPerInch = 0.16,
        SurfaceHeightStuds = 2.9,
        SurfaceHeightInches = 0,
        RailWidthInches = 7,
        RailHeightBallFraction = 0.8,
        RailTopInches = 2.08,
        PocketCastingTopInches = 2.28,
        PocketCastingReachInches = 4,
        PocketCastingBlendInches = 1,
        CushionWidthInches = 1.8,
        CushionHeightBallFraction = 0.8,
        CushionOverlapInches = 0.4,
        BedThicknessInches = 2,
        CornerMouthBallFraction = 2,
        SideMouthBallFraction = 2.2,
        FacingLengthInches = 1.6,
        CornerFacingDegrees = 38,
        SideFacingDegrees = 13,
        JawRadiusInches = 0.3,
        PocketOpeningMouthFraction = 1,
        CornerShelfBallFraction = 0.6666666666666666,
        CornerShelfInches = 0,
        PocketShelfBallRadii = 0.9,
        PocketTipMinDegrees = 1.5,
        PocketDropDepthInches = 5,
        MinPocketDepthInches = 6.5,
        PocketFunnelAccel = 900,
        PocketDragPerSecond = 5,
        PocketWallRestitution = 0.25,
        RailHeightInches = 0,
        CushionHeightInches = 0,
        CornerMouthInches = 0,
        SideMouthInches = 0,
        CornerPocketRadiusInches = 0,
        SidePocketRadiusInches = 0,
        SidePocketInsetInches = 0,
        HeadStringFraction = 0.25,
        FootSpotFraction = 0.25
    },
    Balls = {
        RadiusInches = 1.125,
        RenderScale = 1.08,
        RenderRadiusInches = 0,
        MassOunces = 6,
        Reflectance = 0.04,
        RotationRenormaliseSteps = 512,
        DoubleSided = false,
        MeshTemplate = "BallMesh",
        Colors = {
            [0] = { 245, 240, 225 },
            [1] = { 250, 200, 40 },
            [2] = { 30, 80, 200 },
            [3] = { 210, 40, 40 },
            [4] = { 100, 40, 150 },
            [5] = { 245, 120, 30 },
            [6] = { 12, 92, 52 },
            [7] = { 120, 30, 30 },
            [8] = { 20, 20, 22 }
        },
        SmoothRender = {
            Enabled = true,
            SnapInches = 4
        },
        Textures = {
            [0] = "rbxassetid://86825559129906",
            [1] = "rbxassetid://133794362813004",
            [2] = "rbxassetid://115640228515562",
            [3] = "rbxassetid://71634972299335",
            [4] = "rbxassetid://102547838391993",
            [5] = "rbxassetid://132260486678576",
            [6] = "rbxassetid://103480111027469",
            [7] = "rbxassetid://85399541656812",
            [8] = "rbxassetid://139487783589064",
            [9] = "rbxassetid://92953629012840",
            [10] = "rbxassetid://125354706638427",
            [11] = "rbxassetid://80865252504873",
            [12] = "rbxassetid://139601741020258",
            [13] = "rbxassetid://127747571775456",
            [14] = "rbxassetid://71960739423576",
            [15] = "rbxassetid://136241349086894"
        },
        Decals = {
            StripeBand = "rbxassetid://134967770793162",
            Numbers = {
                "rbxassetid://122007386899145",
                "rbxassetid://113307385292300",
                "rbxassetid://78814354093891",
                "rbxassetid://108148105263771",
                "rbxassetid://79854355350181",
                "rbxassetid://71914329661380",
                "rbxassetid://86541103118320",
                "rbxassetid://118343664836744",
                "rbxassetid://77964766565740",
                "rbxassetid://139144048965936",
                "rbxassetid://80906907224369",
                "rbxassetid://128812375373796",
                "rbxassetid://111068179963368",
                "rbxassetid://137544599948534",
                "rbxassetid://83279339054393"
            }
        }
    },
    Physics = {
        FixedStep = 0.004166666666666667,
        Gravity = 386.09,
        SlidingFriction = 0.2,
        RollingFriction = 0.0125,
        ClothPresets = {
            slow = 0.015,
            medium = 0.012,
            fast = 0.008
        },
        SideSpinDecel = 10.9,
        BallRestitution = 0.95,
        BallFrictionTable = {
            {
                Speed = 0,
                Friction = 0.118
            },
            {
                Speed = 20,
                Friction = 0.072
            },
            {
                Speed = 40,
                Friction = 0.046
            },
            {
                Speed = 80,
                Friction = 0.022
            },
            {
                Speed = 120,
                Friction = 0.014
            },
            {
                Speed = 200,
                Friction = 0.01
            }
        },
        BallSlipEpsilon = 1E-09,
        RailRestitution = 0.85,
        RailRestitutionBySpeed = {
            {
                Speed = 20,
                Restitution = 0.9
            },
            {
                Speed = 300,
                Restitution = 0.6
            }
        },
        CushionNoseBallFraction = 0.635,
        CushionNoseHeightInches = 0,
        RailFriction = 0.2,
        ShotMaterials = {
            SuperBounce = {
                RailRestitution = 1,
                RailFriction = 0
            }
        },
        SeedPlaces = 1E+06,
        Version = "p1-9c6645964eb46928",
        RestSpeed = 0.25,
        SlideEpsilon = 1E-04,
        MaxShotSeconds = 40,
        MaxEventsPerStep = 200,
        MaxInstantHits = 24,
        InstantHitSeconds = 1E-07,
        ContactSlop = 1E-05,
        SlateRestitution = 0.6,
        SlateFriction = 0.2,
        ClothHopLossSpeed = 0,
        MinHopSpeed = 8,
        FlatStrikeBounce = 0.4,
        PerchSpeed = 6,
        PerchSlideSpeed = 6,
        AirStepSeconds = 0.0004166666666666667,
        BallContactMicroseconds = 200,
        BallContactReferenceSpeed = 100,
        ClusterGapInches = 0.02,
        SoftContactStep = 2E-06,
        SoftContactMaxSeconds = 0.003,
        SoftContactMaxHopInches = 0.5,
        SoftContactSkinInches = 0.05
    },
    Cue = {
        MaxSpeed = 440,
        MinSpeed = 15,
        StickMassOunces = 19,
        TipRestitution = 0.73,
        EndmassRatio = 25,
        SideSpinBendsPath = false,
        MinStickSpeed = 0,
        MaxStickSpeed = 0,
        PowerCurve = 2.6,
        PowerMode = "Anchors",
        PowerAnchors = {
            { 0.04, 15 },
            { 0.1, 27 },
            { 0.3, 60 },
            { 0.5, 100 },
            { 0.75, 180 },
            { 1, 440 }
        },
        MaxSpinOffset = 0.5,
        CueLengthStuds = 7,
        CueButtDiameterStuds = 0.36,
        CueTipDiameterStuds = 0.09,
        Profile = {
            {
                To = 0.012,
                Taper = 0,
                Look = "Tip"
            },
            {
                To = 0.3,
                Taper = 0.05537037037037,
                Look = "Shaft"
            },
            {
                To = 0.3625,
                Taper = 0.37055555555556,
                Look = "Shaft"
            },
            {
                To = 0.425,
                Taper = 0.4613818359375,
                Look = "Shaft"
            },
            {
                To = 0.4875,
                Taper = 0.5752025462963,
                Look = "Shaft"
            },
            {
                To = 0.55,
                Taper = 0.69552029079861,
                Look = "Shaft"
            },
            {
                To = 0.78,
                Taper = 0.79875,
                Look = "Butt"
            },
            {
                To = 1,
                Taper = 1,
                Look = "Butt"
            }
        },
        CueRestGapInches = 2.5,
        CuePullBackStuds = 1.3,
        CueElevationDegrees = 4,
        MaxElevationDegrees = 60,
        ElevationStepDegrees = 1,
        JumpMaxStickSpeed = 211,
        JumpCapDegrees = 15,
        VisualPitchMaxDegrees = 45,
        VisualRailClearanceInches = 0.2,
        VisualBallClearanceInches = 0.2,
        VisualPitchScanStepDegrees = 0.5,
        VisualPitchBisections = 20,
        VisualPitchRiseSeconds = 0.03,
        VisualPitchFallSeconds = 0.12,
        CameraFadeStuds = 1.5,
        RaisedCueFade = 0.95,
        RaisedFxOffDegrees = 2,
        DefaultStyle = "Classic",
        EquippedAttribute = "EquippedCue",
        BandSnap = 0.012,
        MeshSkinsFolder = "CueSkins",
        Back = {
            TiltDegrees = 36,
            OutStuds = 0.35,
            GripFromTipStuds = 4.3,
            MinButtHeightStuds = 0.8,
            SeatedExtraTiltDegrees = 30,
            MaxDistanceStuds = 90,
            PoolSize = 12,
            RefreshSeconds = 0.3,
            FirstPersonStuds = 1
        }
    },
}

local Table = t1.Table
local v1 = Table.Sizes[Table.SizeFeet]

Table.LengthInches = v1.Length
Table.WidthInches = v1.Width
Table.SurfaceHeightInches = Table.SurfaceHeightStuds / Table.StudsPerInch

local v2 = t1.Balls.RadiusInches * 2

t1.Balls.RenderRadiusInches = t1.Balls.RadiusInches * t1.Balls.RenderScale
Table.RailHeightInches = Table.RailHeightBallFraction * v2
Table.CushionHeightInches = Table.CushionHeightBallFraction * v2
Table.CornerMouthInches = Table.CornerMouthBallFraction * v2
Table.SideMouthInches = Table.SideMouthBallFraction * v2
Table.CornerPocketRadiusInches = Table.CornerMouthInches / 2 * Table.PocketOpeningMouthFraction
Table.SidePocketRadiusInches = Table.SideMouthInches / 2 * Table.PocketOpeningMouthFraction
Table.SidePocketInsetInches = Table.SideMouthInches / 2
Table.CornerShelfInches = Table.CornerShelfBallFraction * v2
t1.Physics.CushionNoseHeightInches = t1.Physics.CushionNoseBallFraction * v2

local Cue = t1.Cue
local v3 = t1.Balls.MassOunces / Cue.StickMassOunces
local v4 = math.rad(Cue.CueElevationDegrees)
local v5 = 1 + v3 + 2.5 * math.sin(v4) ^ 2
local v7 = (math.sqrt(1 - (1 - ((1 - v3 * Cue.TipRestitution) ^ 2 + v3 * (1 + Cue.TipRestitution) ^ 2) / (1 + v3) ^ 2) / v3 * v5) + 1) / v5 * math.cos(v4)
local v8 = Cue.MinSpeed / v7
local v9 = Cue.MaxSpeed / v7

Cue.MinStickSpeed = v8
Cue.MaxStickSpeed = v9

return t1
]=====],
    ["Physics.PowerShare"] = [=====[
-- https://lua.expert

local t1 = {}

local function anchorSpeed(p1, p2) -- line: 26
    if p2 <= p1[1][1] then
        return p1[1][2]
    end

    for i = 2, #p1 do
        local v1 = p1[i - 1]
        local v2 = p1[i]

        if p2 <= v2[1] then
            local v3 = (p2 - v1[1]) / (v2[1] - v1[1])

            return v1[2] * (v2[2] / v1[2]) ^ v3
        end
    end

    return p1[#p1][2]
end

function t1.share(p3, p4) -- line: 41
    -- upvalues: anchorSpeed (copy)
    local v4 = math.clamp(p4, 0, 1)

    if p3.PowerMode == "Curve" then
        return v4 ^ p3.PowerCurve
    end

    return (math.clamp((anchorSpeed(p3.PowerAnchors, v4) - p3.MinSpeed) / (p3.MaxSpeed - p3.MinSpeed), 0, 1))
end

function t1.power(p5, p6) -- line: 52
    local v6 = math.clamp(p6, 0, 1)

    if p5.PowerMode == "Curve" then
        return v6 ^ (1 / p5.PowerCurve)
    end

    local PowerAnchors = p5.PowerAnchors
    local v7 = p5.MinSpeed + v6 * (p5.MaxSpeed - p5.MinSpeed)

    if v7 <= PowerAnchors[1][2] then
        return PowerAnchors[1][1]
    end

    for i = 2, #PowerAnchors do
        local v8 = PowerAnchors[i - 1]
        local v9 = PowerAnchors[i]

        if v7 <= v9[2] then
            local v13 = math.log(v7 / v8[2]) / math.log(v9[2] / v8[2])

            return v8[1] + v13 * (v9[1] - v8[1])
        end
    end

    return PowerAnchors[#PowerAnchors][1]
end

return t1
]=====],
    ["Physics.Ball"] = [=====[
-- https://lua.expert

local t1 = {
    new = function(p1, p2, p3) -- new | line: 44
        return {
            z = 0,
            vx = 0,
            vy = 0,
            vz = 0,
            wx = 0,
            wy = 0,
            wz = 0,
            pocketed = false,
            offTable = false,
            falling = false,
            pocket = nil,
            tip = nil,
            id = p1,
            x = p2,
            y = p3
        }
    end,
    clone = function(p4) -- clone | line: 64
        return {
            id = p4.id,
            x = p4.x,
            y = p4.y,
            z = p4.z,
            vx = p4.vx,
            vy = p4.vy,
            vz = p4.vz,
            wx = p4.wx,
            wy = p4.wy,
            wz = p4.wz,
            pocketed = p4.pocketed,
            offTable = p4.offTable,
            falling = p4.falling,
            pocket = p4.pocket,
            tip = if p4.tip then table.clone(p4.tip) else nil
        }
    end
}

function t1.cloneList(p5) -- line: 84
    -- upvalues: t1 (copy)
    local v1 = table.create(#p5)

    for v2, v3 in p5 do
        v1[v2] = t1.clone(v3)
    end

    return v1
end

function t1.speed(p6) -- line: 92
    return (math.sqrt(p6.vx * p6.vx + p6.vy * p6.vy))
end

function t1.isMoving(p7) -- line: 99
    if p7.pocketed then
        return p7.falling
    end

    if p7.vx ~= 0 or p7.vy ~= 0 or p7.wx ~= 0 or p7.wy ~= 0 or p7.z > 0 then
        return true
    end

    return p7.vz ~= 0
end

function t1.stop(p8) -- line: 106
    p8.vx = 0
    p8.vy = 0
    p8.vz = 0
    p8.wx = 0
    p8.wy = 0
    p8.wz = 0
end

function t1.kineticEnergy(p9, p10, p11) -- line: 112
    if p9.pocketed then
        return 0
    end

    return (p9.vx * p9.vx + p9.vy * p9.vy + p9.vz * p9.vz) * 0.5 + (p11 or 0) * p9.z + p10 * 0.4 * p10 * 0.5 * (p9.wx * p9.wx + p9.wy * p9.wy + p9.wz * p9.wz)
end

return t1
]=====],
    ["Physics.Collision"] = [=====[
-- https://lua.expert

return {
    segmentTOI = function(p1, p2, p3, p4, p5, p6, p7) -- segmentTOI | line: 13
        local v1 = p3 * p6.nx + p4 * p6.ny

        if v1 >= 0 then
            return nil
        end

        local v2 = (p1 - p6.ax) * p6.nx + (p2 - p6.ay) * p6.ny

        if v2 < 0 then
            return nil
        end

        local v3 = if v2 <= p5 then 0 else (v2 - p5) / -v1

        if p7 < v3 then
            return nil
        end

        local v4 = p1 + p3 * v3 - p5 * p6.nx
        local v5 = p2 + p4 * v3 - p5 * p6.ny
        local v6 = p6.bx - p6.ax
        local v7 = p6.by - p6.ay
        local v8 = ((v4 - p6.ax) * v6 + (v5 - p6.ay) * v7) / (v6 * v6 + v7 * v7)

        return if not (v8 < 0) and not (v8 > 1) then v3 else nil
    end,
    pointTOI = function(p8, p9, p10, p11, p12, p13, p14, p15, p16) -- pointTOI | line: 50
        local v9 = p8 - p13
        local v10 = p9 - p14
        local v11 = (v9 * p10 + v10 * p11) * 2

        if v11 >= 0 then
            return nil, 0, 0
        end

        local v12 = p10 * p10 + p11 * p11

        if v12 <= 0 then
            return nil, 0, 0
        end

        local v13 = p12 + p15
        local v14 = v9 * v9 + v10 * v10 - v13 * v13
        local v15

        if v14 <= 0 then
            v15 = 0
        else
            local v16 = v11 * v11 - v12 * 4 * v14

            if v16 < 0 then
                return nil, 0, 0
            end

            v15 = (-v11 - math.sqrt(v16)) / (v12 * 2)
        end

        if p16 < v15 then
            return nil, 0, 0
        end

        local v17 = p8 + p10 * v15 - p13
        local v18 = p9 + p11 * v15 - p14
        local v20 = math.sqrt(v17 * v17 + v18 * v18)

        if v20 < 1E-12 then
            return nil, 0, 0
        end

        return v15, v17 / v20, v18 / v20
    end,
    circleTOI = function(p17, p18, p19, p20, p21, p22, p23, p24, p25, p26) -- circleTOI | line: 94
        local v21 = p17 - p21
        local v22 = p18 - p22
        local v23 = p19 - p23
        local v24 = p20 - p24
        local v25 = (v21 * v23 + v22 * v24) * 2

        if v25 >= 0 then
            return nil
        end

        local v26 = v23 * v23 + v24 * v24

        if v26 <= 0 then
            return nil
        end

        local v27 = p25 * 2
        local v28 = v21 * v21 + v22 * v22 - v27 * v27
        local v29

        if v28 <= 0 then
            v29 = 0
        else
            local v30 = v25 * v25 - v26 * 4 * v28

            if v30 < 0 then
                return nil
            end

            v29 = (-v25 - math.sqrt(v30)) / (v26 * 2)
        end

        return if not (p26 < v29) then v29 else nil
    end,
    sphereTOI = function(p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39, p40) -- sphereTOI | line: 137
        local v31 = p27 - p33
        local v32 = p28 - p34
        local v33 = p29 - p35
        local v34 = p30 - p36
        local v35 = p31 - p37
        local v36 = p32 - p38
        local v37 = (v31 * v34 + v32 * v35 + v33 * v36) * 2

        if v37 >= 0 then
            return nil
        end

        local v38 = v34 * v34 + v35 * v35 + v36 * v36

        if v38 <= 0 then
            return nil
        end

        local v39 = p39 * 2
        local v40 = v31 * v31 + v32 * v32 + v33 * v33 - v39 * v39
        local v41

        if v40 <= 0 then
            v41 = 0
        else
            local v42 = v37 * v37 - v38 * 4 * v40

            if v42 < 0 then
                return nil
            end

            v41 = (-v37 - math.sqrt(v42)) / (v38 * 2)
        end

        return if not (p40 < v41) then v41 else nil
    end
}
]=====],
    ["Physics.Flight"] = [=====[
-- https://lua.expert

local Config = require(script.Parent.Parent.Config)

require(script.Parent.Ball)

local t1 = {
    isAirborne = function(p1) -- isAirborne | line: 22
        return not p1.pocketed and (p1.z > 0 or p1.vz > 0)
    end
}

function t1.landingTime(p2, p3) -- line: 27
    -- upvalues: Config (copy)
    local Gravity = Config.Physics.Gravity

    return (p3 + math.sqrt((math.max(0, p3 * p3 + 2 * Gravity * math.max(p2, 0))))) / Gravity
end

function t1.fly(p4, p5) -- line: 34
    -- upvalues: Config (copy), t1 (copy)
    local Gravity = Config.Physics.Gravity
    local v3 = t1.landingTime(p4.z, p4.vz)
    local v4 = math.min(v3, p5)

    p4.x += p4.vx * v4
    p4.y += p4.vy * v4

    if v3 <= p5 then
        p4.vz -= Gravity * v3
        p4.z = 0
    else
        p4.z = math.max(0, p4.z + p4.vz * v4 - 0.5 * Gravity * v4 * v4)
        p4.vz -= Gravity * v4
    end

    return v4
end

function t1.floorTime(p6, p7) -- line: 53
    -- upvalues: Config (copy)
    local Gravity = Config.Physics.Gravity
    local v6 = math.max(p6, 0) + Config.Table.SurfaceHeightInches

    return (p7 + math.sqrt((math.max(0, p7 * p7 + 2 * Gravity * v6)))) / Gravity
end

function t1.slate(p8, p9, p10, p11, p12) -- line: 66
    -- upvalues: Config (copy)
    local Physics = Config.Physics
    local v9 = (p11 or Physics.SlateRestitution) * p9 - Physics.ClothHopLossSpeed
    local v10 = Physics.MinHopSpeed <= v9

    p8.z = 0
    p8.vz = 0

    if not (v10 or p10) then
        return false
    end

    local RadiusInches = Config.Balls.RadiusInches
    local v11 = p9 + (if v10 then v9 else 0)
    local v12 = p8.vx - RadiusInches * p8.wy
    local v13 = p8.vy + RadiusInches * p8.wx
    local v15 = math.sqrt(v12 * v12 + v13 * v13)

    if Physics.SlideEpsilon < v15 then
        local v18 = math.min(v15 / 3.5, (p12 or Physics.SlateFriction) * v11)
        local v19 = v12 / v15
        local v20 = v13 / v15

        p8.vx -= v18 * v19
        p8.vy -= v18 * v20
        p8.wx -= v18 * 2.5 * v20 / RadiusInches
        p8.wy += v18 * 2.5 * v19 / RadiusInches
    end

    if v10 then
        p8.vz = v9
    end

    return v10
end

return t1
]=====],
    ["Physics.Table"] = [=====[
-- https://lua.expert

local Config = require(script.Parent.Parent.Config)
local t1 = {}

local function segment(p1, p2, p3, p4, p5, p6, p7) -- line: 49
    return {
        ax = p1,
        ay = p2,
        bx = p3,
        by = p4,
        nx = p5,
        ny = p6,
        name = p7
    }
end

local function point(p8, p9, p10, p11) -- line: 61
    return {
        x = p8,
        y = p9,
        radius = p10,
        name = p11
    }
end

local function buildClosed(p12) -- line: 65
    local halfLength, halfWidth = p12.halfLength, p12.halfWidth

    p12.segments = {
        {
            nx = 0,
            ny = -1,
            name = "top",
            ax = -halfLength,
            ay = halfWidth,
            bx = halfLength,
            by = halfWidth
        },
        {
            nx = 0,
            ny = 1,
            name = "bottom",
            ax = -halfLength,
            ay = -halfWidth,
            bx = halfLength,
            by = -halfWidth
        },
        {
            nx = -1,
            ny = 0,
            name = "foot",
            ax = halfLength,
            ay = -halfWidth,
            bx = halfLength,
            by = halfWidth
        },
        {
            nx = 1,
            ny = 0,
            name = "head",
            ax = -halfLength,
            ay = -halfWidth,
            bx = -halfLength,
            by = halfWidth
        }
    }
    p12.points = {
        {
            radius = 0,
            name = "corner",
            x = -halfLength,
            y = -halfWidth
        },
        {
            radius = 0,
            name = "corner",
            x = halfLength,
            y = -halfWidth
        },
        {
            radius = 0,
            name = "corner",
            x = halfLength,
            y = halfWidth
        },
        {
            radius = 0,
            name = "corner",
            x = -halfLength,
            y = halfWidth
        }
    }
end

local function buildOpen(p13) -- line: 81
    -- upvalues: Config (copy)
    local Table = Config.Table
    local halfLength, halfWidth = p13.halfLength, p13.halfWidth
    local JawRadiusInches, FacingLengthInches = Table.JawRadiusInches, Table.FacingLengthInches
    local v1 = Table.CornerMouthInches / 1.4142135623730951
    local v2 = Table.SideMouthInches / 2
    local v3 = math.rad(Table.CornerFacingDegrees)
    local v4 = math.rad(Table.SideFacingDegrees)
    local v5 = Table.CornerShelfInches / 1.4142135623730951
    local CornerPocketRadiusInches = Table.CornerPocketRadiusInches
    local v6 = -v1 - v5
    local v7 = -v5
    local v8 = v6 * math.cos(v3) + v7 * math.sin(v3)
    local v11 = -v8 - math.sqrt(v8 * v8 - (v6 * v6 + v7 * v7 - CornerPocketRadiusInches * CornerPocketRadiusInches))

    local function addFacing(p14, p15, p16, p17, p18, p19, p20, p21) -- line: 105
        -- upvalues: p13 (copy), JawRadiusInches (copy), FacingLengthInches (copy)
        p21 = p21 or FacingLengthInches

        local v13 = p14 + p16 * p21
        local v14 = p15 + p17 * p21

        table.insert(p13.segments, {
            ax = p14,
            ay = p15,
            bx = v13,
            by = v14,
            nx = p18,
            ny = p19,
            name = p20
        })
        table.insert(p13.points, {
            radius = 0,
            x = p14,
            y = p15,
            name = p20 .. "Nose"
        })
        table.insert(p13.points, {
            x = v13,
            y = v14,
            radius = JawRadiusInches,
            name = p20 .. "Jaw"
        })
    end

    for _, v15 in { 1, -1 } do
        local v16 = -v15
        local v17 = if v15 > 0 then "top" else "bottom"

        table.insert(p13.segments, {
            nx = 0,
            ax = -halfLength + v1,
            ay = v15 * halfWidth,
            bx = -v2,
            by = v15 * halfWidth,
            ny = v16,
            name = v17 .. "Left"
        })
        table.insert(p13.segments, {
            nx = 0,
            ax = v2,
            ay = v15 * halfWidth,
            bx = halfLength - v1,
            by = v15 * halfWidth,
            ny = v16,
            name = v17 .. "Right"
        })
        addFacing(-v2, v15 * halfWidth, -math.sin(v4), v15 * math.cos(v4), math.cos(v4), v15 * math.sin(v4), v17 .. "SideL")
        addFacing(v2, v15 * halfWidth, math.sin(v4), v15 * math.cos(v4), -math.cos(v4), v15 * math.sin(v4), v17 .. "SideR")

        for _, v18 in { 1, -1 } do
            addFacing(v18 * (halfLength - v1), v15 * halfWidth, v18 * math.cos(v3), v15 * math.sin(v3), v18 * math.sin(v3), -v15 * math.cos(v3), v17 .. "Corner" .. (v18 > 0 and "R" or "L"), v11)
        end
    end

    for _, v19 in { 1, -1 } do
        local v20 = -v19
        local v21 = if v19 > 0 then "foot" else "head"

        table.insert(p13.segments, {
            ny = 0,
            ax = v19 * halfLength,
            ay = -halfWidth + v1,
            bx = v19 * halfLength,
            by = halfWidth - v1,
            nx = v20,
            name = v21
        })

        for _, v22 in { 1, -1 } do
            addFacing(v19 * halfLength, v22 * (halfWidth - v1), v19 * math.sin(v3), v22 * math.cos(v3), -v19 * math.cos(v3), v22 * math.sin(v3), v21 .. "Corner" .. (v22 > 0 and "T" or "B"), v11)
        end
    end

    local v23 = halfLength + v5
    local v24 = halfWidth + v5
    local SidePocketInsetInches, SidePocketRadiusInches = Table.SidePocketInsetInches, Table.SidePocketRadiusInches

    p13.pockets = {
        {
            id = 1,
            name = "topLeft",
            x = -v23,
            y = v24,
            radius = CornerPocketRadiusInches
        },
        {
            id = 2,
            x = 0,
            name = "topSide",
            y = halfWidth + SidePocketInsetInches,
            radius = SidePocketRadiusInches
        },
        {
            id = 3,
            name = "topRight",
            x = v23,
            y = v24,
            radius = CornerPocketRadiusInches
        },
        {
            id = 4,
            name = "bottomRight",
            x = v23,
            y = -v24,
            radius = CornerPocketRadiusInches
        },
        {
            id = 5,
            x = 0,
            name = "bottomSide",
            y = -halfWidth - SidePocketInsetInches,
            radius = SidePocketRadiusInches
        },
        {
            id = 6,
            name = "bottomLeft",
            x = -v23,
            y = -v24,
            radius = CornerPocketRadiusInches
        }
    }
end

function t1.build(p22) -- line: 202
    -- upvalues: Config (copy), buildClosed (copy), buildOpen (copy)
    local Table = Config.Table
    local v25 = not p22 or p22.pocketsOpen == nil or p22.pocketsOpen
    local t8 = {
        halfLength = Table.LengthInches / 2,
        halfWidth = Table.WidthInches / 2,
        pocketsOpen = v25,
        segments = {},
        points = {},
        pockets = {}
    }

    if v25 then
        buildOpen(t8)
    else
        buildClosed(t8)
    end

    return t8
end

function t1.containsCenter(p23, p24, p25, p26) -- line: 222
    p26 = p26 or 0

    if math.abs(p24) <= p23.halfLength + p26 then
        return math.abs(p25) <= p23.halfWidth + p26
    end

    return false
end

function t1.openingAt(p27, p28, p29) -- line: 233
    -- upvalues: Config (copy)
    if not p27.pocketsOpen then
        return nil
    end

    local Table = Config.Table
    local v27 = math.max(Table.CornerPocketRadiusInches, Table.SidePocketRadiusInches)

    if not (math.abs(p28) < p27.halfLength - v27 and math.abs(p29) < p27.halfWidth - v27) then
        for _, v28 in p27.pockets do
            local v29 = p28 - v28.x
            local v30 = p29 - v28.y

            if math.sqrt(v29 * v29 + v30 * v30) <= v28.radius then
                return v28
            end
        end
    end

    return nil
end

function t1.pocketAt(p30, p31, p32) -- line: 261
    -- upvalues: Config (copy), t1 (copy)
    if not p30.pocketsOpen then
        return nil
    end

    local Table = Config.Table
    local v32 = math.max(Table.CornerPocketRadiusInches, Table.SidePocketRadiusInches)

    if math.abs(p31) < p30.halfLength - v32 and math.abs(p32) < p30.halfWidth - v32 then
        return nil
    end

    local n1 = 1e999
    local v33

    for _, v34 in p30.pockets do
        local v35 = p31 - v34.x
        local v36 = p32 - v34.y
        local v38 = math.sqrt(v35 * v35 + v36 * v36)

        if v38 <= v34.radius then
            return v34
        end

        if v38 < n1 then
            n1 = v38
            v33 = v34
        end
    end

    local v39 = Table.PocketShelfBallRadii * Config.Balls.RadiusInches + Table.CornerShelfInches / 1.4142135623730951

    return if not t1.containsCenter(p30, p31, p32, v39) then v33 else nil
end

function t1.headSpot(p33) -- line: 298
    -- upvalues: Config (copy)
    return -p33.halfLength + Config.Table.HeadStringFraction * p33.halfLength * 2, 0
end

function t1.footSpot(p34) -- line: 302
    -- upvalues: Config (copy)
    return p34.halfLength - Config.Table.FootSpotFraction * p34.halfLength * 2, 0
end

return t1
]=====],
    ["Physics.Cluster"] = [=====[
-- https://lua.expert

local Config = require(script.Parent.Parent.Config)
local Ball = require(script.Parent.Ball)
local Flight = require(script.Parent.Flight)

require(script.Parent.Table)

local t1 = {}

function t1.ballFriction(p1) -- line: 56
    -- upvalues: Config (copy)
    local BallFrictionTable = Config.Physics.BallFrictionTable

    if p1 <= BallFrictionTable[1].Speed then
        return BallFrictionTable[1].Friction
    end

    for i = 2, #BallFrictionTable do
        local v1 = BallFrictionTable[i]

        if p1 <= v1.Speed then
            local v2 = BallFrictionTable[i - 1]
            local v3 = (p1 - v2.Speed) / (v1.Speed - v2.Speed)

            return v2.Friction + v3 * (v1.Friction - v2.Friction)
        end
    end

    return BallFrictionTable[#BallFrictionTable].Friction
end

function t1.frictionImpulse(p2, p3, p4, p5, p6, p7, p8, p9) -- line: 79
    -- upvalues: Config (copy), t1 (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local v4 = -p2 * p8 + p3 * p7 + RadiusInches * p6
    local v5 = RadiusInches * (p4 * p8 - p5 * p7)
    local v7 = math.sqrt(v4 * v4 + v5 * v5)

    if Config.Physics.BallSlipEpsilon < v7 then
        local v10 = math.min(t1.ballFriction(v7) * p9, v7 / 7)

        return -v10 * v4 / v7, -v10 * v5 / v7
    end

    return 0, 0
end

local n1 = 0
local n2 = 0
local t2 = {}
local v11

local function material() -- line: 114
    -- upvalues: Config (copy), Ball (copy), n1 (ref), n2 (ref), t2 (ref), v11 (ref)
    local Physics = Config.Physics
    local t3 = {
        Physics.BallContactMicroseconds,
        Physics.BallContactReferenceSpeed,
        Physics.BallRestitution,
        Physics.SoftContactStep,
        Physics.SoftContactMaxSeconds,
        Config.Balls.RadiusInches
    }
    local v12 = #t2 == #t3

    for v13, v14 in t3 do
        v12 = v12 and t2[v13] == v14
    end

    if v12 then
        return
    end

    t2 = t3

    local v15 = Physics.BallContactMicroseconds * 1E-06 / 2.9432

    n1 = math.sqrt(0.25 / (Physics.BallContactReferenceSpeed * v15 * v15 * v15 * v15 * v15))

    local RadiusInches = Config.Balls.RadiusInches
    local BallContactReferenceSpeed = Physics.BallContactReferenceSpeed

    local function restitution(p10) -- line: 140
        -- upvalues: RadiusInches (copy), BallContactReferenceSpeed (copy), Ball (copy), n2 (ref), v11 (ref)
        n2 = p10

        local v17 = Ball.new(0, 0, 0)
        local v18 = Ball.new(1, 2 * RadiusInches, 0)

        v17.vx = BallContactReferenceSpeed
        v11({ v17, v18 }, v17, v18, 0, nil)

        return (v18.vx - v17.vx) / BallContactReferenceSpeed
    end

    local BallRestitution = Physics.BallRestitution

    if restitution(0) <= BallRestitution then
        n2 = 0
    else
        local v20 = 0
        local v21 = math.sqrt(n1)

        while BallRestitution < restitution(v21) do
            v20 = v21
            v21 *= 2
        end

        for _ = 1, 48 do
            local v22 = (v20 + v21) / 2

            if BallRestitution < restitution(v22) then
                v20 = v22
            else
                v21 = v22
            end
        end

        n2 = (v20 + v21) / 2
    end
end

function t1.touchesAnother(p11, p12, p13, p14) -- line: 174
    -- upvalues: Config (copy)
    local v23 = 2 * Config.Balls.RadiusInches + Config.Physics.ClusterGapInches
    local v24 = v23 * v23

    for _, v25 in p11 do
        if v25 ~= p12 and v25 ~= p13 and not v25.pocketed and (not p14 or not p14[v25]) then
            local v30 = v25.x - p12.x
            local v31 = v25.y - p12.y
            local v32 = v25.x - p13.x
            local v33 = v25.y - p13.y

            if v30 * v30 + v31 * v31 <= v24 or v32 * v32 + v33 * v33 <= v24 then
                return true
            end
        end
    end

    return false
end

local function groupEnergy(p15) -- line: 195
    -- upvalues: Config (copy), Ball (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local n3 = 0

    for _, v34 in p15 do
        n3 += Ball.kineticEnergy(v34, RadiusInches)
    end

    return n3
end

function t1.gather(p16, p17, p18, p19, p20, p21) -- line: 216
    -- upvalues: Config (copy), Ball (copy), Flight (copy)
    local Physics = Config.Physics
    local RadiusInches = Config.Balls.RadiusInches
    local SoftContactMaxSeconds = Physics.SoftContactMaxSeconds
    local t4 = {
        [p17] = true,
        [p18] = true
    }
    local t5 = {
        p17,
        p18
    }
    local v35 = Ball.kineticEnergy(p17, RadiusInches) + Ball.kineticEnergy(p18, RadiusInches)
    local v36 = true

    while v36 do
        local v38 = math.sqrt(2 * v35)

        v36 = false

        for _, v39 in p16 do
            if not (t4[v39] or v39.pocketed or p20 and p20[v39]) then
                local v42 = 2 * RadiusInches + math.max(Physics.ClusterGapInches, (v38 + Ball.speed(v39)) * SoftContactMaxSeconds)

                for _, v43 in t5 do
                    local v44 = v39.x - v43.x
                    local v45 = v39.y - v43.y

                    if v44 * v44 + v45 * v45 <= v42 * v42 then
                        t4[v39] = true
                        table.insert(t5, v39)
                        v35 += Ball.kineticEnergy(v39, RadiusInches)
                        v36 = true
                        break
                    end
                end
            end
        end
    end

    for _, v46 in t5 do
        if v46 ~= p21 and Flight.isAirborne(v46) then
            return nil
        end
    end

    local Table = Config.Table
    local v49 = math.max(RadiusInches, Table.CornerPocketRadiusInches, Table.SidePocketRadiusInches) + math.sqrt(2 * v35) * SoftContactMaxSeconds

    for _, v50 in t5 do
        if math.abs(v50.x) + v49 >= p19.halfLength or math.abs(v50.y) + v49 >= p19.halfWidth then
            return nil
        end
    end

    local v51 = table.create(#t5)

    for _, v52 in p16 do
        if t4[v52] then
            table.insert(v51, v52)
        end
    end

    return v51
end

v11 = function(p22, p23, p24, p25, p26) -- line: 288
    -- upvalues: Config (copy), Ball (copy), t1 (copy), n1 (ref), n2 (ref)
    local Physics = Config.Physics
    local RadiusInches = Config.Balls.RadiusInches
    local sqrt = math.sqrt
    local frictionImpulse = t1.frictionImpulse
    local v53 = #p22
    local SoftContactStep = Physics.SoftContactStep
    local v54 = 0.5 * SoftContactStep
    local v57 = math.max(1, (math.floor(Physics.SoftContactMaxSeconds / SoftContactStep + 0.5)))
    local SoftContactSkinInches = Physics.SoftContactSkinInches
    local v56 = 2 * RadiusInches
    local v55 = v56 * v56
    local v58 = (v56 + SoftContactSkinInches) * (v56 + SoftContactSkinInches)
    local v59 = n1
    local v60 = n2
    local v61 = table.create(v53, 0)
    local v62 = table.create(v53, 0)
    local v63 = table.create(v53, 0)
    local v64 = table.create(v53, 0)
    local v65 = table.create(v53, 0)
    local v66 = table.create(v53, 0)
    local v67 = table.create(v53, 0)
    local vx, v68, v69, v70

    for v71, v72 in p22 do
        v68 = v72.x
        v69 = v72.y
        vx = v72.vx
        v70 = v72.vy
        v61[v71] = v68
        v62[v71] = v69
        v63[v71] = vx
        v64[v71] = v70
        v68 = v72.wx
        v69 = v72.wy
        vx = v72.wz
        v65[v71] = v68
        v66[v71] = v69
        v67[v71] = vx
    end

    local RadiusInches2 = Config.Balls.RadiusInches
    local n4 = 0

    for _, v73 in p22 do
        n4 += Ball.kineticEnergy(v73, RadiusInches2)
    end

    RadiusInches2 = sqrt(n4 * 2)

    local v74, v75

    if RadiusInches2 > 0 then
        v68 = SoftContactSkinInches / (RadiusInches2 * 2 * SoftContactStep)
        v74 = math.floor(v68)
        v75 = math.max(1, v74)
    else
        v75 = v57
    end

    local v76 = table.create(v53 * v53, 0)

    for v77, v78 in p22 do
        for v79, v80 in p22 do
            if v78 == p23 and v80 == p24 or v78 == p24 and v80 == p23 then
                v76[(v77 - 1) * v53 + v79] = -1
            end
        end
    end

    local t6 = {}
    local t7 = {}
    local t8 = {}
    local t9 = {}
    local v81 = table.create(v53, 0)

    v70 = table.create(v53, 0)

    local t10 = {}
    local t11 = {}
    local t12 = {}
    local v82 = {}
    local t13 = {}
    local n5 = 0

    local function rebuild() -- line: 347
        -- upvalues: v53 (copy), v58 (copy), v61 (copy), v62 (copy), t10 (copy), t11 (copy), t12 (copy), n5 (ref)
        n5 = 0

        for i = 1, v53 do
            local v83 = v61[i]
            local v84 = v62[i]

            for j = i + 1, v53 do
                local v85 = v61[j] - v83
                local v86 = v62[j] - v84

                if v85 * v85 + v86 * v86 < v58 then
                    n5 += 1

                    local v87 = n5
                    local v88 = n5

                    t10[v87] = i
                    t11[v88] = j
                    t12[n5] = 0
                end
            end
        end
    end

    rebuild()

    local n6 = 0
    local n7 = 0
    local v89 = false
    local v90, v91, v92, v93, v94, v95, v96, v97, v98

    while true do
        for i = 1, v53 do
            v81[i] = 0
            v70[i] = 0
        end

        v90 = p25 + n6 * SoftContactStep

        local v99 = n5
        local n8 = 0
        local v100, v101, v102, v103

        for i = 1, v99 do
            v100 = t10[i]
            v101 = t11[i]

            local v104 = v61[v101] - v61[v100]
            local v105 = v62[v101] - v62[v100]
            local v106 = v104 * v104 + v105 * v105

            if v106 < v55 then
                n8 += 1

                local v107 = sqrt(v106)

                v91 = v104 / v107
                v92 = v105 / v107
                v93 = v56 - v107
                v102 = sqrt(v93)

                local v108 = (v63[v100] - v63[v101]) * v91 + (v64[v100] - v64[v101]) * v92
                local v109 = v59 * v93 * v102 + v60 * sqrt(v102) * v108

                if v109 < 0 then
                    v109 = 0
                end

                t12[i] = v109
                v82[i] = v91
                t13[i] = v92
                v81[v100] -= v109 * v91
                v70[v100] -= v109 * v92
                v81[v101] += v109 * v91
                v70[v101] += v109 * v92
                v103 = (v100 - 1) * v53 + v101
                v93 = v76[v103]

                if v93 == 0 then
                    v93 = #t8 + 1
                    v76[v103] = v93
                    t6[v93] = v100
                    t7[v93] = v101
                    t8[v93] = v90
                    t9[v93] = 0
                end

                if v93 > 0 and t9[v93] < v108 then
                    t9[v93] = v108
                end

                continue
            end

            t12[i] = 0
        end

        if n6 > 0 then
            for i = 1, v53 do
                v63[i] += v54 * v81[i]
                v64[i] += v54 * v70[i]
            end

            if n8 == 0 then
                if v89 then
                    break
                end
            else
                local v110 = n5

                v89 = true

                for i = 1, v110 do
                    v90 = t12[i]

                    if v90 > 0 then
                        local v111 = t10[i]

                        v94 = t11[i]
                        v95 = v82[i]
                        v96 = t13[i]
                        v97, v98 = frictionImpulse(v63[v111] - v63[v94], v64[v111] - v64[v94], v65[v111] + v65[v94], v66[v111] + v66[v94], v67[v111] + v67[v94], v95, v96, v90 * SoftContactStep)

                        if v97 ~= 0 or v98 ~= 0 then
                            local v112 = -v96 * v97
                            local v113 = v95 * v97

                            v63[v111] += v112
                            v64[v111] += v113
                            v63[v94] -= v112
                            v64[v94] -= v113
                            v93 = v96 * 2.5 * v98 / RadiusInches
                            v102 = v95 * -2.5 * v98 / RadiusInches
                            v103 = 2.5 * v97 / RadiusInches
                            v65[v111] += v93
                            v66[v111] += v102
                            v67[v111] += v103
                            v65[v94] += v93
                            v66[v94] += v102
                            v67[v94] += v103
                        end
                    end
                end
            end
        end

        if v57 <= n6 then
            break
        end

        n6 += 1

        for i = 1, v53 do
            v100 = v63[i] + v54 * v81[i]
            v101 = v64[i] + v54 * v70[i]
            v63[i] = v100
            v64[i] = v101
            v61[i] += SoftContactStep * v100
            v62[i] += SoftContactStep * v101
        end

        n7 += 1

        if v75 <= n7 then
            n7 = 0
            rebuild()
        end
    end

    for v114, v115 in p22 do
        v94 = v61[v114]
        v95 = v62[v114]
        v96 = v63[v114]
        v97 = v64[v114]
        v115.x = v94
        v115.y = v95
        v115.vx = v96
        v115.vy = v97
        v94 = v65[v114]
        v95 = v66[v114]
        v96 = v67[v114]
        v115.wx = v94
        v115.wy = v95
        v115.wz = v96
    end

    for _ = 1, 4 do
        local v116 = true

        for i = 1, v53 do
            v89 = p22[i]
            v97 = i + 1

            for j = v97, v53 do
                n7 = p22[j]
                v98 = n7.x - v89.x
                v91 = n7.y - v89.y
                v93 = v98 * v98 + v91 * v91
                v92 = math.sqrt(v93)
                v82 = v56 + Physics.ContactSlop

                if v92 < v82 and v92 > 1E-12 then
                    v70 = (v82 - v92) / 2
                    v89.x -= v98 / v92 * v70
                    v89.y -= v91 / v92 * v70
                    n7.x += v98 / v92 * v70
                    n7.y += v91 / v92 * v70
                    v116 = false
                end
            end
        end

        if v116 then
            break
        end
    end

    v75 = Config.Balls.RadiusInches
    vx = 0

    for _, v117 in p22 do
        vx += Ball.kineticEnergy(v117, v75)
    end

    if n4 < vx then
        v90 = 0

        local n9 = 0

        for _, v118 in p22 do
            v90 += v118.vx
            n9 += v118.vy
        end

        v90 /= v53
        n9 /= v53
        RadiusInches2 = 0

        for _, v119 in p22 do
            v96 = v119.vx - v90
            v97 = v119.vy - n9
            RadiusInches2 += 0.5 * (v96 * v96 + v97 * v97)
        end

        v67 = vx - n4

        local v120 = if v67 < RadiusInches2 then math.sqrt((RadiusInches2 - v67) / RadiusInches2) else 0

        for _, v122 in p22 do
            v122.vx = v90 + (v122.vx - v90) * v120
            v122.vy = n9 + (v122.vy - n9) * v120
        end
    end

    if p26 then
        for v123, v124 in t8 do
            if t9[v123] > 0 then
                p26(p22[t6[v123]], p22[t7[v123]], v124, t9[v123])
            end
        end
    end

    return n6 * SoftContactStep
end

function t1.resolve(p27, p28, p29, p30, p31) -- line: 541
    -- upvalues: v11 (ref), material (copy)
    material()

    return v11(p27, p28, p29, p30, p31)
end

function t1.material() -- line: 553
    -- upvalues: n1 (ref), n2 (ref), material (copy)
    material()

    return n1, n2
end

material()

return t1
]=====],
    ["Physics.Cue"] = [=====[
-- https://lua.expert

local Config = require(script.Parent.Parent.Config)

require(script.Parent.Ball)

local Flight = require(script.Parent.Flight)
local PowerShare = require(script.Parent.PowerShare)
local t1 = {}

function t1.speedForPower(p1) -- line: 23
    -- upvalues: Config (copy), PowerShare (copy)
    local Cue = Config.Cue

    return Cue.MinSpeed + (Cue.MaxSpeed - Cue.MinSpeed) * PowerShare.share(Cue, p1)
end

function t1.stickSpeedForPower(p2, p3) -- line: 31
    -- upvalues: Config (copy), PowerShare (copy)
    local Cue = Config.Cue
    local v2 = math.clamp(((p3 or Cue.CueElevationDegrees) - Cue.CueElevationDegrees) / (Cue.JumpCapDegrees - Cue.CueElevationDegrees), 0, 1)
    local v3 = Cue.MaxStickSpeed + (Cue.JumpMaxStickSpeed - Cue.MaxStickSpeed) * v2

    return Cue.MinStickSpeed + (v3 - Cue.MinStickSpeed) * PowerShare.share(Cue, p2)
end

function t1.rollOutDistance(p4, p5, p6) -- line: 46
    -- upvalues: Config (copy)
    if p4 < 0 then
        return 0
    end

    local Physics = Config.Physics
    local RadiusInches = Config.Balls.RadiusInches
    local v4 = p4 - RadiusInches * (p6 or 0)
    local v5 = RadiusInches * (p5 or 0)
    local v7 = math.sqrt(v4 * v4 + v5 * v5)

    if v7 <= Physics.SlideEpsilon then
        return p4 * p4 / (2 * Physics.RollingFriction * Physics.Gravity)
    end

    local v8 = v7 / (3.5 * (Physics.SlidingFriction * Physics.Gravity))
    local v9 = p4 - v4 / 3.5
    local v10 = -v5 / 3.5

    return (p4 + math.sqrt(v9 * v9 + v10 * v10)) * 0.5 * v8 + (v9 * v9 + v10 * v10) / (2 * Physics.RollingFriction * Physics.Gravity)
end

function t1.clampSpin(p7, p8) -- line: 70
    -- upvalues: Config (copy)
    local MaxSpinOffset = Config.Cue.MaxSpinOffset
    local v14 = math.max(math.abs(p7), (math.abs(p8)))

    if v14 == 0 then
        return 0, 0
    end

    local v15 = p7 / v14
    local v16 = p8 / v14
    local v18 = math.sqrt(v15 * v15 + v16 * v16)

    if MaxSpinOffset / v18 < v14 then
        return v15 / v18 * MaxSpinOffset, v16 / v18 * MaxSpinOffset
    end

    return p7, p8
end

function t1.launchDirection(p9) -- line: 91
    -- upvalues: Config (copy), t1 (copy)
    if Config.Cue.SideSpinBendsPath then
        local v19 = if p9.spin then t1.clampSpin(p9.spin.x, p9.spin.y) else 0
        local v20 = 1 - v19 * v19
        local v23 = math.atan2(v19 * 2.5 * math.sqrt(v20), 1 + Config.Cue.EndmassRatio + v20 * 2.5)
        local v24 = p9.angle + v23

        return math.cos(v24), (math.sin(v24))
    end

    return math.cos(p9.angle), (math.sin(p9.angle))
end

function t1.strike(p10, p11) -- line: 111
    -- upvalues: Config (copy), Flight (copy), t1 (copy)
    local Cue = Config.Cue
    local RadiusInches = Config.Balls.RadiusInches
    local v26, v27

    if p11.spin then
        v26, v27 = t1.clampSpin(p11.spin.x, p11.spin.y)
    else
        v26 = 0
        v27 = 0
    end

    local v30 = math.rad((math.clamp(p11.elevation or Cue.CueElevationDegrees, 0, Cue.MaxElevationDegrees)))
    local v31 = math.cos(v30)
    local v32 = math.sin(v30)
    local v34 = math.sqrt(1 - v26 * v26 - v27 * v27)
    local v36 = math.min(v30, (math.rad(Cue.CueElevationDegrees)))
    local v37 = v27 * v31 - v34 * math.sin(v36)
    local v38 = Config.Balls.MassOunces / Cue.StickMassOunces
    local v39 = 1 + v38 + (v26 * v26 + v37 * v37) * 2.5
    local TipRestitution = Cue.TipRestitution
    local v40 = 1 - (1 - ((1 - v38 * TipRestitution) ^ 2 + v38 * (1 + TipRestitution) ^ 2) / (1 + v38) ^ 2) / v38 * v39
    local v43 = t1.stickSpeedForPower(p11.power, (math.deg(v30))) * (math.sqrt((math.max(0, v40))) + 1) / v39
    local v44 = v43 * v31
    local v45, v46 = t1.launchDirection(p11)
    local v47 = v45 * v44
    local v48 = v46 * v44

    p10.vx = v47
    p10.vy = v48
    p10.vz = 0
    p10.z = 0

    local v49 = math.cos(p11.angle)
    local v50 = math.sin(p11.angle)
    local v51 = 2.5 * v43 / RadiusInches
    local v52 = if Config.Cue.SideSpinBendsPath then v51 * v26 * v32 else 0
    local v53 = v51 * v37

    p10.wx = v49 * v52 - v50 * v53
    p10.wy = v50 * v52 + v49 * v53
    p10.wz = v51 * v26 * v31

    local v55 = math.clamp((math.deg(v30) - Cue.CueElevationDegrees) / (Cue.JumpCapDegrees - Cue.CueElevationDegrees), 0, 1)
    local Physics = Config.Physics
    local v56 = Physics.SlateRestitution * (Physics.FlatStrikeBounce + (1 - Physics.FlatStrikeBounce) * v55)

    if Flight.slate(p10, v43 * v32, false, v56, Physics.SlateFriction * v55) then
        v44 = math.sqrt(p10.vx * p10.vx + p10.vy * p10.vy)
    end

    return v44
end

return t1
]=====],
    ["Physics.Simulation"] = [=====[
-- https://lua.expert

local Config = require(script.Parent.Parent.Config)
local Ball = require(script.Parent.Ball)
local Cluster = require(script.Parent.Cluster)
local Collision = require(script.Parent.Collision)
local Cue = require(script.Parent.Cue)
local Flight = require(script.Parent.Flight)
local Table = require(script.Parent.Table)
local Effects = require(script.Parent.Parent.Ults.Effects)
local Runner = require(script.Parent.Parent.Perks.Runner)
local t1 = {
    newState = function(p1, p2) -- newState | line: 165
        return {
            time = 0,
            geometry = p1,
            balls = p2
        }
    end
}

local function deepCopy(p3) -- line: 171
    -- upvalues: deepCopy (copy)
    if type(p3) ~= "table" then
        return p3
    end

    local t2 = {}

    for v1, v2 in p3 do
        t2[v1] = deepCopy(v2)
    end

    return t2
end

function t1.cloneState(p4) -- line: 182
    -- upvalues: Ball (copy), deepCopy (copy)
    return {
        geometry = p4.geometry,
        balls = Ball.cloneList(p4.balls),
        time = p4.time,
        overrides = if p4.overrides then deepCopy(p4.overrides) else nil,
        fx = if p4.fx then deepCopy(p4.fx) else nil,
        halted = p4.halted,
        power = p4.power
    }
end

function t1.isAtRest(p5) -- line: 199
    -- upvalues: Ball (copy), Table (copy)
    for _, v3 in p5.balls do
        if Ball.isMoving(v3) or not v3.pocketed and Table.pocketAt(p5.geometry, v3.x, v3.y) ~= nil then
            return false
        end
    end

    return true
end

function t1.energy(p6) -- line: 211
    -- upvalues: Config (copy), Ball (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local n1 = 0

    for _, v4 in p6.balls do
        n1 += Ball.kineticEnergy(v4, RadiusInches, Config.Physics.Gravity)
    end

    return n1
end

function t1.findBall(p7, p8) -- line: 220
    for _, v5 in p7.balls do
        if v5.id == p8 then
            return v5
        end
    end

    return nil
end

local function integrateFalling(p9, p10, p11) -- line: 236
    -- upvalues: Config (copy), Ball (copy)
    local Physics, Table = Config.Physics, Config.Table

    p9.vz -= Physics.Gravity * p10
    p9.z += p9.vz * p10

    if p11 then
        local v6 = p9.x - p11.x
        local v7 = p9.y - p11.y
        local v9 = math.sqrt(v6 * v6 + v7 * v7)

        if v9 > 1E-06 then
            local v10 = v6 / v9
            local v11 = v7 / v9

            p9.vx -= v10 * Table.PocketFunnelAccel * p10
            p9.vy -= v11 * Table.PocketFunnelAccel * p10
        end
    end

    local v13 = math.max(0, 1 - Table.PocketDragPerSecond * p10)

    p9.vx *= v13
    p9.vy *= v13
    p9.x += p9.vx * p10
    p9.y += p9.vy * p10

    if p11 then
        local v14 = p9.x - p11.x
        local v15 = p9.y - p11.y
        local v17 = math.sqrt(v14 * v14 + v15 * v15)
        local v19 = math.max(p11.radius - Config.Balls.RadiusInches, 0)

        if v19 < v17 and v17 > 1E-06 then
            local v20 = v14 / v17
            local v21 = v15 / v17

            p9.x = p11.x + v20 * v19
            p9.y = p11.y + v21 * v19

            local v22 = p9.vx * v20 + p9.vy * v21

            if v22 > 0 then
                p9.vx -= (1 + Table.PocketWallRestitution) * v22 * v20
                p9.vy -= (1 + Table.PocketWallRestitution) * v22 * v21
            end
        end
    end

    if not (p9.z <= -Table.PocketDropDepthInches) then
        return
    end

    p9.z = -Table.PocketDropDepthInches
    Ball.stop(p9)
    p9.falling = false
    p9.tip = nil
end

local function integrateTip(p12, p13, p14, p15) -- line: 291
    -- upvalues: Config (copy)
    local tip = p12.tip

    if tip == nil then
        return nil
    end

    local RadiusInches = Config.Balls.RadiusInches
    local Gravity = Config.Physics.Gravity

    tip.px += p12.vx * p13
    tip.py += p12.vy * p13
    tip.omega = tip.omega + 5 * Gravity / (7 * RadiusInches) * math.sin(tip.theta) * p13
    tip.theta += tip.omega * p13

    local v24 = math.sin(tip.theta)
    local v25 = math.cos(tip.theta)

    p12.x = tip.px + RadiusInches * v24 * tip.nx
    p12.y = tip.py + RadiusInches * v24 * tip.ny
    p12.z = RadiusInches * (v25 - 1)
    p12.wx = -tip.ny * tip.omega
    p12.wy = tip.nx * tip.omega

    if RadiusInches * tip.omega * tip.omega < Gravity * v25 and tip.theta < 1.5707963267948966 then
        return nil
    end

    local v26 = RadiusInches * tip.omega

    p12.vx += tip.nx * v26 * v25
    p12.vy += tip.ny * v26 * v25
    p12.vz = -v26 * v24
    p12.tip = nil

    if p14 then
        p12.pocket = p14.id
    end

    return {
        type = "pocket",
        t = p15,
        ball = p12.id,
        other = if p14 then p14.id else nil,
        speed = math.sqrt(p12.vx * p12.vx + p12.vy * p12.vy + p12.vz * p12.vz)
    }
end

local function leaveTable(p16, p17, p18) -- line: 338
    p16.pocketed = true
    p16.offTable = true
    p16.falling = false
    p16.pocket = nil
    p16.tip = nil

    if not p17 then
        return
    end

    table.insert(p17, {
        type = "offTable",
        t = p18,
        ball = p16.id,
        speed = math.sqrt(p16.vx * p16.vx + p16.vy * p16.vy + p16.vz * p16.vz)
    })
end

local function integrateBall(p19, p20, p21, p22, p23, p24, p25) -- line: 356
    -- upvalues: Config (copy), Flight (copy), Table (copy), integrateFalling (copy), integrateTip (copy), leaveTable (copy), integrateBall (copy)
    if p19.pocketed then
        local v29 = if p19.pocket then p21.pockets[p19.pocket] else nil

        if p19.tip then
            local v30 = integrateTip(p19, p20, v29, p23)

            if v30 and p22 then
                table.insert(p22, v30)
            end
        elseif p19.falling then
            integrateFalling(p19, p20, v29)
        end
    elseif not (p19.z > 0 or p19.vz > 0) then
        local Physics = Config.Physics
        local RadiusInches = Config.Balls.RadiusInches
        local Gravity = Physics.Gravity
        local v31 = p24 or Physics.SlidingFriction
        local v32 = p25 or Physics.RollingFriction
        local v33 = p19.vx - RadiusInches * p19.wy
        local v34 = p19.vy + RadiusInches * p19.wx
        local v36 = math.sqrt(v33 * v33 + v34 * v34)
        local v37

        if Physics.SlideEpsilon < v36 then
            local v38 = v33 / v36
            local v39 = v34 / v36
            local v40 = if v31 > 0 then v36 / (3.5 * v31 * Gravity) else 1e999
            local v41 = math.min(v40, p20)
            local v42 = -v31 * Gravity
            local v43 = 2.5 * v31 * Gravity / RadiusInches

            p19.x += p19.vx * v41 + 0.5 * v42 * v38 * v41 * v41
            p19.y += p19.vy * v41 + 0.5 * v42 * v39 * v41 * v41
            p19.vx += v42 * v38 * v41
            p19.vy += v42 * v39 * v41
            p19.wx += -v43 * v39 * v41
            p19.wy += v43 * v38 * v41
            v37 = p20 - v41

            if v40 <= p20 then
                p19.wx = -p19.vy / RadiusInches
                p19.wy = p19.vx / RadiusInches
            end
        else
            v37 = p20
        end

        if v37 > 0 then
            local v45 = math.sqrt(p19.vx * p19.vx + p19.vy * p19.vy)

            if v45 > 0 then
                local v46 = v32 * Gravity
                local v47 = if v46 > 0 then v45 / v46 else 1e999
                local v48 = math.min(v47, v37)
                local v49 = p19.vx / v45
                local v50 = p19.vy / v45

                p19.x += p19.vx * v48 - 0.5 * v46 * v49 * v48 * v48
                p19.y += p19.vy * v48 - 0.5 * v46 * v50 * v48 * v48

                if v47 <= v37 then
                    p19.vx = 0
                    p19.vy = 0
                else
                    p19.vx -= v46 * v49 * v48
                    p19.vy -= v46 * v50 * v48
                end
            end

            p19.wx = -p19.vy / RadiusInches
            p19.wy = p19.vx / RadiusInches
        end

        if p19.wz ~= 0 then
            p19.wz = p19.wz - math.sign(p19.wz) * math.min(math.abs(p19.wz), Physics.SideSpinDecel * p20)
        end

        if math.sqrt(p19.vx * p19.vx + p19.vy * p19.vy) < Physics.RestSpeed and math.sqrt((p19.vx - RadiusInches * p19.wy) ^ 2 + (p19.vy + RadiusInches * p19.wx) ^ 2) < Physics.SlideEpsilon then
            p19.vx = 0
            p19.vy = 0
            p19.wx = 0
            p19.wy = 0
        end
    else
        local v56 = Flight.fly(p19, p20)

        if not (p20 <= v56) then
            local v57 = p23 - (p20 - v56)

            if not Table.openingAt(p21, p19.x, p19.y) then
                if Table.containsCenter(p21, p19.x, p19.y, Config.Balls.RadiusInches) then
                    local v58 = -p19.vz

                    Flight.slate(p19, v58, true)

                    if p22 then
                        table.insert(p22, {
                            type = "land",
                            t = v57,
                            ball = p19.id,
                            speed = v58
                        })
                    end

                    integrateBall(p19, p20 - v56, p21, p22, p23, p24, p25)
                else
                    leaveTable(p19, p22, v57)
                end
            end
        end
    end
end

local function railRestitution(p26) -- line: 479
    -- upvalues: Config (copy)
    local RailRestitutionBySpeed = Config.Physics.RailRestitutionBySpeed

    if #RailRestitutionBySpeed == 0 then
        return Config.Physics.RailRestitution
    end

    if p26 <= RailRestitutionBySpeed[1].Speed then
        return RailRestitutionBySpeed[1].Restitution
    end

    for i = 2, #RailRestitutionBySpeed do
        local v59 = RailRestitutionBySpeed[i]

        if p26 <= v59.Speed then
            local v60 = RailRestitutionBySpeed[i - 1]
            local v61 = (p26 - v60.Speed) / (v59.Speed - v60.Speed)

            return v60.Restitution + v61 * (v59.Restitution - v60.Restitution)
        end
    end

    return RailRestitutionBySpeed[#RailRestitutionBySpeed].Restitution
end

local function resolveRail(p27, p28, p29, p30, p31) -- line: 508
    -- upvalues: Config (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local v62 = Config.Physics.CushionNoseHeightInches / RadiusInches - 1
    local v64 = math.sqrt(1 - v62 * v62)
    local v65 = -p29
    local v66 = p27.vx * p28 + p27.vy * p29

    if v66 >= 0 then
        return 0
    end

    local v67 = p27.vx * v65 + p27.vy * p28
    local v68 = p27.wx * p28 + p27.wy * p29
    local v69 = p27.wx * v65 + p27.wy * p28
    local wz = p27.wz
    local v70 = -v66
    local v71 = v67 - RadiusInches * (v64 * wz + v62 * v68)
    local v72 = v62 * v66 + RadiusInches * v69
    local v74 = math.sqrt(v71 * v71 + v72 * v72)
    local v75 = (p30 + 1) * v64 * v70
    local v76, v77

    if v74 > 0 then
        local v80 = math.min(v74 / 3.5, p31 * v75)

        v77 = -v80 * v71 / v74
        v76 = -v80 * v72 / v74
    else
        v77 = 0
        v76 = 0
    end

    local v81 = v66 + (v75 * v64 + v76 * v62)
    local v82 = v67 + v77
    local v83 = v68 - 2.5 * v62 * v77 / RadiusInches
    local v84 = v69 + v76 * 2.5 / RadiusInches
    local v85 = wz - v64 * 2.5 * v77 / RadiusInches
    local v86 = math.abs(v81)

    p27.vx = v86 * p28 + v82 * v65
    p27.vy = v86 * p29 + v82 * p28
    p27.wx = v83 * p28 + v84 * v65
    p27.wy = v83 * p29 + v84 * p28
    p27.wz = v85

    return v70
end

local function resolveBalls3D(p32, p33, p34) -- line: 560
    -- upvalues: Config (copy), Ball (copy), Cluster (copy), Flight (copy)
    local RadiusInches = Config.Balls.RadiusInches

    p34 = p34 or Config.Physics.BallRestitution

    local v88 = not Flight.isAirborne(p32)
    local v89 = not Flight.isAirborne(p33)
    local v90 = p33.x - p32.x
    local v91 = p33.y - p32.y
    local v92 = p33.z - p32.z
    local v94 = math.sqrt(v90 * v90 + v91 * v91 + v92 * v92)

    if not (v94 < 1E-12) then
        local v95 = v90 / v94
        local v96 = v91 / v94
        local v97 = v92 / v94
        local v98 = (p32.vx - p33.vx) * v95 + (p32.vy - p33.vy) * v96 + (p32.vz - p33.vz) * v97

        if not (v98 <= 0) then
            local Physics = Config.Physics
            local Gravity = Physics.Gravity
            local v99
            local n2 = 0
            local n3 = 0
            local v100 = Ball.kineticEnergy(p32, RadiusInches, Gravity) + Ball.kineticEnergy(p33, RadiusInches, Gravity)
            local v101, v102

            if math.abs(v97) > 0.5 and v98 < Physics.PerchSpeed then
                local v103 = if v97 < 0 then -1 else 1

                if v97 < 0 then
                    v99 = p32
                    v102 = p32
                else
                    v99 = p33
                    v102 = p33
                end

                local v104 = v103 * v95
                local v105 = v103 * v96
                local v107 = math.sqrt(v104 * v104 + v105 * v105)

                if v107 < 1E-06 then
                    v104 = 1
                    v105 = 0
                    v107 = 1
                end

                n2 = v104 / v107 * Physics.PerchSlideSpeed
                n3 = v105 / v107 * Physics.PerchSlideSpeed
                v101 = 0
            else
                v101 = p34
            end

            local v108 = (1 + v101) * v98 / 2

            p32.vx -= v108 * v95
            p32.vy -= v108 * v96
            p32.vz -= v108 * v97
            p33.vx += v108 * v95
            p33.vy += v108 * v96
            p33.vz += v108 * v97

            local v109 = p32.wx + p33.wx
            local v110 = p32.wy + p33.wy
            local v111 = p32.wz + p33.wz
            local v112 = p32.vx - p33.vx + RadiusInches * (v110 * v97 - v111 * v96)
            local v113 = p32.vy - p33.vy + RadiusInches * (v111 * v95 - v109 * v97)
            local v114 = p32.vz - p33.vz + RadiusInches * (v109 * v96 - v110 * v95)
            local v115 = v112 * v95 + v113 * v96 + v114 * v97
            local v116 = v112 - v115 * v95
            local v117 = v113 - v115 * v96
            local v118 = v114 - v115 * v97
            local v120 = math.sqrt(v116 * v116 + v117 * v117 + v118 * v118)

            if Config.Physics.BallSlipEpsilon < v120 then
                local v123 = math.min(Cluster.ballFriction(v120) * v108, v120 / 7)
                local v124 = v116 / v120
                local v125 = v117 / v120
                local v126 = v118 / v120

                p32.vx -= v123 * v124
                p32.vy -= v123 * v125
                p32.vz -= v123 * v126
                p33.vx += v123 * v124
                p33.vy += v123 * v125
                p33.vz += v123 * v126

                local v127 = v123 * -2.5 / RadiusInches
                local v128 = v127 * (v96 * v126 - v97 * v125)
                local v129 = v127 * (v97 * v124 - v95 * v126)
                local v130 = v127 * (v95 * v125 - v96 * v124)

                p32.wx += v128
                p32.wy += v129
                p32.wz += v130
                p33.wx += v128
                p33.wy += v129
                p33.wz += v130
            end

            if v88 then
                p32.vz = 0
            end

            if v89 then
                p33.vz = 0
            end

            if not v102 then
                return v98
            end

            local vx, vy = v102.vx, v102.vy

            local function after(p35) -- line: 643
                -- upvalues: p32 (copy), p33 (copy), RadiusInches (copy), Gravity (copy), v99 (ref), n2 (ref), n3 (ref), vx (copy), vy (copy), Ball (copy)
                local v131 = v99
                local v132 = vx + n2 * p35
                local v133 = vy + n3 * p35

                v131.vx = v132
                v131.vy = v133

                return Ball.kineticEnergy(p32, RadiusInches, Gravity) + Ball.kineticEnergy(p33, RadiusInches, Gravity)
            end

            local v134 = vx + n2 * 1
            local v135 = vy + n3 * 1

            v99.vx = v134
            v99.vy = v135

            if v100 < Ball.kineticEnergy(p32, RadiusInches, Gravity) + Ball.kineticEnergy(p33, RadiusInches, Gravity) then
                local n4 = 0
                local n5 = 1

                for _ = 1, 20 do
                    local v136 = (n4 + n5) / 2
                    local v137 = vx + n2 * v136
                    local v138 = vy + n3 * v136
                    local v139 = v99

                    v139.vx = v137
                    v139.vy = v138

                    if v100 < Ball.kineticEnergy(p32, RadiusInches, Gravity) + Ball.kineticEnergy(p33, RadiusInches, Gravity) then
                        n5 = v136
                    else
                        n4 = v136
                    end
                end

                local v140 = vx + n2 * n4
                local v141 = vy + n3 * n4
                local v142 = v99

                v142.vx = v140
                v142.vy = v141

                local _ = Ball.kineticEnergy(p32, RadiusInches, Gravity) + Ball.kineticEnergy(p33, RadiusInches, Gravity)
            end
        end
    end

    return 0
end

local function resolveBalls(p36, p37, p38) -- line: 669
    -- upvalues: Config (copy), Cluster (copy), resolveBalls3D (copy)
    if p36.z > 0 or p36.vz > 0 or p37.z > 0 or p37.vz > 0 then
        return (resolveBalls3D(p36, p37, p38))
    end

    p38 = p38 or Config.Physics.BallRestitution

    local v144 = p37.x - p36.x
    local v145 = p37.y - p36.y
    local v147 = math.sqrt(v144 * v144 + v145 * v145)

    if v147 < 1E-12 then
        return 0
    end

    local v148 = v144 / v147
    local v149 = v145 / v147
    local v150 = (p36.vx - p37.vx) * v148 + (p36.vy - p37.vy) * v149

    if v150 <= 0 then
        return 0
    end

    local v151 = (1 + p38) * v150 / 2

    p36.vx -= v151 * v148
    p36.vy -= v151 * v149
    p37.vx += v151 * v148
    p37.vy += v151 * v149

    local v152, v153 = Cluster.frictionImpulse(p36.vx - p37.vx, p36.vy - p37.vy, p36.wx + p37.wx, p36.wy + p37.wy, p36.wz + p37.wz, v148, v149, v151)

    if v152 ~= 0 or v153 ~= 0 then
        local RadiusInches = Config.Balls.RadiusInches
        local v159 = -v149 * v152
        local v160 = v148 * v152

        p36.vx += v159
        p36.vy += v160
        p37.vx -= v159
        p37.vy -= v160

        local v161 = 2.5 * v149 * v153 / RadiusInches
        local v162 = -2.5 * v148 * v153 / RadiusInches
        local v163 = 2.5 * v152 / RadiusInches

        p36.wx += v161
        p36.wy += v162
        p36.wz += v163
        p37.wx += v161
        p37.wy += v162
        p37.wz += v163
    end

    return v150
end

local function capturePockets(p39, p40) -- line: 727
    -- upvalues: Config (copy), Ball (copy), Table (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local Gravity = Config.Physics.Gravity
    local v164 = math.rad(Config.Table.PocketTipMinDegrees)

    for _, v165 in p39.balls do
        if not v165.pocketed then
            if v165.z > 0 or v165.vz > 0 then
                if not (v165.z >= Config.Table.CushionHeightInches) then
                    local v166 = Table.openingAt(p39.geometry, v165.x, v165.y)

                    if v166 ~= nil then
                        v165.pocketed = true
                        v165.falling = true
                        v165.pocket = v166.id
                        v165.wz = 0
                        v165.wx = 0
                        v165.wy = 0

                        if p40 then
                            table.insert(p40, {
                                type = "pocket",
                                t = p39.time,
                                ball = v165.id,
                                other = v166.id,
                                speed = math.sqrt(v165.vx * v165.vx + v165.vy * v165.vy + v165.vz * v165.vz)
                            })
                        end
                    end
                end
            else
                local v168 = Table.pocketAt(p39.geometry, v165.x, v165.y)

                if v168 ~= nil then
                    v165.pocketed = true
                    v165.falling = true
                    v165.pocket = v168.id
                    v165.wz = 0

                    local v169 = v165.x - v168.x
                    local v170 = v165.y - v168.y
                    local v172 = math.sqrt(v169 * v169 + v170 * v170)
                    local v173 = (v168.radius - v172) / RadiusInches

                    if v172 > 1E-06 and v173 < 1 then
                        local v174 = v169 / v172
                        local v175 = v170 / v172
                        local v176 = -v174
                        local v177 = -v175
                        local v179 = math.max(math.asin(v173), v164)
                        local v181 = math.max(v165.vx * v176 + v165.vy * v177, 0)
                        local v182 = v181 / (RadiusInches * math.cos(v179))

                        if RadiusInches * v182 * v182 < Gravity * math.cos(v179) then
                            v165.vx -= v181 * v176
                            v165.vy -= v181 * v177
                            v165.tip = {
                                px = v168.x + v174 * v168.radius,
                                py = v168.y + v175 * v168.radius,
                                nx = v176,
                                ny = v177,
                                theta = v179,
                                omega = v182
                            }
                        else
                            v165.wx = 0
                            v165.wy = 0

                            if p40 then
                                table.insert(p40, {
                                    type = "pocket",
                                    t = p39.time,
                                    ball = v165.id,
                                    other = v168.id,
                                    speed = Ball.speed(v165)
                                })
                            end
                        end
                    else
                        v165.wx = 0
                        v165.wy = 0

                        if p40 then
                            table.insert(p40, {
                                type = "pocket",
                                t = p39.time,
                                ball = v165.id,
                                other = v168.id,
                                speed = Ball.speed(v165)
                            })
                        end
                    end
                end
            end
        end
    end
end

function t1.touchesCushion(p41, p42, p43) -- line: 811
    -- upvalues: Config (copy)
    local RadiusInches = Config.Balls.RadiusInches

    for _, v183 in p41.segments do
        local v184 = (p42 - v183.ax) * v183.nx + (p43 - v183.ay) * v183.ny

        if v184 < RadiusInches and -RadiusInches < v184 then
            local v185 = v183.bx - v183.ax
            local v186 = v183.by - v183.ay
            local v187 = ((p42 - v183.ax) * v185 + (p43 - v183.ay) * v186) / (v185 * v185 + v186 * v186)

            if v187 >= 0 and v187 <= 1 then
                return true
            end
        end
    end

    for _, v188 in p41.points do
        local v189 = p42 - v188.x
        local v190 = p43 - v188.y
        local v191 = RadiusInches + v188.radius

        if v189 * v189 + v190 * v190 < v191 * v191 then
            return true
        end
    end

    return false
end

function t1.goesOver(p44, p45, p46, p47, p48, p49) -- line: 838
    -- upvalues: Config (copy), Table (copy)
    local RadiusInches = Config.Balls.RadiusInches

    if not Table.openingAt(p44, p45, p46) then
        if not Table.containsCenter(p44, p45, p46, RadiusInches) then
            return true
        end

        if not (p47 < Config.Table.CushionHeightInches) then
            for _, v192 in p44.segments do
                local v193 = (p45 - v192.ax) * v192.nx + (p46 - v192.ay) * v192.ny

                if v193 < RadiusInches and -RadiusInches < v193 and p48 * v192.nx + p49 * v192.ny < 0 then
                    local v194 = v192.bx - v192.ax
                    local v195 = v192.by - v192.ay
                    local v196 = ((p45 - v192.ax) * v194 + (p46 - v192.ay) * v195) / (v194 * v194 + v195 * v195)

                    if v196 >= 0 and v196 <= 1 then
                        return true
                    end
                end
            end

            for _, v197 in p44.points do
                local v198 = p45 - v197.x
                local v199 = p46 - v197.y
                local v200 = RadiusInches + v197.radius

                if v198 * v198 + v199 * v199 < v200 * v200 and v198 * p48 + v199 * p49 < 0 then
                    return true
                end
            end
        end
    end

    return false
end

local function checkOffTable(p50, p51) -- line: 878
    -- upvalues: Flight (copy), t1 (copy), leaveTable (copy)
    for _, v201 in p50.balls do
        if Flight.isAirborne(v201) and t1.goesOver(p50.geometry, v201.x, v201.y, v201.z, v201.vx, v201.vy) then
            leaveTable(v201, p51, p50.time)
        end
    end
end

local function findEarliestHit(p52, p53, p54, p55, p56, p57) -- line: 907
    -- upvalues: Config (copy), Collision (copy), Flight (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local geometry, balls = p52.geometry, p52.balls
    local CushionHeightInches = Config.Table.CushionHeightInches
    local v203 = p53
    local v202

    for v204, v205 in balls do
        local v206 = false
        local v207 = false
        local v208 = false

        if not (v205.pocketed or p54 and p54[v205]) then
            v206 = true
        end

        if v206 and not (p56 and p56[v205.id]) then
            v207 = true
        end

        local v209, v210, v211, v212

        if v207 then
            v209 = p55 and Flight.isAirborne(v205)
            v210 = v205.vx ~= 0 or v205.vy ~= 0 or v209

            local v214 = math.sqrt(v205.vx * v205.vx + v205.vy * v205.vy) * p53 + RadiusInches
            local v215 = math.abs(v205.x) + v214 >= geometry.halfLength or math.abs(v205.y) + v214 >= geometry.halfWidth

            v211 = v203
            v212 = v202

            if v210 and v215 and v205.z < CushionHeightInches then
                for _, v216 in geometry.segments do
                    local v217 = Collision.segmentTOI(v205.x, v205.y, v205.vx, v205.vy, RadiusInches, v216, v211)

                    if v217 and v217 < v211 then
                        v211 = v217
                        v212 = {
                            kind = "rail",
                            t = v217,
                            a = v205,
                            nx = v216.nx,
                            ny = v216.ny,
                            seg = v216
                        }
                    end
                end

                for _, v220 in geometry.points do
                    local v221, v222, v223 = Collision.pointTOI(v205.x, v205.y, v205.vx, v205.vy, RadiusInches, v220.x, v220.y, v220.radius, v211)

                    if v221 and v221 < v211 then
                        v211 = v221
                        v212 = {
                            kind = "point",
                            t = v221,
                            a = v205,
                            nx = v222,
                            ny = v223
                        }
                    end
                end
            end

            v208 = true
        end

        if v208 then
            local v224 = v204 + 1
            local v225 = #balls

            v202 = v212
            v203 = v211

            for i = v224, v225 do
                local v226 = balls[i]
                local v227 = false
                local v228 = false
                local v229 = false
                local v230 = false
                local v231 = false
                local v232 = false
                local v233, v234

                if v226.pocketed or p54 and p54[v226] then
                    v233 = v203
                    v234 = v202
                else
                    v227 = true
                end

                if v227 then
                    if p56 and p56[v226.id] then
                        v233 = v203
                        v234 = v202
                    else
                        v228 = true
                    end
                end

                local v235

                if v228 then
                    if p57 then
                        local v236 = p57[v205.id]

                        v235 = p57[v226.id]

                        if v236 and v236[v226.id] then
                            v233 = v203
                            v234 = v202
                        else
                            v230 = true
                        end
                    else
                        v229 = true
                    end
                end

                if v230 then
                    if v235 and v235[v205.id] then
                        v233 = v203
                        v234 = v202
                    else
                        v229 = true
                    end
                end

                if v229 then
                    if v210 then
                        v231 = true
                    elseif v226.vx ~= 0 or v226.vy ~= 0 or p55 then
                        v231 = true
                    else
                        v233 = v203
                        v234 = v202
                    end
                end

                local v237

                if v231 then
                    v237 = p55 and Flight.isAirborne(v226)

                    if v210 then
                        v232 = true
                    elseif v226.vx ~= 0 or v226.vy ~= 0 or v237 then
                        v232 = true
                    else
                        v233 = v203
                        v234 = v202
                    end
                end

                if v232 then
                    v233 = if v209 or v237 then Collision.sphereTOI(v205.x, v205.y, v205.z, v205.vx, v205.vy, v205.vz, v226.x, v226.y, v226.z, v226.vx, v226.vy, v226.vz, RadiusInches, v203) else Collision.circleTOI(v205.x, v205.y, v205.vx, v205.vy, v226.x, v226.y, v226.vx, v226.vy, RadiusInches, v203)

                    if v233 and v233 < v203 then
                        v234 = {
                            kind = "ball",
                            nx = 0,
                            ny = 0,
                            t = v233,
                            a = v205,
                            b = v226
                        }
                    else
                        v233 = v203
                        v234 = v202
                    end
                end

                v203 = v233
                v202 = v234
            end
        end
    end

    return v202
end

local function pushOut(p58) -- line: 1001
    -- upvalues: Config (copy), Flight (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local ContactSlop = Config.Physics.ContactSlop
    local a = p58.a

    if p58.kind == "rail" and p58.seg then
        local seg = p58.seg
        local v238 = (a.x - seg.ax) * seg.nx + (a.y - seg.ay) * seg.ny

        if v238 < RadiusInches + ContactSlop then
            a.x += (RadiusInches + ContactSlop - v238) * seg.nx
            a.y += (RadiusInches + ContactSlop - v238) * seg.ny
        end
    elseif p58.kind == "ball" and p58.b and (Flight.isAirborne(a) or Flight.isAirborne(p58.b)) then
        local b = p58.b
        local v239 = b.x - a.x
        local v240 = b.y - a.y
        local v241 = b.z - a.z
        local v243 = math.sqrt(v239 * v239 + v240 * v240 + v241 * v241)
        local v244 = 2 * RadiusInches + ContactSlop

        if v243 > 1E-12 and v243 < v244 then
            local v245 = Flight.isAirborne(a)
            local v246 = Flight.isAirborne(b)
            local v247 = v239 / v243
            local v248 = v240 / v243
            local v249 = v241 / v243
            local v250 = if not v245 then 0 elseif v246 then 0.5 else 1
            local v251 = v244 - v243

            local function move(p59, p60, p61) -- line: 1026
                -- upvalues: v247 (copy), v248 (copy), v249 (copy), v251 (copy), Config (copy)
                if p61 <= 0 then
                    return
                end

                local z = p59.z

                p59.x += p60 * v247 * v251 * p61
                p59.y += p60 * v248 * v251 * p61
                p59.z = math.max(0, p59.z + p60 * v249 * v251 * p61)

                local v253 = p59.z - z

                if not (v253 > 0) then
                    return
                end

                local Gravity = Config.Physics.Gravity
                local v254 = 0.5 * (p59.vx * p59.vx + p59.vy * p59.vy + p59.vz * p59.vz)

                if v254 > 0 then
                    local v257 = math.sqrt(math.max(0, v254 - Gravity * v253) / v254)

                    p59.vx *= v257
                    p59.vy *= v257
                    p59.vz *= v257
                end
            end

            move(a, -1, v250)
            move(b, 1, 1 - v250)
        end
    elseif p58.kind == "ball" and p58.b then
        local b = p58.b
        local v258 = b.x - a.x
        local v259 = b.y - a.y
        local v261 = math.sqrt(v258 * v258 + v259 * v259)
        local v262 = 2 * RadiusInches + ContactSlop

        if v261 > 1E-12 and v261 < v262 then
            local v263 = (v262 - v261) / 2
            local v264 = v258 / v261
            local v265 = v259 / v261

            a.x -= v264 * v263
            a.y -= v265 * v263
            b.x += v264 * v263
            b.y += v265 * v263
        end
    end
end

local function layFlat(p62, p63, p64) -- line: 1084
    -- upvalues: Config (copy), Ball (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local Gravity = Config.Physics.Gravity
    local v266 = p63.x - p62.x
    local v267 = p63.y - p62.y
    local v268 = p63.z - p62.z
    local v270 = math.sqrt(v266 * v266 + v267 * v267)
    local v271 = if v270 > 1E-12 then v266 / v270 else 1
    local v272 = if v270 > 1E-12 then v267 / v270 else 0
    local v273 = 2 * RadiusInches + Config.Physics.ContactSlop

    if v270 < v273 then
        p62.x -= v271 * (v273 - v270)
        p62.y -= v272 * (v273 - v270)
    end

    local n6 = 0

    for _, v274 in p64 do
        n6 += Ball.kineticEnergy(v274, RadiusInches, Gravity)
    end

    local v277 = math.sqrt((math.max(4 * RadiusInches * RadiusInches - v268 * v268, 1E-12)))

    return {
        flyer = p62,
        group = p64,
        nx = v271,
        ny = v272,
        tilt = -v268 / v277,
        vx = p62.vx,
        vy = p62.vy,
        energy = n6
    }
end

local function liftFlyer(p65) -- line: 1115
    -- upvalues: Config (copy), Ball (copy)
    local RadiusInches = Config.Balls.RadiusInches
    local Gravity = Config.Physics.Gravity
    local flyer = p65.flyer
    local v278 = (p65.vx - flyer.vx) * p65.nx + (p65.vy - flyer.vy) * p65.ny

    if v278 <= 0 then
        return
    end

    flyer.vz += p65.tilt * v278

    if flyer.z <= 0 and flyer.vz < 0 then
        flyer.vz = 0
    end

    local n7 = 0
    local n8 = 0

    for _, v279 in p65.group do
        local v280 = Ball.kineticEnergy(v279, RadiusInches, Gravity)
        local v281 = 0.5 * v279.vz * v279.vz + Gravity * v279.z

        n7 += v280 - v281
        n8 += v281
    end

    if n7 > 0 and n7 + n8 > p65.energy then
        local v284 = math.sqrt(math.max(0, p65.energy - n8) / n7)

        for _, v285 in p65.group do
            v285.vx *= v284
            v285.vy *= v284
            v285.wx *= v284
            v285.wy *= v284
            v285.wz *= v284
        end
    end
end

local function mergeEvents(p66, p67, p68) -- line: 1150
    local n9 = 1
    local n10 = 1

    while true do
        local v286, v287

        if n9 <= #p67 then
            if not (#p68 < n10) and (not (n9 <= #p67) or not (p67[n9].t <= p68[n10].t)) then
                v287 = p68[n10]
                table.insert(p66, v287)
                n10 += 1
            else
                v286 = p67[n9]
                table.insert(p66, v286)
                n9 += 1
            end

            continue
        end

        if n10 <= #p68 then
            if #p68 < n10 or n9 <= #p67 and p67[n9].t <= p68[n10].t then
                v286 = p67[n9]
                table.insert(p66, v286)
                n9 += 1
            else
                v287 = p68[n10]
                table.insert(p66, v287)
                n10 += 1
            end

            continue
        end

        break
    end
end

local function advance(p69, p70, p71, p72, p73) -- line: 1173
    -- upvalues: Config (copy), Ball (copy), Cluster (copy), Flight (copy), integrateBall (copy), railRestitution (copy), resolveRail (copy), resolveBalls (copy), capturePockets (copy), checkOffTable (copy), findEarliestHit (copy), pushOut (copy), layFlat (copy), liftFlyer (copy), mergeEvents (copy), advance (copy)
    local Physics = Config.Physics
    local t11 = {}
    local overrides = p69.overrides
    local ghost = if p69.fx and next(p69.fx.ghost or {}) ~= nil then p69.fx.ghost else nil
    local t12

    if overrides and overrides.PhaseCue and #overrides.PhaseCue > 0 then
        local t13 = {}

        for _, v288 in overrides.PhaseCue do
            t13[v288] = true
        end

        t12 = {
            [0] = t13
        }
    end

    local passes = if p69.fx then p69.fx.passes else nil
    local v289, v290

    if not passes or next(passes) == nil then
        v290 = t12
    else
        if t12 then
            v289 = table.clone(t12)
        else
            v289 = {}
        end

        v290 = v289

        for v291, v292 in passes do
            local v293 = if v289[v291] then table.clone(v289[v291]) else {}

            for v294 in v292 do
                v293[v294] = true
            end

            v289[v291] = v293
        end
    end

    local material = if p69.fx then p69.fx.material else nil
    local v295 = p72

    if ghost then
        v295 = if p72 then table.clone(p72) else {}

        for _, v297 in p69.balls do
            if ghost[v297.id] then
                v295[v297] = true
            end
        end
    end

    local v298 = p70
    local n11 = 0

    while v298 > 1E-09 and n11 < Physics.MaxEventsPerStep do
        n11 += 1

        local v299 = v298
        local v300 = false

        for _, v301 in p69.balls do
            if not v301.pocketed and (v301.z > 0 or v301.vz > 0) then
                local AirStepSeconds

                if not p72 then
                    AirStepSeconds = Physics.AirStepSeconds
                    v299 = math.min(v298, AirStepSeconds)
                    v300 = true
                    break
                end

                if not p72[v301] then
                    AirStepSeconds = Physics.AirStepSeconds
                    v299 = math.min(v298, AirStepSeconds)
                    v300 = true
                    break
                end
            end

            v299 = v298
        end

        local v302 = findEarliestHit(p69, v299, p72, v300, ghost, v290)

        if v302 then
            v299 = v302.t
        end

        local CueSlidingFriction, CueRollingFriction

        if overrides and p69.time < (overrides.CueUntil or 0) then
            CueSlidingFriction = overrides.CueSlidingFriction
            CueRollingFriction = overrides.CueRollingFriction
        end

        for _, v303 in p69.balls do
            if p72 == nil or not p72[v303] then
                local v304, v305

                if v303.id == 0 then
                    v305 = CueRollingFriction
                    v304 = CueSlidingFriction
                elseif material then
                    local v306 = material[v303.id]

                    if v306 and p69.time < v306.Until then
                        v304 = v306.SlidingFriction
                        v305 = v306.RollingFriction
                    end
                end

                if v304 or v305 then
                    integrateBall(v303, v299, p69.geometry, p71, p69.time + v299, v304, v305)
                else
                    integrateBall(v303, v299, p69.geometry, p71, p69.time + v299)
                end
            end
        end

        p69.time += v299

        local v307 = v298 - v299

        capturePockets(p69, p71)

        if v300 then
            checkOffTable(p69, p71)
        end

        local v308

        if not v302 or v302.a.pocketed or v302.b and v302.b.pocketed then
            v308 = v307
        else
            local b = v302.b
            local v309 = if not b or Flight.isAirborne(v302.a) == Flight.isAirborne(b) then nil elseif Flight.isAirborne(v302.a) then v302.a else b
            local v310

            if p73 and v302.kind == "ball" and b and (not Flight.isAirborne(v302.a) or not Flight.isAirborne(b)) then
                local v311 = v309 == nil
                local v312 = if not v311 then math.abs(v302.a.z - b.z) <= Physics.SoftContactMaxHopInches else nil

                if (v311 or v312) and Cluster.touchesAnother(p69.balls, v302.a, b, v295) then
                    v310 = Cluster.gather(p69.balls, v302.a, b, p69.geometry, v295, v309)
                end
            end

            local v314 = v310

            if v310 and v290 then
                for _, v315 in v310 do
                    if v290[v315.id] then
                        v314 = nil
                        break
                    end

                    v314 = v310
                end
            end

            if v314 and b then
                local v316 = if v309 then layFlat(v309, if v309 == v302.a then b else v302.a, v314) else nil
                local v318 = b.x - v302.a.x
                local v319 = b.y - v302.a.y
                local v321 = math.sqrt(v318 * v318 + v319 * v319)
                local v322 = if v321 > 1E-12 then ((v302.a.vx - b.vx) * v318 + (v302.a.vy - b.vy) * v319) / v321 else 0

                if p71 and v322 > 0 then
                    table.insert(p71, {
                        type = "ballHit",
                        t = p69.time,
                        ball = v302.a.id,
                        other = b.id,
                        speed = v322
                    })
                end

                local t15 = {}
                local v323

                if p71 then
                    v323 = function(p74, p75, p76, p77) -- line: 1336
                        -- upvalues: t15 (copy)
                        table.insert(t15, {
                            type = "ballHit",
                            t = p76,
                            ball = p74.id,
                            other = p75.id,
                            speed = p77
                        })
                    end
                end

                local v324 = Cluster.resolve(v314, v302.a, b, p69.time, v323)

                if v316 then
                    liftFlyer(v316)
                end

                local t17 = {}

                for _, v325 in v314 do
                    t17[v325] = true
                end

                local t18 = if p71 then {} else nil

                advance(p69, v324, t18, t17, false)

                if p71 and t18 then
                    mergeEvents(p71, t15, t18)
                end

                v307 -= v324
            else
                pushOut(v302)

                local v326 = overrides ~= nil and p69.time < (overrides.CueUntil or 0)
                local v327, v328, id

                if v302.kind == "ball" and b then
                    local v329 = if v326 and (v302.a.id == 0 or b.id == 0) then overrides.CueBallRestitution else nil

                    if v329 == nil and material then
                        local v330 = material[v302.a.id]
                        local v331 = material[b.id]

                        if v330 and p69.time < v330.Until and v330.BallRestitution then
                            v329 = v330.BallRestitution
                        elseif v331 and p69.time < v331.Until and v331.BallRestitution then
                            v329 = v331.BallRestitution
                        end
                    end

                    v327 = resolveBalls(v302.a, b, v329)
                    v328 = "ballHit"
                    id = b.id
                else
                    local v332 = -(v302.a.vx * v302.nx + v302.a.vy * v302.ny)
                    local overrides2 = p69.overrides
                    local v333 = if not overrides2 then railRestitution(v332) elseif overrides2.RailRestitution == nil then railRestitution(v332) else overrides2.RailRestitution
                    local RailFriction = if not overrides2 or overrides2.RailFriction == nil then Physics.RailFriction else overrides2.RailFriction
                    local v334
                    local v335 = RailFriction

                    if v326 and v302.a.id == 0 then
                        v334 = if overrides.CueRailRestitution == nil then v333 else overrides.CueRailRestitution

                        if overrides.CueRailFriction ~= nil then
                            v335 = overrides.CueRailFriction
                        end
                    else
                        local v337, v338

                        v334 = v333

                        if material then
                            v337 = material[v302.a.id]

                            if v337 and p69.time < v337.Until then
                                v338 = if v337.RailRestitution ~= nil then v337.RailRestitution else v333
                                v334 = v338

                                if v337.RailFriction ~= nil then
                                    v335 = v337.RailFriction
                                end
                            end
                        end
                    end

                    v327 = resolveRail(v302.a, v302.nx, v302.ny, v334, v335)
                    v328 = "railHit"
                end

                if p71 and v327 > 0 then
                    local v339 = v328 == "railHit"
                    local t19 = {
                        t = p69.time,
                        type = v328,
                        ball = v302.a.id,
                        other = id,
                        speed = v327
                    }

                    if v339 then
                        t19.x = v302.a.x
                        t19.y = v302.a.y
                    else
                        t19.x = nil
                        t19.y = nil
                    end

                    table.insert(p71, t19)
                end
            end

            v308 = v307

            if v302.t <= Physics.InstantHitSeconds then
                local v340 = (t11[v302.a] or 0) + 1

                t11[v302.a] = v340

                if Physics.MaxInstantHits <= v340 then
                    Ball.stop(v302.a)

                    if b then
                        Ball.stop(b)
                    end
                end
            end

            if Physics.MaxEventsPerStep <= n11 then
                Ball.stop(v302.a)

                if b then
                    Ball.stop(b)
                end
            end
        end

        v298 = v308
    end

    return v298
end

local t20 = {}

function t20.remove(p78, p79, p80, p81) -- line: 1454
    -- upvalues: Ball (copy)
    if p80.pocketed then
        return
    end

    local x, y = p80.x, p80.y

    p80.pocketed = true
    p80.falling = false
    p80.offTable = false
    p80.pocket = nil
    p80.tip = nil
    p80.z = 0
    Ball.stop(p80)
    table.insert(p79, {
        type = "removed",
        speed = 0,
        t = p78.time,
        ball = p80.id,
        x = x,
        y = y,
        kind = p81
    })
end

function t20.teleport(p82, p83, p84, p85, p86) -- line: 1479
    -- upvalues: Config (copy), resolveBalls (copy), pushOut (copy)
    p84.x = p85
    p84.y = p86

    local RadiusInches = Config.Balls.RadiusInches

    for _, v341 in p82.balls do
        if v341 ~= p84 and not v341.pocketed then
            local v342 = v341.x - p84.x
            local v343 = v341.y - p84.y

            if v342 * v342 + v343 * v343 < 4 * RadiusInches * RadiusInches then
                local v345 = math.sqrt(v342 * v342 + v343 * v343)

                pushOut({
                    kind = "ball",
                    t = 0,
                    a = p84,
                    b = v341,
                    nx = if v345 > 1E-09 then v342 / v345 else 1,
                    ny = if v345 > 1E-09 then v343 / v345 else 0
                })

                local v348 = resolveBalls(p84, v341)

                if v348 > 0 then
                    table.insert(p83, {
                        type = "ballHit",
                        t = p82.time,
                        ball = p84.id,
                        other = v341.id,
                        speed = v348
                    })
                end
            end
        end
    end
end

function t20.halt(p87) -- line: 1508
    p87.halted = true
end

function t20.emit(p88, p89, p90, p91, p92, p93, p94, p95) -- line: 1513
    table.insert(p89, {
        type = "ult",
        speed = 0,
        t = p88.time,
        ball = p91,
        other = p92,
        x = p93,
        y = p94,
        kind = p90,
        value = p95
    })
end

t1.Ops = t20

local function effectOf(p96) -- line: 1540
    -- upvalues: Effects (copy), Runner (copy)
    local overrides = p96.overrides

    if overrides and overrides.Perk then
        return Runner
    end

    return if overrides and overrides.Effect then Effects[overrides.Effect] else nil
end

function t1.step(p97, p98, p99) -- line: 1563
    -- upvalues: Effects (copy), Runner (copy), advance (copy), t20 (copy)
    local overrides = p97.overrides
    local v349

    if not (overrides and overrides.Perk) then
        local Effect = if overrides then overrides.Effect else nil

        if overrides and Effect then
            v349 = Effects[overrides.Effect]
        end
    else
        v349 = Runner
    end

    if v349 ~= nil then
        if p97.fx == nil then
            p97.fx = {}
        end

        if v349.step then
            v349.step(p97, p98)
        end

        local after = v349.after
        local t24

        if after then
            t24 = {}
            advance(p97, p98, t24, nil, true)
            v349.after(p97, p98, t24, t20)
        else
            advance(p97, p98, p99, nil, true)
        end

        if (not after or p99) and after then
            for _, v350 in t24 do
                table.insert(p99, v350)
            end
        end
    else
        advance(p97, p98, p99, nil, true)
    end
end

function t1.finishShot(p100, p101) -- line: 1592
    -- upvalues: Effects (copy), Runner (copy), t20 (copy)
    local overrides = p100.overrides
    local v351

    if not (overrides and overrides.Perk) then
        local Effect = if overrides then overrides.Effect else nil

        if overrides and Effect then
            v351 = Effects[overrides.Effect]
        end
    else
        v351 = Runner
    end

    if v351 and v351.finish then
        if p100.fx == nil then
            p100.fx = {}
        end

        v351.finish(p100, p101 or {}, t20)
    end
end

local function captureFrame(p102) -- line: 1606
    local v352 = table.create(#p102.balls * 3)

    for v353, v354 in p102.balls do
        v352[v353 * 3 - 2] = v354.x
        v352[v353 * 3 - 1] = v354.y
        v352[v353 * 3] = v354.z
    end

    return {
        t = p102.time,
        positions = v352
    }
end

function t1.checksum(p103) -- line: 1623
    local n12 = 2166136261

    local function mix(p104) -- line: 1625
        -- upvalues: n12 (ref)
        local v356 = math.floor(p104 * 1000 + 0.5) % 4294967296

        n12 = bit32.bxor(n12, v356)
        n12 = n12 * 16777619 % 4294967296
    end

    for _, v358 in p103 do
        local v360 = math.floor(v358.x * 1000 + 0.5) % 4294967296

        n12 = bit32.bxor(n12, v360)
        n12 = n12 * 16777619 % 4294967296

        local v363 = math.floor(v358.y * 1000 + 0.5) % 4294967296

        n12 = bit32.bxor(n12, v363)
        n12 = n12 * 16777619 % 4294967296

        local v366 = math.floor(v358.z * 1000 + 0.5) % 4294967296

        n12 = bit32.bxor(n12, v366)
        n12 = n12 * 16777619 % 4294967296

        local v369 = math.floor((if v358.pocketed then 1 else 0) * 1000 + 0.5) % 4294967296

        n12 = bit32.bxor(n12, v369)
        n12 = n12 * 16777619 % 4294967296
    end

    return n12
end

function t1.strike(p105, p106) -- line: 1643
    -- upvalues: Config (copy), Cue (copy), t1 (copy)
    local v371 = t1.findBall(p105, 0)

    if v371 == nil or v371.pocketed then
        error("Simulation.strike: no cue ball on the table")
    end

    p105.time = 0

    local v372 = if p106.ability then Config.Physics.ShotMaterials[p106.ability] else nil

    if v372 then
        p105.overrides = table.clone(v372)
    else
        p105.overrides = nil
    end

    p105.fx = nil
    p105.halted = nil
    p105.power = math.clamp(p106.power, 0, 1)

    return {
        t = 0,
        type = "cueStrike",
        ball = 0,
        speed = Cue.strike(v371, p106)
    }
end

function t1.armEffect(p107, p108, p109, p110, p111) -- line: 1662
    -- upvalues: deepCopy (copy)
    local v373 = if p107.overrides then table.clone(p107.overrides) else {}

    if p111 then
        for v374, v375 in p111 do
            v373[v374] = deepCopy(v375)
        end
    end

    v373.Effect = p108
    v373.Targets = table.clone(p109)
    v373.EightPocket = p110
    v373.ShotPower = p107.power
    p107.overrides = v373
    p107.fx = nil
end

function t1.armPerk(p112, p113) -- line: 1688
    -- upvalues: deepCopy (copy)
    local v376 = if p112.overrides then table.clone(p112.overrides) else {}

    v376.Perk = deepCopy(p113)
    p112.overrides = v376
    p112.fx = nil
end

function t1.firstContact(p114) -- line: 1696
    for _, v377 in p114 do
        if v377.type == "ballHit" and (v377.ball == 0 or v377.other == 0) then
            if v377.ball == 0 then
                return v377.other
            end

            return v377.ball
        end
    end

    return nil
end

function t1.respotCueBall(p115) -- line: 1710
    -- upvalues: Ball (copy), Table (copy), t1 (copy)
    local v378 = t1.findBall(p115, 0)

    if v378 == nil or not v378.pocketed then
        return false
    end

    v378.pocketed = false
    v378.offTable = false
    v378.falling = false
    v378.pocket = nil
    v378.tip = nil
    v378.z = 0
    Ball.stop(v378)

    local v379, v380 = Table.headSpot(p115.geometry)

    v378.x = v379
    v378.y = v380

    return true
end

local function settleInto(p116, p117, p118, p119) -- line: 1729
    -- upvalues: Config (copy), Ball (copy), t1 (copy), captureFrame (copy)
    local Physics = Config.Physics
    local v381 = if p116.overrides then table.clone(p116.overrides) else nil
    local v383 = math.floor(Physics.MaxShotSeconds / Physics.FixedStep)

    p116.halted = nil

    local n13 = 0
    local v384

    while true do
        if t1.isAtRest(p116) then
            v384 = false
            break
        end

        if v383 <= n13 then
            v384 = true

            for _, v385 in p116.balls do
                Ball.stop(v385)
                v385.falling = false
                v385.tip = nil
            end

            break
        end

        t1.step(p116, Physics.FixedStep, p117)

        if p118 then
            table.insert(p118, (captureFrame(p116)))
        end

        if p119 then
            p119(p116)
        end

        n13 += 1

        if p116.halted then
            v384 = false
            break
        end
    end

    local n14 = 0

    for _, v387 in p117 do
        if v387.type == "ult" and v387.kind == "slow" and v387.value then
            n14 += v387.value
        end
    end

    if p116.halted and not v384 then
        return {
            capped = false,
            halted = true,
            events = p117,
            finalBalls = Ball.cloneList(p116.balls),
            firstContact = t1.firstContact(p117),
            duration = p116.time,
            steps = n13,
            overrides = v381,
            extraSeconds = n14
        }
    end

    if not v384 then
        t1.finishShot(p116, p117)
    end

    for _, v388 in p116.balls do
        v388.wz = 0
    end

    p116.overrides = nil
    p116.fx = nil
    p116.halted = nil

    return {
        events = p117,
        finalBalls = Ball.cloneList(p116.balls),
        firstContact = t1.firstContact(p117),
        duration = p116.time,
        steps = n13,
        capped = v384,
        overrides = v381,
        extraSeconds = n14
    }
end

function t1.settle(p120, p121, p122) -- line: 1813
    -- upvalues: settleInto (copy)
    return (settleInto(p120, p121 or {}, nil, p122))
end

local function simulate(p123, p124, p125) -- line: 1818
    -- upvalues: t1 (copy), captureFrame (copy), settleInto (copy)
    local v389 = t1.cloneState(p123)
    local t25 = { t1.strike(v389, p124) }

    if p125 then
        table.insert(p125, (captureFrame(v389)))
    end

    return (settleInto(v389, t25, p125))
end

function t1.run(p126, p127) -- line: 1829
    -- upvalues: simulate (copy)
    local t26 = {}
    local v391 = simulate(p126, p127, t26)

    return {
        frames = t26,
        events = v391.events,
        finalBalls = v391.finalBalls,
        firstContact = v391.firstContact,
        duration = v391.duration,
        steps = v391.steps,
        capped = v391.capped,
        overrides = v391.overrides
    }
end

function t1.runHeadless(p128, p129) -- line: 1846
    -- upvalues: t1 (copy), settleInto (copy)
    local v392 = t1.cloneState(p128)

    return (settleInto(v392, { t1.strike(v392, p129) }, nil))
end

return t1
]=====],
}
