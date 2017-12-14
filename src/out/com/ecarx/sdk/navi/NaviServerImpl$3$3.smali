.class Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;
.super Ljava/lang/Object;
.source "NaviServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/sdk/navi/NaviServerImpl$3;->onLocationRoadInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/navi/NaviServerImpl$3;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 521
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iput-object p2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 524
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iget-object v2, v2, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 525
    :try_start_9
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iget-object v2, v2, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;

    .line 526
    .local v1, "observer":Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;
    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;->val$info:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 527
    new-instance v2, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;

    iget-object v4, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$3;->val$info:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;->onLocationRoadInfo(Lcom/ecarx/sdk/navi/entitys/ILocationRoadInfo;)V

    goto :goto_15

    .line 530
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_39
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 531
    return-void
.end method
