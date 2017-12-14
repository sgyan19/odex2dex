.class public final Lcom/ecarx/sdk/navi/NaviServerImpl;
.super Lcom/ecarx/sdk/navi/NaviAPI;
.source "NaviServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
    }
.end annotation


# static fields
.field public static final ECARX_CATEGORY_NAVI_SERVICE_STARTED:Ljava/lang/String; = "ecarx.intent.category.NAVI"

.field private static final NAVI_SERVICE_ACTION:Ljava/lang/String; = "ecarx.intent.action.NAVI_SERVICE_STARTED"

.field public static final TAG:Ljava/lang/String;

.field private static final WHAT_CONNECT_SUCCESS:I = 0x3e9

.field private static final WHAT_DISCONNECT_SUCCESS:I = 0x3ea


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private final guideInfoObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/navi/observer/IGuideInfoObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCallback:Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

.field private final mConnectionCallbackLock:Ljava/lang/Object;

.field private final mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLocationObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationService:Lecarx/locationservice/ILocationService;

.field private mNaviObserver:Lecarx/naviservice/INaviObserver;

.field private final mSvcLocationObserver:Lecarx/locationservice/ILocationObserver;

.field private mSvcLocationObserverAttached:Z

.field private final mSvcLock:Ljava/lang/Object;

.field private naviService:Lecarx/naviservice/INaviServer;

.field private final naviStateObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/navi/observer/INaviStateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/ecarx/sdk/navi/NaviServerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/ecarx/sdk/navi/NaviAPI;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallbackLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/ecarx/sdk/navi/NaviServerImpl$1;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/navi/NaviServerImpl$1;-><init>(Lcom/ecarx/sdk/navi/NaviServerImpl;)V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserver:Lecarx/locationservice/ILocationObserver;

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserverAttached:Z

    .line 446
    new-instance v0, Lcom/ecarx/sdk/navi/NaviServerImpl$2;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/navi/NaviServerImpl$2;-><init>(Lcom/ecarx/sdk/navi/NaviServerImpl;)V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mHandler:Landroid/os/Handler;

    .line 460
    new-instance v0, Lcom/ecarx/sdk/navi/NaviServerImpl$3;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/navi/NaviServerImpl$3;-><init>(Lcom/ecarx/sdk/navi/NaviServerImpl;)V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mNaviObserver:Lecarx/naviservice/INaviObserver;

    .line 536
    new-instance v0, Lcom/ecarx/sdk/navi/NaviServerImpl$4;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/navi/NaviServerImpl$4;-><init>(Lcom/ecarx/sdk/navi/NaviServerImpl;)V

    iput-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->connection:Landroid/content/ServiceConnection;

    .line 100
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ecarx/sdk/navi/NaviServerImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/locationservice/ILocationObserver;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserver:Lecarx/locationservice/ILocationObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallback:Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ecarx/sdk/navi/NaviServerImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ecarx/sdk/navi/NaviServerImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/naviservice/INaviServer;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ecarx/sdk/navi/NaviServerImpl;Lecarx/naviservice/INaviServer;)Lecarx/naviservice/INaviServer;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;
    .param p1, "x1"    # Lecarx/naviservice/INaviServer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/naviservice/INaviObserver;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mNaviObserver:Lecarx/naviservice/INaviObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ecarx/sdk/navi/NaviServerImpl;)Lecarx/locationservice/ILocationService;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/ecarx/sdk/navi/NaviServerImpl;Lecarx/locationservice/ILocationService;)Lecarx/locationservice/ILocationService;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;
    .param p1, "x1"    # Lecarx/locationservice/ILocationService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ecarx/sdk/navi/NaviServerImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/navi/NaviServerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserverAttached:Z

    return p1
.end method

.method private checkInitServer()V
    .registers 5

    .prologue
    .line 107
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNaviObserver naviService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v1, :cond_32

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ecarx.intent.action.NAVI_SERVICE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "ecarx.intent.category.NAVI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 113
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_32
    return-void
.end method

.method private registerNaviObserver()Lcom/ecarx/sdk/navi/NaviServerImpl;
    .registers 4

    .prologue
    .line 142
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v1, "registerNaviObserver"

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_a
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-eqz v0, :cond_17

    .line 145
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v2, "\u60a8\u5df2\u7ecf\u6ce8\u518c\u4e86"

    invoke-static {v0, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    monitor-exit v1

    .line 150
    :goto_16
    return-object p0

    .line 148
    :cond_17
    invoke-direct {p0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->checkInitServer()V

    .line 149
    monitor-exit v1

    goto :goto_16

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private registerSvcLocationObserverIfNotRegistered()V
    .registers 5

    .prologue
    .line 345
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_3
    iget-boolean v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserverAttached:Z

    if-eqz v1, :cond_10

    .line 347
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, "mSvcLocationObserverAttached, will not re-register "

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    monitor-exit v2

    .line 361
    :goto_f
    return-void

    .line 350
    :cond_10
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v1, :cond_24

    .line 351
    :cond_18
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, "not connected, will not register "

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    monitor-exit v2

    goto :goto_f

    .line 360
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1

    .line 355
    :cond_24
    :try_start_24
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, " register location observer to nav svc "

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserver:Lecarx/locationservice/ILocationObserver;

    invoke-interface {v1, v3}, Lecarx/locationservice/ILocationService;->attachLocationObserver(Lecarx/locationservice/ILocationObserver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserverAttached:Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_37
    .catchall {:try_start_24 .. :try_end_35} :catchall_21

    .line 360
    :goto_35
    :try_start_35
    monitor-exit v2

    goto :goto_f

    .line 357
    :catch_37
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_21

    goto :goto_35
.end method

.method private unregisterNaviObserver()V
    .registers 6

    .prologue
    .line 274
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v2, "unregisterNaviObserver"

    invoke-static {v1, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 276
    :try_start_a
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-eqz v1, :cond_46

    .line 277
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, "unbindService"

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    .line 279
    :try_start_15
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mNaviObserver:Lecarx/naviservice/INaviObserver;

    invoke-interface {v1, v3}, Lecarx/naviservice/INaviServer;->unregisterNaviObserver(Lecarx/naviservice/INaviObserver;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_28
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3a

    .line 283
    :try_start_1c
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    .line 290
    :goto_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_37

    .line 291
    return-void

    .line 280
    :catch_28
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3a

    .line 283
    :try_start_2c
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    goto :goto_26

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw v1

    .line 283
    :catchall_3a
    move-exception v1

    :try_start_3b
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;

    iget-object v4, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 284
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    throw v1

    .line 288
    :cond_46
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, "service unbind"

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_37

    goto :goto_26
.end method

.method private unregisterSvcLocationObserver()V
    .registers 5

    .prologue
    .line 364
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v1, :cond_14

    .line 366
    :cond_b
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, "not connected, can\'t unregister location observer from svc "

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_27

    .line 378
    :goto_13
    return-void

    .line 370
    :cond_14
    :try_start_14
    sget-object v1, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v3, " unregister location observer from nav svc "

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserver:Lecarx/locationservice/ILocationObserver;

    invoke-interface {v1, v3}, Lecarx/locationservice/ILocationService;->detachLocationObserver(Lecarx/locationservice/ILocationObserver;)Z

    .line 372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLocationObserverAttached:Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_2a
    .catchall {:try_start_14 .. :try_end_25} :catchall_27

    .line 376
    :goto_25
    :try_start_25
    monitor-exit v2

    goto :goto_13

    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1

    .line 373
    :catch_2a
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_27

    goto :goto_25
.end method


# virtual methods
.method public bridge synthetic addGuideObserver(Lcom/ecarx/sdk/navi/observer/GuideInfoObserver;)Lcom/ecarx/sdk/navi/NaviAPI;
    .registers 3
    .param p1, "x0"    # Lcom/ecarx/sdk/navi/observer/GuideInfoObserver;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/navi/NaviServerImpl;->addGuideObserver(Lcom/ecarx/sdk/navi/observer/GuideInfoObserver;)Lcom/ecarx/sdk/navi/NaviServerImpl;

    move-result-object v0

    return-object v0
.end method

.method public addGuideObserver(Lcom/ecarx/sdk/navi/observer/GuideInfoObserver;)Lcom/ecarx/sdk/navi/NaviServerImpl;
    .registers 4
    .param p1, "observer"    # Lcom/ecarx/sdk/navi/observer/GuideInfoObserver;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    monitor-enter v1

    .line 302
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 303
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_10
    monitor-exit v1

    .line 306
    return-object p0

    .line 305
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public addNaviStateObserver(Lcom/ecarx/sdk/navi/observer/NaviStateObserver;)Lcom/ecarx/sdk/navi/NaviAPI;
    .registers 4
    .param p1, "observer"    # Lcom/ecarx/sdk/navi/observer/NaviStateObserver;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    monitor-enter v1

    .line 326
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 327
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_10
    monitor-exit v1

    .line 330
    return-object p0

    .line 329
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public attachECarXLocationObserver(Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;)Lcom/ecarx/sdk/navi/NaviAPI;
    .registers 4
    .param p1, "observer"    # Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    monitor-enter v1

    .line 383
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-direct {p0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->registerSvcLocationObserverIfNotRegistered()V

    .line 385
    monitor-exit v1

    .line 387
    return-object p0

    .line 385
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public bridge synthetic connect()Lcom/ecarx/sdk/navi/NaviAPI;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->connect()Lcom/ecarx/sdk/navi/NaviServerImpl;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;)Lcom/ecarx/sdk/navi/NaviAPI;
    .registers 4
    .param p1, "cb"    # Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_3
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mConnectionCallback:Lcom/ecarx/sdk/navi/NaviAPI$IConnectionCallback;

    .line 134
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 135
    invoke-direct {p0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->registerNaviObserver()Lcom/ecarx/sdk/navi/NaviServerImpl;

    move-result-object v0

    return-object v0

    .line 134
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public connect()Lcom/ecarx/sdk/navi/NaviServerImpl;
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->registerNaviObserver()Lcom/ecarx/sdk/navi/NaviServerImpl;

    move-result-object v0

    return-object v0
.end method

.method public detachECarXLocationObserver(Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;)V
    .registers 5
    .param p1, "observer"    # Lcom/ecarx/sdk/navi/observer/ECarXLocationObserver;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    monitor-enter v1

    .line 393
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 395
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v2, " has location observers won\'t unregister location observer from nav svc "

    invoke-static {v0, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    monitor-exit v1

    .line 401
    :goto_18
    return-void

    .line 398
    :cond_19
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v2, " no location observers try unregister location observer from nav svc "

    invoke-static {v0, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->unregisterSvcLocationObserver()V

    .line 400
    monitor-exit v1

    goto :goto_18

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public disconnect()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->unregisterNaviObserver()V

    .line 161
    return-void
.end method

.method public getLastKnownLocation()Lcom/ecarx/sdk/navi/IECarXLocation;
    .registers 6

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, "l":Lecarx/locationservice/ILocation;
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 407
    :try_start_4
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v2, :cond_19

    .line 408
    :cond_c
    sget-object v2, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v4, "failed, not connected! "

    invoke-static {v2, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x0

    .line 417
    :goto_14
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_25

    .line 419
    if-nez v1, :cond_28

    .line 420
    const/4 v2, 0x0

    .line 422
    :goto_18
    return-object v2

    .line 412
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationService:Lecarx/locationservice/ILocationService;

    invoke-interface {v2}, Lecarx/locationservice/ILocationService;->getLastKnownLocation()Lecarx/locationservice/ILocation;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25

    move-result-object v1

    goto :goto_14

    .line 413
    :catch_20
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 417
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw v2

    .line 422
    :cond_28
    new-instance v2, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;

    invoke-direct {v2, v1}, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;-><init>(Lecarx/locationservice/ILocation;)V

    goto :goto_18
.end method

.method public getLocationRoadInfo()Lcom/ecarx/sdk/navi/entitys/ILocationRoadInfo;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v4, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mLocationObservers:Ljava/util/List;

    monitor-enter v4

    .line 429
    :try_start_4
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v3, :cond_11

    .line 430
    sget-object v3, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v5, "failed, not connected! "

    invoke-static {v3, v5}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_2b

    .line 442
    :goto_10
    return-object v2

    .line 434
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    invoke-interface {v3}, Lecarx/naviservice/INaviServer;->getLocationRoadInfo()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "infoJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 436
    new-instance v3, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;

    invoke-direct {v3, v1}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_25
    .catchall {:try_start_11 .. :try_end_22} :catchall_2b

    :try_start_22
    monitor-exit v4

    move-object v2, v3

    goto :goto_10

    .line 438
    .end local v1    # "infoJson":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    monitor-exit v4

    goto :goto_10

    :catchall_2b
    move-exception v2

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public goCompany()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_4
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v3, :cond_11

    .line 225
    sget-object v3, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v4, "failed, not connected! "

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    .line 233
    :goto_10
    return v1

    .line 229
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    invoke-interface {v3}, Lecarx/naviservice/INaviServer;->goCompany()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1c
    .catchall {:try_start_11 .. :try_end_16} :catchall_19

    move-result v1

    :try_start_17
    monitor-exit v2

    goto :goto_10

    .line 234
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    .line 230
    :catch_1c
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 233
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_19

    goto :goto_10
.end method

.method public goHome()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 208
    :try_start_4
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v3, :cond_11

    .line 209
    sget-object v3, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v4, "failed, not connected! "

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    .line 217
    :goto_10
    return v1

    .line 213
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    invoke-interface {v3}, Lecarx/naviservice/INaviServer;->goHome()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1c
    .catchall {:try_start_11 .. :try_end_16} :catchall_19

    move-result v1

    :try_start_17
    monitor-exit v2

    goto :goto_10

    .line 218
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    .line 214
    :catch_1c
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 217
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_19

    goto :goto_10
.end method

.method public muteNaviAudio()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_4
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v3, :cond_11

    .line 172
    sget-object v3, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v4, "failed, not connected! "

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    .line 181
    :goto_10
    return v1

    .line 176
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    invoke-interface {v3}, Lecarx/naviservice/INaviServer;->muteNaviAudio()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1c
    .catchall {:try_start_11 .. :try_end_16} :catchall_19

    move-result v1

    :try_start_17
    monitor-exit v2

    goto :goto_10

    .line 180
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    .line 177
    :catch_1c
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 180
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_19

    goto :goto_10
.end method

.method public removeGuideObserver(Lcom/ecarx/sdk/navi/observer/GuideInfoObserver;)V
    .registers 4
    .param p1, "observer"    # Lcom/ecarx/sdk/navi/observer/GuideInfoObserver;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    monitor-enter v1

    .line 317
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 318
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->guideInfoObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    :cond_10
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public removeNaviStateObserver(Lcom/ecarx/sdk/navi/observer/NaviStateObserver;)V
    .registers 4
    .param p1, "observer"    # Lcom/ecarx/sdk/navi/observer/NaviStateObserver;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    monitor-enter v1

    .line 336
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 337
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviStateObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    :cond_10
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public searchNearby(Ljava/lang/String;DD)Z
    .registers 15
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D

    .prologue
    const/4 v7, 0x0

    .line 239
    iget-object v8, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v8

    .line 240
    :try_start_4
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v0, :cond_12

    .line 241
    sget-object v0, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v1, "failed, not connected! "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1d

    move v0, v7

    .line 249
    :goto_11
    return v0

    .line 245
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lecarx/naviservice/INaviServer;->searchNearby(Ljava/lang/String;DD)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_20
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1d

    move-result v0

    :try_start_1b
    monitor-exit v8

    goto :goto_11

    .line 250
    :catchall_1d
    move-exception v0

    monitor-exit v8
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 246
    :catch_20
    move-exception v6

    .line 247
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    monitor-exit v8
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1d

    move v0, v7

    goto :goto_11
.end method

.method public stopNavi()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 256
    :try_start_4
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v3, :cond_11

    .line 257
    sget-object v3, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v4, "failed, not connected! "

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    .line 265
    :goto_10
    return v1

    .line 261
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    invoke-interface {v3}, Lecarx/naviservice/INaviServer;->stopNavi()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1c
    .catchall {:try_start_11 .. :try_end_16} :catchall_19

    move-result v1

    :try_start_17
    monitor-exit v2

    goto :goto_10

    .line 266
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    .line 262
    :catch_1c
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 265
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_19

    goto :goto_10
.end method

.method public unmuteNaviAudio()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 192
    :try_start_4
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    if-nez v3, :cond_11

    .line 193
    sget-object v3, Lcom/ecarx/sdk/navi/NaviServerImpl;->TAG:Ljava/lang/String;

    const-string v4, "failed, not connected! "

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    .line 202
    :goto_10
    return v1

    .line 197
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/ecarx/sdk/navi/NaviServerImpl;->naviService:Lecarx/naviservice/INaviServer;

    invoke-interface {v3}, Lecarx/naviservice/INaviServer;->unmuteNaviAudio()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1c
    .catchall {:try_start_11 .. :try_end_16} :catchall_19

    move-result v1

    :try_start_17
    monitor-exit v2

    goto :goto_10

    .line 201
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    .line 198
    :catch_1c
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_19

    goto :goto_10
.end method
