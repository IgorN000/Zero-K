unitDef = {
  unitname            = [[cornecro]],
  name                = [[Necro]],
  description         = [[Construction/Resurrection Bot, Builds at 6 m/s]],
  acceleration        = 0.24,
  bmcode              = [[1]],
  brakeRate           = 0.1942,
  buildCostEnergy     = 130,
  buildCostMetal      = 130,
  buildDistance       = 90,
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[CORNECRO.png]],
  buildTime           = 130,
  canAssist           = true,
  canBuild            = true,
  canMove             = true,
  canPatrol           = true,
  canreclamate        = [[1]],
  canResurrect        = true,
  canstop             = [[1]],
  category            = [[LAND UNARMED]],
  corpse              = [[DEAD]],

  customParams        = {
    description_bp = [[Robô de construç?o e ressurreiç?o, constrói a 6 m/s]],
    description_es = [[Robot de Construccion/Resurrección, Construye a 6 m/s]],
    description_fr = [[Robot de Construction/Resurrection, Construit ? 6 m/s]],
    description_it = [[Robot da Costruzzione/Risurrezione, Costruisce a 6 m/s]],
	description_de = [[Konstruktions-/Wiederbelebungsroboter, Baut mit 6 M/s]],
    helptext       = [[The Necro is a fairly standard construction bot with a twist: it can resurrect wrecks, producing a good-as-new combat unit at the price of 120% the original unit's energy cost.]],
    helptext_bp    = [[]],
    helptext_fr    = [[Le Necro tient son nom de sa facult?, comme tous les constructeurs de sa faction, ? r?ssuciter les carcasses du champ de bataille. La Resurrection ne consomme que de l'?nergie, et d?pends du co?t de l'unit? originelle.]],
	helptext_de    = [[Der Necro ist ein ziemlich normaler Konstruktionsroboter mit einem Vorteil: er kann Leichen wiederbeleben. Zu 120% der ursprünglichen Energiekosten bekommst du eine so gut wie neue Einheit wiederzurück.]],
  },

  defaultmissiontype  = [[Standby]],
  energyMake          = 0.15,
  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[builder]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maneuverleashlength = [[640]],
  mass                = 132,
  maxDamage           = 660,
  maxSlope            = 36,
  maxVelocity         = 2,
  maxWaterDepth       = 22,
  metalMake           = 0.15,
  minCloakDistance    = 75,
  movementClass       = [[KBOT2]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
  objectName          = [[conbot.s3o]],
  resurrectSpeed      = 5,
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNITEX]],
  showNanoSpray       = false,
  side                = [[CORE]],
  sightDistance       = 375,
  smoothAnim          = true,
  steeringmode        = [[2]],
  TEDClass            = [[KBOT]],
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ComTrack]],
  trackWidth          = 22,
  terraformSpeed      = 300,
  turninplace         = 0,
  turnRate            = 1100,
  upright             = true,
  workerTime          = 6,

  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Necro]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 660,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 52,
      object           = [[conbot_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 52,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Necro]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 660,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 52,
      object           = [[debris2x2a.s3o]],
      reclaimable      = true,
      reclaimTime      = 52,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Necro]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 660,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 26,
      object           = [[debris2x2a.s3o]],
      reclaimable      = true,
      reclaimTime      = 26,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ cornecro = unitDef })
