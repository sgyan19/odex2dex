.class public interface abstract Lecarx/xsf/mediacenter/IMediaCenterSvc;
.super Ljava/lang/Object;
.source "IMediaCenterSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;
    }
.end annotation


# virtual methods
.method public abstract register(Lecarx/xsf/mediacenter/IMediaCenterClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IPlaybackInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
