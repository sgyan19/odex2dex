.class public final Lcom/ecarx/sdk/navi/NaviServerHelper;
.super Ljava/lang/Object;
.source "NaviServerHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guideInfoObserver(Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V
    .registers 67
    .param p0, "guideInfoObserver"    # Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;
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
    .line 25
    new-instance v1, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move-object/from16 v31, p30

    move/from16 v32, p31

    move/from16 v33, p32

    invoke-direct/range {v1 .. v33}, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V

    .line 33
    .local v1, "guideInfoEntity":Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;
    const-string v2, "NaviServerImpl"

    invoke-virtual {v1}, Lcom/ecarx/sdk/navi/entitys/GuideInfoEntityAMapImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;->onGuideInfo(Lcom/ecarx/sdk/navi/entitys/IGuideInfo;)V

    .line 35
    return-void
.end method
