.class Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;
.super Ljava/lang/Object;
.source "NaviServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/sdk/navi/NaviServerImpl$3;->guideInfoChange(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

.field final synthetic val$arriveStatus:Z

.field final synthetic val$cameraDist:I

.field final synthetic val$cameraIndex:I

.field final synthetic val$cameraSpeed:I

.field final synthetic val$cameraType:I

.field final synthetic val$carDirection:I

.field final synthetic val$carLatitude:D

.field final synthetic val$carLongitude:D

.field final synthetic val$curPointNum:I

.field final synthetic val$curRoadName:Ljava/lang/String;

.field final synthetic val$curSegNum:I

.field final synthetic val$curSpeed:I

.field final synthetic val$icon:I

.field final synthetic val$limitedSpeed:I

.field final synthetic val$nextRoadName:Ljava/lang/String;

.field final synthetic val$roadType:I

.field final synthetic val$roundAboutNum:I

.field final synthetic val$roundAllNum:I

.field final synthetic val$routeAllDis:I

.field final synthetic val$routeAllTime:I

.field final synthetic val$routeRemainDis:I

.field final synthetic val$routeRemainTime:I

.field final synthetic val$sapaDist:I

.field final synthetic val$sapaName:Ljava/lang/String;

.field final synthetic val$sapaNum:I

.field final synthetic val$sapaType:I

.field final synthetic val$segRemainDis:I

.field final synthetic val$segRemainTime:I

.field final synthetic val$trafficLightNum:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/navi/NaviServerImpl$3;ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V
    .registers 36

    .prologue
    .line 476
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iput p2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$type:I

    iput-object p3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curRoadName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$nextRoadName:Ljava/lang/String;

    iput p5, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaDist:I

    iput p6, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaType:I

    iput p7, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraDist:I

    iput p8, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraType:I

    iput p9, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraSpeed:I

    iput p10, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraIndex:I

    iput p11, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$icon:I

    iput p12, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeRemainDis:I

    iput p13, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeRemainTime:I

    move/from16 v0, p14

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$segRemainDis:I

    move/from16 v0, p15

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$segRemainTime:I

    move/from16 v0, p16

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$carDirection:I

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$carLatitude:D

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$carLongitude:D

    move/from16 v0, p21

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$limitedSpeed:I

    move/from16 v0, p22

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curSegNum:I

    move/from16 v0, p23

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curPointNum:I

    move/from16 v0, p24

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$roundAboutNum:I

    move/from16 v0, p25

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$roundAllNum:I

    move/from16 v0, p26

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeAllDis:I

    move/from16 v0, p27

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeAllTime:I

    move/from16 v0, p28

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curSpeed:I

    move/from16 v0, p29

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$trafficLightNum:I

    move/from16 v0, p30

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaNum:I

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaName:Ljava/lang/String;

    move/from16 v0, p32

    iput v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$roadType:I

    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$arriveStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 38

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iget-object v3, v3, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v36

    monitor-enter v36

    .line 480
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iget-object v3, v3, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;

    .line 481
    .local v2, "observer":Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;
    if-eqz v2, :cond_19

    .line 482
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$type:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curRoadName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$nextRoadName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaDist:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaType:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraDist:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraType:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraSpeed:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$cameraIndex:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$icon:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeRemainDis:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeRemainTime:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$segRemainDis:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$segRemainTime:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$carDirection:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$carLatitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$carLongitude:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$limitedSpeed:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curSegNum:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curPointNum:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$roundAboutNum:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$roundAllNum:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeAllDis:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$routeAllTime:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$curSpeed:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$trafficLightNum:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaNum:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$sapaName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$roadType:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$1;->val$arriveStatus:Z

    move/from16 v34, v0

    invoke-static/range {v2 .. v34}, Lcom/ecarx/sdk/navi/NaviServerHelper;->guideInfoObserver(Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V

    goto/16 :goto_19

    .line 493
    .end local v2    # "observer":Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;
    .end local v35    # "i$":Ljava/util/Iterator;
    :catchall_c6
    move-exception v3

    monitor-exit v36
    :try_end_c8
    .catchall {:try_start_b .. :try_end_c8} :catchall_c6

    throw v3

    .restart local v35    # "i$":Ljava/util/Iterator;
    :cond_c9
    :try_start_c9
    monitor-exit v36
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c6

    .line 494
    return-void
.end method
