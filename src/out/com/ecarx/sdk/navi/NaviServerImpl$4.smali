.class Lcom/ecarx/sdk/navi/NaviServerImpl$4;
.super Ljava/lang/Object;
.source "NaviServerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 536
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 539
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v2, "onServiceConnected \u8fde\u63a5NaviService\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$500(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 541
    :try_start_e
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    invoke-static {p2}, Lecarx/naviservice/INaviServer$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/naviservice/INaviServer;

    move-result-object v3

    # setter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;
    invoke-static {v1, v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$602(Lcom/ecarx/sdk/navi/NaviServerImpl;Lecarx/naviservice/INaviServer;)Lecarx/naviservice/INaviServer;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_ac

    .line 543
    :try_start_17
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerNaviObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;
    invoke-static {v4}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$600(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/naviservice/INaviServer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$600(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/naviservice/INaviServer;

    move-result-object v1

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mNaviObserver:Lecarx/naviservice/INaviObserver;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$700(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/naviservice/INaviObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Lecarx/naviservice/INaviServer;->registerNaviObserver(Lecarx/naviservice/INaviObserver;)Z

    .line 545
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;
    invoke-static {v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$600(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/naviservice/INaviServer;

    move-result-object v3

    invoke-interface {v3}, Lecarx/naviservice/INaviServer;->getLocationService()Lecarx/locationservice/ILocationService;

    move-result-object v3

    # setter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;
    invoke-static {v1, v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$802(Lcom/ecarx/sdk/navi/NaviServerImpl;Lecarx/locationservice/ILocationService;)Lecarx/locationservice/ILocationService;

    .line 547
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_5a} :catch_9a
    .catchall {:try_start_17 .. :try_end_5a} :catchall_ac

    .line 548
    :try_start_5a
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 549
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    iget-object v4, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;
    invoke-static {v4}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$800(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/locationservice/ILocationService;

    move-result-object v4

    iget-object v5, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserver:Lecarx/locationservice/ILocationObserver;
    invoke-static {v5}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$1000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/locationservice/ILocationObserver;

    move-result-object v5

    invoke-interface {v4, v5}, Lecarx/locationservice/ILocationService;->attachLocationObserver(Lecarx/locationservice/ILocationObserver;)Z

    move-result v4

    # setter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserverAttached:Z
    invoke-static {v1, v4}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$902(Lcom/ecarx/sdk/navi/NaviServerImpl;Z)Z

    .line 551
    :cond_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_5a .. :try_end_7c} :catchall_97

    .line 557
    :goto_7c
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_ac

    .line 558
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallbackLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$1100(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 559
    :try_start_84
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallback:Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$1200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 560
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallback:Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;
    invoke-static {v1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$1200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;->onConnected()V

    .line 562
    :cond_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_84 .. :try_end_96} :catchall_af

    .line 563
    return-void

    .line 551
    :catchall_97
    move-exception v1

    :try_start_98
    monitor-exit v3
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw v1
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9a} :catch_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_ac

    .line 552
    :catch_9a
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9b
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, "registerNaviObserver failed "

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 555
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    const/4 v3, 0x0

    # setter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;
    invoke-static {v1, v3}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$602(Lcom/ecarx/sdk/navi/NaviServerImpl;Lecarx/naviservice/INaviServer;)Lecarx/naviservice/INaviServer;

    goto :goto_7c

    .line 557
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_ac
    move-exception v1

    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_9b .. :try_end_ae} :catchall_ac

    throw v1

    .line 562
    :catchall_af
    move-exception v1

    :try_start_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$500(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 568
    :try_start_7
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v2, "onServiceDisconnected \u4e0eNaviService\u5931\u53bb\u8fde\u63a5\u4e86"

    invoke-static {v0, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;
    invoke-static {v0, v2}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$602(Lcom/ecarx/sdk/navi/NaviServerImpl;Lecarx/naviservice/INaviServer;)Lecarx/naviservice/INaviServer;

    .line 570
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;
    invoke-static {v0, v2}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$802(Lcom/ecarx/sdk/navi/NaviServerImpl;Lecarx/locationservice/ILocationService;)Lecarx/locationservice/ILocationService;

    .line 571
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserverAttached:Z
    invoke-static {v0, v2}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$902(Lcom/ecarx/sdk/navi/NaviServerImpl;Z)Z

    .line 572
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_3b

    .line 573
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$1100(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 574
    :try_start_28
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallback:Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$1200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 575
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallback:Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$1200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;->onDisconnected()V

    .line 577
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3e

    .line 578
    return-void

    .line 572
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    .line 577
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method
