.class public Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;
.super Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;
.source "MediaCenterAPIImpl.java"


# instance fields
.field private mConnectionCallbacks:Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;

.field private mCtx:Landroid/content/Context;

.field private mSc:Landroid/content/ServiceConnection;

.field private mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPI;-><init>()V

    .line 35
    new-instance v0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;-><init>(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;)V

    iput-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSc:Landroid/content/ServiceConnection;

    .line 32
    iput-object p1, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mCtx:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;Lecarx/xsf/mediacenter/IMediaCenterSvc;)Lecarx/xsf/mediacenter/IMediaCenterSvc;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;
    .param p1, "x1"    # Lecarx/xsf/mediacenter/IMediaCenterSvc;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;)Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mConnectionCallbacks:Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private verifyToken(Ljava/lang/Object;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 166
    instance-of v0, p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    if-nez v0, :cond_a

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_a
    return-void
.end method


# virtual methods
.method public connect(Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;)V
    .registers 6
    .param p1, "callbacks"    # Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;

    .prologue
    .line 52
    if-nez p1, :cond_8

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 55
    :cond_8
    iput-object p1, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mConnectionCallbacks:Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;

    .line 56
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mCtx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ecarx.xsf.MEDIA_CENTER_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSc:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 57
    return-void
.end method

.method public register(Landroid/os/Binder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .registers 5
    .param p1, "client"    # Landroid/os/Binder;

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-nez v2, :cond_6

    .line 94
    .end local p1    # "client":Landroid/os/Binder;
    :goto_5
    return-object v1

    .line 90
    .restart local p1    # "client":Landroid/os/Binder;
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;

    .end local p1    # "client":Landroid/os/Binder;
    invoke-interface {v2, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->register(Lecarx/xsf/mediacenter/IMediaCenterClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_5

    .line 91
    :catch_f
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public register(Lcom/ecarx/sdk/mediacenter/IMediaClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .registers 6
    .param p1, "client"    # Lcom/ecarx/sdk/mediacenter/IMediaClient;

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-nez v2, :cond_6

    .line 75
    :goto_5
    return-object v1

    .line 71
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    new-instance v3, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;

    invoke-direct {v3, p1}, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;-><init>(Lcom/ecarx/sdk/mediacenter/IMediaClient;)V

    invoke-interface {v2, v3}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->register(Lecarx/xsf/mediacenter/IMediaCenterClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    move-result-object v1

    goto :goto_5

    .line 72
    :catch_12
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public bridge synthetic register(Landroid/os/Binder;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Binder;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->register(Landroid/os/Binder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic register(Lcom/ecarx/sdk/mediacenter/IMediaClient;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lcom/ecarx/sdk/mediacenter/IMediaClient;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->register(Lcom/ecarx/sdk/mediacenter/IMediaClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object v0

    return-object v0
.end method

.method public requestPlay(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->verifyToken(Ljava/lang/Object;)V

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    .end local p1    # "token":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    move-result v1

    .line 127
    :goto_b
    return v1

    .line 124
    :catch_c
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public unregister(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->verifyToken(Ljava/lang/Object;)V

    .line 106
    :try_start_3
    iget-object v1, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    .end local p1    # "token":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 107
    const/4 v1, 0x1

    .line 111
    :goto_b
    return v1

    .line 108
    :catch_c
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public updatePlaybackState(Ljava/lang/Object;Landroid/os/Binder;)Z
    .registers 5
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "info"    # Landroid/os/Binder;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->verifyToken(Ljava/lang/Object;)V

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    .end local p1    # "token":Ljava/lang/Object;
    check-cast p2, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;

    .end local p2    # "info":Landroid/os/Binder;
    invoke-interface {v1, p1, p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updatePlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IPlaybackInfo;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    move-result v1

    .line 162
    :goto_d
    return v1

    .line 159
    :catch_e
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 162
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public updatePlaybackState(Ljava/lang/Object;Lcom/ecarx/sdk/media/IPlaybackInfo;)Z
    .registers 6
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "info"    # Lcom/ecarx/sdk/media/IPlaybackInfo;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->verifyToken(Ljava/lang/Object;)V

    .line 140
    :try_start_3
    new-instance v1, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;

    invoke-direct {v1, p2}, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;-><init>(Lcom/ecarx/sdk/media/IPlaybackInfo;)V

    .line 141
    .local v1, "wrapper":Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;
    iget-object v2, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;

    check-cast p1, Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    .end local p1    # "token":Ljava/lang/Object;
    invoke-interface {v2, p1, v1}, Lecarx/xsf/mediacenter/IMediaCenterSvc;->updatePlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IPlaybackInfo;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11

    move-result v2

    .line 145
    .end local v1    # "wrapper":Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;
    :goto_10
    return v2

    .line 142
    :catch_11
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 145
    const/4 v2, 0x0

    goto :goto_10
.end method
