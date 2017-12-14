.class Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaCenterSvc.java"

# interfaces
.implements Lecarx/xsf/mediacenter/IMediaCenterSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const-string v0, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    return-object v0
.end method

.method public register(Lecarx/xsf/mediacenter/IMediaCenterClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .registers 8
    .param p1, "client"    # Lecarx/xsf/mediacenter/IMediaCenterClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lecarx/xsf/mediacenter/IMediaCenterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 113
    iget-object v3, p0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_31

    move-result-object v2

    .line 118
    .local v2, "_result":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    return-object v2

    .line 112
    .end local v2    # "_result":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    :cond_2f
    const/4 v3, 0x0

    goto :goto_13

    .line 118
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    .registers 8
    .param p1, "token"    # Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 149
    iget-object v3, p0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_31

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x1

    .line 154
    .local v2, "_result":Z
    :cond_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    return v2

    .line 148
    .end local v2    # "_result":Z
    :cond_2f
    const/4 v3, 0x0

    goto :goto_14

    .line 154
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z
    .registers 8
    .param p1, "token"    # Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 131
    iget-object v3, p0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_31

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x1

    .line 136
    .local v2, "_result":Z
    :cond_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return v2

    .line 130
    .end local v2    # "_result":Z
    :cond_2f
    const/4 v3, 0x0

    goto :goto_14

    .line 136
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public updatePlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IPlaybackInfo;)Z
    .registers 9
    .param p1, "token"    # Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .param p2, "info"    # Lecarx/xsf/mediacenter/IPlaybackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    if-eqz p1, :cond_39

    invoke-interface {p1}, Lecarx/xsf/mediacenter/IMediaCenterClientToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 167
    if-eqz p2, :cond_1e

    invoke-interface {p2}, Lecarx/xsf/mediacenter/IPlaybackInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 168
    iget-object v3, p0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_3b

    move-result v3

    if-eqz v3, :cond_32

    const/4 v2, 0x1

    .line 173
    .local v2, "_result":Z
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return v2

    .end local v2    # "_result":Z
    :cond_39
    move-object v4, v3

    .line 166
    goto :goto_15

    .line 173
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
