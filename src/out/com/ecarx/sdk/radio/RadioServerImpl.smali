.class public final Lcom/ecarx/sdk/radio/RadioServerImpl;
.super Lcom/ecarx/sdk/radio/RadioAPI;
.source "RadioServerImpl.java"


# static fields
.field public static final ACTION_FMRADIO:Ljava/lang/String; = "android.intent.action.START_XCRADIO_SERVICE"

.field public static final CATEGORY_FMRADIO:Ljava/lang/String; = "android.intent.category.XCRadio"

.field private static final TAG:Ljava/lang/String; = "RadioServerImpl"


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

.field private mIRadioSvcCallback:Lcom/ecarx/radio/service/IRadioSvcCallback;

.field private final mRadioCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/radio/RadioCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSvcLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/ecarx/sdk/radio/RadioAPI;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mSvcLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/ecarx/sdk/radio/RadioServerImpl$1;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/radio/RadioServerImpl$1;-><init>(Lcom/ecarx/sdk/radio/RadioServerImpl;)V

    iput-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->connection:Landroid/content/ServiceConnection;

    .line 47
    new-instance v0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/radio/RadioServerImpl$2;-><init>(Lcom/ecarx/sdk/radio/RadioServerImpl;)V

    iput-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvcCallback:Lcom/ecarx/radio/service/IRadioSvcCallback;

    .line 232
    iput-object p1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mContext:Landroid/content/Context;

    .line 233
    invoke-direct {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->registerRadioService()Z

    .line 234
    return-void
.end method

.method static synthetic access$002(Lcom/ecarx/sdk/radio/RadioServerImpl;Lcom/ecarx/radio/service/IRadioSvc;)Lcom/ecarx/radio/service/IRadioSvc;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/radio/RadioServerImpl;
    .param p1, "x1"    # Lcom/ecarx/radio/service/IRadioSvc;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/radio/RadioServerImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private addRadioCallback(Lcom/ecarx/sdk/radio/RadioCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/ecarx/sdk/radio/RadioCallback;

    .prologue
    .line 525
    if-nez p1, :cond_3

    .line 533
    :goto_2
    return-void

    .line 528
    :cond_3
    iget-object v1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 529
    :try_start_6
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 530
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_13
    monitor-exit v1

    goto :goto_2

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private registerRadioService()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 555
    const-string v2, "RadioServerImpl"

    const-string v3, "registerRadioService: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 557
    :try_start_b
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_XCRADIO_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.XCRadio"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    monitor-exit v2

    .line 562
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_27
    return v1

    :cond_28
    monitor-exit v2

    goto :goto_27

    .line 563
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private removeRadioCallback(Lcom/ecarx/sdk/radio/RadioCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/ecarx/sdk/radio/RadioCallback;

    .prologue
    .line 541
    if-nez p1, :cond_3

    .line 549
    :goto_2
    return-void

    .line 544
    :cond_3
    iget-object v1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 545
    :try_start_6
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 546
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 548
    :cond_13
    monitor-exit v1

    goto :goto_2

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private unregisterRadioService()Z
    .registers 5

    .prologue
    .line 570
    const-string v1, "RadioServerImpl"

    const-string v2, "unregisterRadioService: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 572
    :try_start_a
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_21

    move-result v1

    if-nez v1, :cond_1a

    .line 574
    :try_start_10
    iget-object v1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 575
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1d
    .catchall {:try_start_10 .. :try_end_1a} :catchall_21

    .line 580
    :cond_1a
    const/4 v1, 0x1

    :try_start_1b
    monitor-exit v2

    :goto_1c
    return v1

    .line 576
    :catch_1d
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1c

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public addFavourite(I)Z
    .registers 6
    .param p1, "frequency"    # I

    .prologue
    const/4 v1, 0x0

    .line 450
    const-string v2, "RadioServerImpl"

    const-string v3, "addFavourite: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 459
    :goto_e
    return v1

    .line 455
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/ecarx/radio/service/IRadioSvc;->addFavourite(IZ)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 456
    :catch_17
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public closeRadio(Lcom/ecarx/sdk/radio/RadioCallback;)Z
    .registers 6
    .param p1, "cb"    # Lcom/ecarx/sdk/radio/RadioCallback;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 259
    const/4 v1, 0x1

    .line 271
    :goto_7
    return v1

    .line 262
    :cond_8
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/radio/RadioServerImpl;->removeRadioCallback(Lcom/ecarx/sdk/radio/RadioCallback;)V

    .line 264
    const/4 v1, 0x0

    .line 266
    .local v1, "flag":Z
    :try_start_c
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    iget-object v3, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvcCallback:Lcom/ecarx/radio/service/IRadioSvcCallback;

    invoke-interface {v2, v3}, Lcom/ecarx/radio/service/IRadioSvc;->closeRadio(Lcom/ecarx/radio/service/IRadioSvcCallback;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_15

    move-result v1

    goto :goto_7

    .line 267
    :catch_15
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public deleFavourite(I)Z
    .registers 6
    .param p1, "frequency"    # I

    .prologue
    const/4 v1, 0x0

    .line 464
    const-string v2, "RadioServerImpl"

    const-string v3, "deleFavourite: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 473
    :goto_e
    return v1

    .line 469
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/ecarx/radio/service/IRadioSvc;->addFavourite(IZ)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 470
    :catch_17
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public getBand()Lcom/ecarx/sdk/radio/Band;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 366
    const-string v2, "RadioServerImpl"

    const-string v3, "getBand: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 375
    :goto_e
    return-object v1

    .line 371
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->getBand()I

    move-result v2

    invoke-static {v2}, Lcom/ecarx/sdk/radio/Band;->bandFromId(I)Lcom/ecarx/sdk/radio/Band;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_e

    .line 372
    :catch_1a
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public getFavouriteList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/radio/FrequencyBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 478
    const-string v2, "RadioServerImpl"

    const-string v3, "getFavouriteList: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 487
    :goto_e
    return-object v1

    .line 483
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->getFavouriteList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/ecarx/sdk/radio/Utils;->iFrequencyList2FrequencyBeanList(Ljava/util/List;)Ljava/util/List;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_e

    .line 484
    :catch_1a
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public getFrequency()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 380
    const-string v2, "RadioServerImpl"

    const-string v3, "getFrequency: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 389
    :goto_e
    return v1

    .line 385
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->getFrequency()I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    goto :goto_e

    .line 386
    :catch_16
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public getFrequencyList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/radio/FrequencyBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 394
    const-string v2, "RadioServerImpl"

    const-string v3, "getFrequencyList: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 403
    :goto_e
    return-object v1

    .line 399
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->getFrequencyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/ecarx/sdk/radio/Utils;->iFrequencyList2FrequencyBeanList(Ljava/util/List;)Ljava/util/List;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_e

    .line 400
    :catch_1a
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public getPlayList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/radio/FrequencyBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 408
    const-string v2, "RadioServerImpl"

    const-string v3, "getPlayList: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 417
    :goto_e
    return-object v1

    .line 413
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->getPlayList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/ecarx/sdk/radio/Utils;->iFrequencyList2FrequencyBeanList(Ljava/util/List;)Ljava/util/List;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_e

    .line 414
    :catch_1a
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public isDisConnect()Z
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    if-nez v0, :cond_6

    .line 514
    const/4 v0, 0x1

    .line 516
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public openRadio(Lcom/ecarx/sdk/radio/RadioCallback;)Z
    .registers 6
    .param p1, "cb"    # Lcom/ecarx/sdk/radio/RadioCallback;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 239
    const-string v2, "RadioServerImpl"

    const-string v3, "openRadio: service is not init, please wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->registerRadioService()Z

    .line 241
    const/4 v1, 0x0

    .line 253
    :goto_11
    return v1

    .line 244
    :cond_12
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/radio/RadioServerImpl;->addRadioCallback(Lcom/ecarx/sdk/radio/RadioCallback;)V

    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "flag":Z
    :try_start_16
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    iget-object v3, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvcCallback:Lcom/ecarx/radio/service/IRadioSvcCallback;

    invoke-interface {v2, v3}, Lcom/ecarx/radio/service/IRadioSvc;->openRadioAsync(Lcom/ecarx/radio/service/IRadioSvcCallback;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1f

    move-result v1

    goto :goto_11

    .line 249
    :catch_1f
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public pause()Z
    .registers 4

    .prologue
    .line 503
    const-string v1, "RadioServerImpl"

    const-string v2, "pause: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_7
    iget-object v1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v1}, Lcom/ecarx/radio/service/IRadioSvc;->pause()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 509
    :goto_d
    return v1

    .line 506
    :catch_e
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 509
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public play()Z
    .registers 4

    .prologue
    .line 492
    const-string v1, "RadioServerImpl"

    const-string v2, "play: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_7
    iget-object v1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v1}, Lcom/ecarx/radio/service/IRadioSvc;->play()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 498
    :goto_d
    return v1

    .line 495
    :catch_e
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 498
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public scanAsync()Z
    .registers 5

    .prologue
    .line 321
    const-string v2, "RadioServerImpl"

    const-string v3, "scanAsync: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 323
    const/4 v1, 0x0

    .line 331
    :goto_e
    return v1

    .line 325
    :cond_f
    const/4 v1, 0x0

    .line 327
    .local v1, "flag":Z
    :try_start_10
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->scanAsync()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 328
    :catch_17
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public seekAsync(Lcom/ecarx/sdk/radio/TuneDirection;)Z
    .registers 7
    .param p1, "direction"    # Lcom/ecarx/sdk/radio/TuneDirection;

    .prologue
    .line 306
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seekAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 308
    const/4 v1, 0x0

    .line 316
    :goto_1f
    return v1

    .line 310
    :cond_20
    const/4 v1, 0x0

    .line 312
    .local v1, "flag":Z
    :try_start_21
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-virtual {p1}, Lcom/ecarx/sdk/radio/TuneDirection;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/ecarx/radio/service/IRadioSvc;->seekAsync(I)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2c

    move-result v1

    goto :goto_1f

    .line 313
    :catch_2c
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public setBandAsync(Lcom/ecarx/sdk/radio/Band;)Z
    .registers 7
    .param p1, "newBand"    # Lcom/ecarx/sdk/radio/Band;

    .prologue
    .line 276
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBandAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 278
    const/4 v1, 0x0

    .line 286
    :goto_1f
    return v1

    .line 280
    :cond_20
    const/4 v1, 0x0

    .line 282
    .local v1, "flag":Z
    :try_start_21
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-virtual {p1}, Lcom/ecarx/sdk/radio/Band;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/ecarx/radio/service/IRadioSvc;->setBandAsync(I)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2c

    move-result v1

    goto :goto_1f

    .line 283
    :catch_2c
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public setFrequency(I)Z
    .registers 7
    .param p1, "frequency"    # I

    .prologue
    .line 291
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 293
    const/4 v1, 0x0

    .line 301
    :goto_1f
    return v1

    .line 295
    :cond_20
    const/4 v1, 0x0

    .line 297
    .local v1, "flag":Z
    :try_start_21
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2, p1}, Lcom/ecarx/radio/service/IRadioSvc;->setFrequency(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_28

    move-result v1

    goto :goto_1f

    .line 298
    :catch_28
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public startCarousel(I)Z
    .registers 6
    .param p1, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 422
    const-string v2, "RadioServerImpl"

    const-string v3, "startCarousel: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 431
    :goto_e
    return v1

    .line 427
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2, p1}, Lcom/ecarx/radio/service/IRadioSvc;->startCarousel(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    goto :goto_e

    .line 428
    :catch_16
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public stopCarousel()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 436
    const-string v2, "RadioServerImpl"

    const-string v3, "stopCarousel: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 445
    :goto_e
    return v1

    .line 441
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->stopCarousel()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    goto :goto_e

    .line 442
    :catch_16
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public stopSeekOrScanAsync()Z
    .registers 5

    .prologue
    .line 336
    const-string v2, "RadioServerImpl"

    const-string v3, "stopSeekOrScanAsync: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 338
    const/4 v1, 0x0

    .line 346
    :goto_e
    return v1

    .line 340
    :cond_f
    const/4 v1, 0x0

    .line 342
    .local v1, "flag":Z
    :try_start_10
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-interface {v2}, Lcom/ecarx/radio/service/IRadioSvc;->stopSeekOrScanAsync()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 343
    :catch_17
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public tuneAsync(Lcom/ecarx/sdk/radio/TuneDirection;)Z
    .registers 7
    .param p1, "direction"    # Lcom/ecarx/sdk/radio/TuneDirection;

    .prologue
    .line 351
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tuneAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/ecarx/sdk/radio/RadioServerImpl;->isDisConnect()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 353
    const/4 v1, 0x0

    .line 361
    :goto_1f
    return v1

    .line 355
    :cond_20
    const/4 v1, 0x0

    .line 357
    .local v1, "flag":Z
    :try_start_21
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;

    invoke-virtual {p1}, Lcom/ecarx/sdk/radio/TuneDirection;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/ecarx/radio/service/IRadioSvc;->tuneAsync(I)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2c

    move-result v1

    goto :goto_1f

    .line 358
    :catch_2c
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method
