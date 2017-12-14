.class Lcom/ecarx/sdk/navi/NaviServerImpl$1;
.super Lecarx/locationservice/ILocationObserver$Stub;
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
    .line 57
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    invoke-direct {p0}, Lecarx/locationservice/ILocationObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCityChanged(Lecarx/locationservice/ILocation;)V
    .registers 7
    .param p1, "location"    # Lecarx/locationservice/ILocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p1, :cond_3

    .line 83
    :goto_2
    return-void

    .line 77
    :cond_3
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 78
    :try_start_a
    new-instance v2, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;

    invoke-direct {v2, p1}, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;-><init>(Lecarx/locationservice/ILocation;)V

    .line 79
    .local v2, "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;

    .line 80
    .local v1, "observer":Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;
    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;->onCityChanged(Lcom/ecarx/sdk/navi/IECarXLocation;)V

    goto :goto_19

    .line 82
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;
    .end local v2    # "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    :cond_2c
    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    goto :goto_2
.end method

.method public onDistrictChanged(Lecarx/locationservice/ILocation;)V
    .registers 7
    .param p1, "location"    # Lecarx/locationservice/ILocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_3

    .line 96
    :goto_2
    return-void

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 91
    :try_start_a
    new-instance v2, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;

    invoke-direct {v2, p1}, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;-><init>(Lecarx/locationservice/ILocation;)V

    .line 92
    .local v2, "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;

    .line 93
    .local v1, "observer":Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;
    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;->onDistrictChanged(Lcom/ecarx/sdk/navi/IECarXLocation;)V

    goto :goto_19

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;
    .end local v2    # "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    :cond_2c
    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    goto :goto_2
.end method

.method public onLocation(Lecarx/locationservice/ILocation;)V
    .registers 7
    .param p1, "location"    # Lecarx/locationservice/ILocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_3

    .line 70
    :goto_2
    return-void

    .line 64
    :cond_3
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 65
    :try_start_a
    new-instance v2, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;

    invoke-direct {v2, p1}, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;-><init>(Lecarx/locationservice/ILocation;)V

    .line 66
    .local v2, "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;

    .line 67
    .local v1, "observer":Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;
    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;->onLocation(Lcom/ecarx/sdk/navi/IECarXLocation;)V

    goto :goto_19

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;
    .end local v2    # "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "wrapper":Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    :cond_2c
    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    goto :goto_2
.end method
