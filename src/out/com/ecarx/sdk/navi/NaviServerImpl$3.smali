.class Lcom/ecarx/sdk/navi/NaviServerImpl$3;
.super Lecarx/naviservice/INaviObserver$Stub;
.source "NaviServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/navi/NaviServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/navi/NaviServerImpl;)V
    .registers 2

    .prologue
    .line 460
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    invoke-direct {p0}, Lecarx/naviservice/INaviObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public guideInfoChange(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V
    .registers 69
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guideInfoChange type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$300(Lcom/ecarx/sdk/navi/NaviServerImpl;)Landroid/os/Handler;

    move-result-object v35

    new-instance v1, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-wide/from16 v18, p16

    move-wide/from16 v20, p18

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move/from16 v25, p23

    move/from16 v26, p24

    move/from16 v27, p25

    move/from16 v28, p26

    move/from16 v29, p27

    move/from16 v30, p28

    move/from16 v31, p29

    move-object/from16 v32, p30

    move/from16 v33, p31

    move/from16 v34, p32

    invoke-direct/range {v1 .. v34}, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;-><init>(Lcom/ecarx/sdk/navi/NaviServerImpl$3;ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method public naviStateChange(I)V
    .registers 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "naviStateChange state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$300(Lcom/ecarx/sdk/navi/NaviServerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;

    invoke-direct {v1, p0, p1}, Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;-><init>(Lcom/ecarx/sdk/navi/NaviServerImpl$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method public onLocationRoadInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationRoadInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$300(Lcom/ecarx/sdk/navi/NaviServerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;

    invoke-direct {v1, p0, p1}, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;-><init>(Lcom/ecarx/sdk/navi/NaviServerImpl$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method
