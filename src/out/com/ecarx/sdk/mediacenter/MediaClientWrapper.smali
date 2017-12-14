.class public Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;
.super Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;
.source "MediaClientWrapper.java"


# instance fields
.field private mOrigin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ecarx/sdk/mediacenter/IMediaClient;",
            ">;"
        }
    .end annotation
.end field

.field private origin:Lcom/ecarx/sdk/mediacenter/IMediaClient;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/mediacenter/IMediaClient;)V
    .registers 3
    .param p1, "origin"    # Lcom/ecarx/sdk/mediacenter/IMediaClient;

    .prologue
    .line 22
    invoke-direct {p0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->mOrigin:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method


# virtual methods
.method public getOrigin()Lcom/ecarx/sdk/mediacenter/IMediaClient;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->mOrigin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/sdk/mediacenter/IMediaClient;

    return-object v0
.end method

.method public getPlaybackInfo()Lecarx/xsf/mediacenter/IPlaybackInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->getOrigin()Lcom/ecarx/sdk/mediacenter/IMediaClient;

    move-result-object v0

    .line 89
    .local v0, "origin":Lcom/ecarx/sdk/mediacenter/IMediaClient;
    if-eqz v0, :cond_10

    .line 90
    new-instance v1, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;

    invoke-interface {v0}, Lcom/ecarx/sdk/mediacenter/IMediaClient;->getPlaybackInfo()Lcom/ecarx/sdk/media/IPlaybackInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;-><init>(Lcom/ecarx/sdk/media/IPlaybackInfo;)V

    .line 92
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->getOrigin()Lcom/ecarx/sdk/mediacenter/IMediaClient;

    move-result-object v0

    .line 61
    .local v0, "origin":Lcom/ecarx/sdk/mediacenter/IMediaClient;
    if-eqz v0, :cond_9

    .line 62
    invoke-interface {v0}, Lcom/ecarx/sdk/mediacenter/IMediaClient;->onNext()Z

    .line 64
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->getOrigin()Lcom/ecarx/sdk/mediacenter/IMediaClient;

    move-result-object v0

    .line 47
    .local v0, "origin":Lcom/ecarx/sdk/mediacenter/IMediaClient;
    if-eqz v0, :cond_9

    .line 48
    invoke-interface {v0}, Lcom/ecarx/sdk/mediacenter/IMediaClient;->onPause()Z

    .line 50
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public onPlay()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->getOrigin()Lcom/ecarx/sdk/mediacenter/IMediaClient;

    move-result-object v0

    .line 33
    .local v0, "origin":Lcom/ecarx/sdk/mediacenter/IMediaClient;
    if-eqz v0, :cond_9

    .line 34
    invoke-interface {v0}, Lcom/ecarx/sdk/mediacenter/IMediaClient;->onPlay()Z

    .line 36
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public onPlayTypeChange(I)Z
    .registers 4
    .param p1, "playType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->getOrigin()Lcom/ecarx/sdk/mediacenter/IMediaClient;

    move-result-object v0

    .line 98
    .local v0, "origin":Lcom/ecarx/sdk/mediacenter/IMediaClient;
    if-eqz v0, :cond_9

    .line 99
    invoke-interface {v0, p1}, Lcom/ecarx/sdk/mediacenter/IMediaClient;->onPlayTypeChange(I)Z

    .line 101
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public onPrevious()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ecarx/sdk/mediacenter/MediaClientWrapper;->getOrigin()Lcom/ecarx/sdk/mediacenter/IMediaClient;

    move-result-object v0

    .line 75
    .local v0, "origin":Lcom/ecarx/sdk/mediacenter/IMediaClient;
    if-eqz v0, :cond_9

    .line 76
    invoke-interface {v0}, Lcom/ecarx/sdk/mediacenter/IMediaClient;->onPrevious()Z

    .line 78
    :cond_9
    const/4 v1, 0x0

    return v1
.end method
