.class public Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;
.super Ljava/lang/Object;
.source "GuideInfoEntityAMapImpl.java"

# interfaces
.implements Lcom/ecarx/sdk/navi/entitys/IGuideInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideInfo"


# instance fields
.field private arriveStatus:Z

.field private cameraDist:I

.field private cameraIndex:I

.field private cameraSpeed:I

.field private cameraType:I

.field private carDirection:I

.field private carLatitude:D

.field private carLongitude:D

.field private curPointNum:I

.field private curRoadName:Ljava/lang/String;

.field private curSegNum:I

.field private curSpeed:I

.field private icon:I

.field private limitedSpeed:I

.field private nextRoadName:Ljava/lang/String;

.field private roadType:I

.field private roundAboutNum:I

.field private roundAllNum:I

.field private routeAllDis:I

.field private routeAllTime:I

.field private routeRemainDis:I

.field private routeRemainTime:I

.field private sapaDist:I

.field private sapaName:Ljava/lang/String;

.field private sapaNum:I

.field private sapaType:I

.field private segRemainDis:I

.field private segRemainTime:I

.field private trafficLightNum:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V
    .registers 35
    .param p1, "type"    # I
    .param p2, "curRoadName"    # Ljava/lang/String;
    .param p3, "nextRoadName"    # Ljava/lang/String;
    .param p4, "sapaDist"    # I
    .param p5, "sapaType"    # I
    .param p6, "cameraDist"    # I
    .param p7, "cameraType"    # I
    .param p8, "cameraSpeed"    # I
    .param p9, "cameraIndex"    # I
    .param p10, "icon"    # I
    .param p11, "routeRemainDis"    # I
    .param p12, "routeRemainTime"    # I
    .param p13, "segRemainDis"    # I
    .param p14, "segRemainTime"    # I
    .param p15, "carDirection"    # I
    .param p16, "carLatitude"    # D
    .param p18, "carLongitude"    # D
    .param p20, "limitedSpeed"    # I
    .param p21, "curSegNum"    # I
    .param p22, "curPointNum"    # I
    .param p23, "roundAboutNum"    # I
    .param p24, "roundAllNum"    # I
    .param p25, "routeAllDis"    # I
    .param p26, "routeAllTime"    # I
    .param p27, "curSpeed"    # I
    .param p28, "trafficLightNum"    # I
    .param p29, "sapaNum"    # I
    .param p30, "sapaName"    # Ljava/lang/String;
    .param p31, "roadType"    # I
    .param p32, "arriveStatus"    # Z

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->type:I

    .line 170
    iput-object p2, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curRoadName:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->nextRoadName:Ljava/lang/String;

    .line 172
    iput p4, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaDist:I

    .line 173
    iput p5, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaType:I

    .line 174
    iput p6, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraDist:I

    .line 175
    iput p7, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraType:I

    .line 176
    iput p8, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraSpeed:I

    .line 177
    iput p9, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraIndex:I

    .line 178
    iput p10, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->icon:I

    .line 179
    iput p11, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainDis:I

    .line 180
    iput p12, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainTime:I

    .line 181
    iput p13, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainDis:I

    .line 182
    move/from16 v0, p14

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainTime:I

    .line 183
    move/from16 v0, p15

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carDirection:I

    .line 184
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLatitude:D

    .line 185
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLongitude:D

    .line 186
    move/from16 v0, p20

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->limitedSpeed:I

    .line 187
    move/from16 v0, p21

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSegNum:I

    .line 188
    move/from16 v0, p22

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curPointNum:I

    .line 189
    move/from16 v0, p23

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAboutNum:I

    .line 190
    move/from16 v0, p24

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAllNum:I

    .line 191
    move/from16 v0, p25

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllDis:I

    .line 192
    move/from16 v0, p26

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllTime:I

    .line 193
    move/from16 v0, p27

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSpeed:I

    .line 194
    move/from16 v0, p28

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->trafficLightNum:I

    .line 195
    move/from16 v0, p29

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaNum:I

    .line 196
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaName:Ljava/lang/String;

    .line 197
    move/from16 v0, p31

    iput v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roadType:I

    .line 198
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->arriveStatus:Z

    .line 199
    return-void
.end method


# virtual methods
.method public getCameraDist()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraDist:I

    return v0
.end method

.method public getCameraIndex()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraIndex:I

    return v0
.end method

.method public getCameraSpeed()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraSpeed:I

    return v0
.end method

.method public getCameraType()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraType:I

    return v0
.end method

.method public getCarDirection()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carDirection:I

    return v0
.end method

.method public getCarLatitude()D
    .registers 3

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLatitude:D

    return-wide v0
.end method

.method public getCarLongitude()D
    .registers 3

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLongitude:D

    return-wide v0
.end method

.method public getCurPointNum()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curPointNum:I

    return v0
.end method

.method public getCurRoadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurSegNum()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSegNum:I

    return v0
.end method

.method public getCurSpeed()I
    .registers 2

    .prologue
    .line 441
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSpeed:I

    return v0
.end method

.method public getIcon()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->icon:I

    return v0
.end method

.method public getLimitedSpeed()I
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->limitedSpeed:I

    return v0
.end method

.method public getNaviType()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->type:I

    return v0
.end method

.method public getNextRoadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->nextRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadType()I
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roadType:I

    return v0
.end method

.method public getRoundAboutNum()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAboutNum:I

    return v0
.end method

.method public getRoundAllNum()I
    .registers 2

    .prologue
    .line 417
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAllNum:I

    return v0
.end method

.method public getRouteAllDis()I
    .registers 2

    .prologue
    .line 425
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllDis:I

    return v0
.end method

.method public getRouteAllTime()I
    .registers 2

    .prologue
    .line 433
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllTime:I

    return v0
.end method

.method public getRouteRemainDis()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainDis:I

    return v0
.end method

.method public getRouteRemainTime()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainTime:I

    return v0
.end method

.method public getSapaDist()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaDist:I

    return v0
.end method

.method public getSapaName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaName:Ljava/lang/String;

    return-object v0
.end method

.method public getSapaNum()I
    .registers 2

    .prologue
    .line 457
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaNum:I

    return v0
.end method

.method public getSapaType()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaType:I

    return v0
.end method

.method public getSegRemainDis()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainDis:I

    return v0
.end method

.method public getSegRemainTime()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainTime:I

    return v0
.end method

.method public getTrafficLightNum()I
    .registers 2

    .prologue
    .line 449
    iget v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->trafficLightNum:I

    return v0
.end method

.method public getTurnInfoIcon()Lcom/ecarx/sdk/navi/entitys/TurnInfoIcon;
    .registers 3

    .prologue
    .line 309
    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->icon:I

    add-int/lit8 v0, v1, -0x1

    .line 310
    .local v0, "idx":I
    if-ltz v0, :cond_d

    invoke-static {}, Lcom/ecarx/sdk/navi/entitys/TurnInfoIcon;->values()[Lcom/ecarx/sdk/navi/entitys/TurnInfoIcon;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_f

    .line 311
    :cond_d
    const/4 v1, 0x0

    .line 313
    :goto_e
    return-object v1

    :cond_f
    invoke-static {}, Lcom/ecarx/sdk/navi/entitys/TurnInfoIcon;->values()[Lcom/ecarx/sdk/navi/entitys/TurnInfoIcon;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_e
.end method

.method public hasArrived()Z
    .registers 2

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->arriveStatus:Z

    return v0
.end method

.method public isArriveStatus()Z
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->arriveStatus:Z

    return v0
.end method

.method public setArriveStatus(Z)V
    .registers 2
    .param p1, "arriveStatus"    # Z

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->arriveStatus:Z

    .line 491
    return-void
.end method

.method public setCameraDist(I)V
    .registers 2
    .param p1, "cameraDist"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraDist:I

    .line 284
    return-void
.end method

.method public setCameraIndex(I)V
    .registers 2
    .param p1, "cameraIndex"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraIndex:I

    .line 318
    return-void
.end method

.method public setCameraSpeed(I)V
    .registers 2
    .param p1, "cameraSpeed"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraSpeed:I

    .line 300
    return-void
.end method

.method public setCameraType(I)V
    .registers 2
    .param p1, "cameraType"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraType:I

    .line 292
    return-void
.end method

.method public setCarDirection(I)V
    .registers 2
    .param p1, "carDirection"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carDirection:I

    .line 366
    return-void
.end method

.method public setCarLatitude(D)V
    .registers 3
    .param p1, "carLatitude"    # D

    .prologue
    .line 373
    iput-wide p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLatitude:D

    .line 374
    return-void
.end method

.method public setCarLongitude(D)V
    .registers 3
    .param p1, "carLongitude"    # D

    .prologue
    .line 381
    iput-wide p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLongitude:D

    .line 382
    return-void
.end method

.method public setCurPointNum(I)V
    .registers 2
    .param p1, "curPointNum"    # I

    .prologue
    .line 405
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curPointNum:I

    .line 406
    return-void
.end method

.method public setCurRoadName(Ljava/lang/String;)V
    .registers 2
    .param p1, "curRoadName"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curRoadName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setCurSegNum(I)V
    .registers 2
    .param p1, "curSegNum"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSegNum:I

    .line 398
    return-void
.end method

.method public setCurSpeed(I)V
    .registers 2
    .param p1, "curSpeed"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSpeed:I

    .line 446
    return-void
.end method

.method public setIcon(I)V
    .registers 2
    .param p1, "icon"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->icon:I

    .line 326
    return-void
.end method

.method public setLimitedSpeed(I)V
    .registers 2
    .param p1, "limitedSpeed"    # I

    .prologue
    .line 389
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->limitedSpeed:I

    .line 390
    return-void
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .registers 2
    .param p1, "nextRoadName"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->nextRoadName:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setRoadType(I)V
    .registers 2
    .param p1, "roadType"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roadType:I

    .line 483
    return-void
.end method

.method public setRoundAboutNum(I)V
    .registers 2
    .param p1, "roundAboutNum"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAboutNum:I

    .line 414
    return-void
.end method

.method public setRoundAllNum(I)V
    .registers 2
    .param p1, "roundAllNum"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAllNum:I

    .line 422
    return-void
.end method

.method public setRouteAllDis(I)V
    .registers 2
    .param p1, "routeAllDis"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllDis:I

    .line 430
    return-void
.end method

.method public setRouteAllTime(I)V
    .registers 2
    .param p1, "routeAllTime"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllTime:I

    .line 438
    return-void
.end method

.method public setRouteRemainDis(I)V
    .registers 2
    .param p1, "routeRemainDis"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainDis:I

    .line 334
    return-void
.end method

.method public setRouteRemainTime(I)V
    .registers 2
    .param p1, "routeRemainTime"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainTime:I

    .line 342
    return-void
.end method

.method public setSapaDist(I)V
    .registers 2
    .param p1, "sapaDist"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaDist:I

    .line 268
    return-void
.end method

.method public setSapaName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sapaName"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaName:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setSapaNum(I)V
    .registers 2
    .param p1, "sapaNum"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaNum:I

    .line 462
    return-void
.end method

.method public setSapaType(I)V
    .registers 2
    .param p1, "sapaType"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaType:I

    .line 276
    return-void
.end method

.method public setSegRemainDis(I)V
    .registers 2
    .param p1, "segRemainDis"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainDis:I

    .line 350
    return-void
.end method

.method public setSegRemainTime(I)V
    .registers 2
    .param p1, "segRemainTime"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainTime:I

    .line 358
    return-void
.end method

.method public setTrafficLightNum(I)V
    .registers 2
    .param p1, "trafficLightNum"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->trafficLightNum:I

    .line 454
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->type:I

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GuideInfoEntityAMapImpl{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curRoadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextRoadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->nextRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sapaDist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaDist:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sapaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraDist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraDist:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->cameraIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeRemainDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainDis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeRemainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeRemainTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segRemainDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainDis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segRemainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->segRemainTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->carLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limitedSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->limitedSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curSegNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSegNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curPointNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curPointNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roundAboutNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAboutNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roundAllNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roundAllNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeAllDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllDis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeAllTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->routeAllTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->curSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trafficLightNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->trafficLightNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sapaNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sapaName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->sapaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->roadType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arriveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->arriveStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
