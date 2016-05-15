unitDef = {
  unitname            = [[gunshipcon]],
  name                = [[Bumblebee]],
  description         = [[Heavy Construction Aircraft, Builds at 7.5 m/s]],
  acceleration        = 0.1,
  airStrafe           = 0,
  amphibious          = true,
  brakeRate           = 0.1,
  buildCostEnergy     = 300,
  buildCostMetal      = 300,
  buildDistance       = 160,
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[GUNSHIPCON.png]],
  buildRange3D        = false,
  buildTime           = 300,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP UNARMED]],
  collisionVolumeOffsets        = [[0 0 -5]],
  collisionVolumeScales         = [[42 8 42]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[cylY]],
  collide             = true,
  corpse              = [[DEAD]],
  cruiseAlt           = 80,

  customParams        = {
    airstrafecontrol = [[0]],
	modelradius    = [[10]],
	midposoffset   = [[0 4 0]],
  },

  energyMake          = 0.12,
  energyUse           = 0,
  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  hoverAttack         = true,
  iconType            = [[builderair]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  mass                = 130,
  maxDamage           = 800,
  maxVelocity         = 3.1,
  metalMake           = 0.12,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[crane.s3o]],
  script              = [[gunshipcon.lua]],
  seismicSignature    = 0,
  selfDestructAs      = [[GUNSHIPEX]],
  showNanoSpray       = false,
  side                = [[ARM]],
  sightDistance       = 380,
  smoothAnim          = true,
  terraformSpeed      = 240,
  turnRate            = 500,
  workerTime          = 7.5,

  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Bumblebee]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 800,
      energy           = 0,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 120,
      object           = [[crane_d.dae]],
      reclaimable      = true,
      reclaimTime      = 120,
    },


    HEAP  = {
      description      = [[Debris - Bumblebee]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 800,
      energy           = 0,
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 60,
      object           = [[debris2x2b.s3o]],
      reclaimable      = true,
      reclaimTime      = 60,
    },

  },

}

return lowerkeys({ gunshipcon = unitDef })
