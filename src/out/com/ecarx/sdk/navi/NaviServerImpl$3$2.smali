.class Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;
.super Ljava/lang/Object;
.source "NaviServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/sdk/navi/NaviServerImpl$3;->naviStateChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/navi/NaviServerImpl$3;I)V
    .registers 3

    .prologue
    .line 502
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iput p2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 505
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iget-object v3, v3, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$400(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 506
    :try_start_9
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;->this$1:Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    iget-object v3, v3, Lcom/ecarx/sdk/navi/NaviServerImpl$3;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$400(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/sdk/navi/observer/INaviStateObserver;

    .line 507
    .local v2, "observer":Lcom/ecarx/sdk/navi/observer/INaviStateObserver;
    if-eqz v2, :cond_15

    .line 508
    iget v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$3$2;->val$state:I

    invoke-static {v3}, Lcom/ecarx/sdk/navi/entitys/NaviStateType;->toCameraType(I)Lcom/ecarx/sdk/navi/entitys/NaviStateType;

    move-result-object v1

    .line 509
    .local v1, "naviStateType":Lcom/ecarx/sdk/navi/entitys/NaviStateType;
    invoke-interface {v2, v1}, Lcom/ecarx/sdk/navi/observer/INaviStateObserver;->naviStateChange(Lcom/ecarx/sdk/navi/entitys/NaviStateType;)V

    goto :goto_15

    .line 512
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "naviStateType":Lcom/ecarx/sdk/navi/entitys/NaviStateType;
    .end local v2    # "observer":Lcom/ecarx/sdk/navi/observer/INaviStateObserver;
    :catchall_2d
    move-exception v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_30
    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2d

    .line 513
    return-void
.end method
