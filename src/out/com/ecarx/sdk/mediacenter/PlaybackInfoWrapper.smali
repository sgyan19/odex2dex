.class public Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;
.super Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;
.source "PlaybackInfoWrapper.java"


# instance fields
.field private final mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;


# direct methods
.method public constructor <init>(Lcom/ecarx/sdk/media/IPlaybackInfo;)V
    .registers 2
    .param p1, "mOrigin"    # Lcom/ecarx/sdk/media/IPlaybackInfo;

    .prologue
    .line 22
    invoke-direct {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    .line 24
    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtwork()Landroid/net/Uri;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrMusicImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public getCurrMusicMediumImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const-string v0, ""

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getLyric()Landroid/net/Uri;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getLyric()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getNextArtwork()Landroid/net/Uri;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getNextArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNextMusicImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    const-string v0, ""

    return-object v0
.end method

.method public getNextMusicMediumImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    const-string v0, ""

    return-object v0
.end method

.method public getPlayType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getPlayType()I

    move-result v0

    return v0
.end method

.method public getPlaybackStatus()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getPlaybackStatus()I

    move-result v0

    return v0
.end method

.method public getPreMusicImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string v0, ""

    return-object v0
.end method

.method public getPreMusicMediumImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, ""

    return-object v0
.end method

.method public getPreviousArtwork()Landroid/net/Uri;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getPreviousArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()J
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRadioFrequency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, ""

    return-object v0
.end method

.method public getRadioMoreFrequency()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRadioPlayState()I
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    const-string v0, ""

    return-object v0
.end method

.method public getRadioUIName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/PlaybackInfoWrapper;->mOrigin:Lcom/ecarx/sdk/media/IPlaybackInfo;

    invoke-interface {v0}, Lcom/ecarx/sdk/media/IPlaybackInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
