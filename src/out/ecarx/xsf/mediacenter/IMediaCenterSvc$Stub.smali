.class public abstract Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;
.super Landroid/os/Binder;
.source "IMediaCenterSvc.java"

# interfaces
.implements Lecarx/xsf/mediacenter/IMediaCenterSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMediaCenterSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.IMediaCenterSvc"

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_requestPlay:I = 0x3

.field static final TRANSACTION_unregister:I = 0x2

.field static final TRANSACTION_updatePlaybackState:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterSvc;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lecarx/xsf/mediacenter/IMediaCenterSvc;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lecarx/xsf/mediacenter/IMediaCenterSvc;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_8a

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v3, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v3, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClient;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lecarx/xsf/mediacenter/IMediaCenterClient;
    invoke-virtual {p0, v0}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;->register(Lecarx/xsf/mediacenter/IMediaCenterClient;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object v2

    .line 51
    .local v2, "_result":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Lecarx/xsf/mediacenter/IMediaCenterClientToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a

    .line 57
    .end local v0    # "_arg0":Lecarx/xsf/mediacenter/IMediaCenterClient;
    .end local v2    # "_result":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    :sswitch_30
    const-string v5, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    invoke-virtual {p0, v0}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;->unregister(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z

    move-result v2

    .line 61
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_47

    move v3, v4

    :cond_47
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 67
    .end local v0    # "_arg0":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .end local v2    # "_result":Z
    :sswitch_4b
    const-string v5, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    invoke-virtual {p0, v0}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;->requestPlay(Lecarx/xsf/mediacenter/IMediaCenterClientToken;)Z

    move-result v2

    .line 71
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_62

    move v3, v4

    :cond_62
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 77
    .end local v0    # "_arg0":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    .end local v2    # "_result":Z
    :sswitch_66
    const-string v5, "ecarx.xsf.mediacenter.IMediaCenterSvc"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lecarx/xsf/mediacenter/IMediaCenterClientToken$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClientToken;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Lecarx/xsf/mediacenter/IMediaCenterClientToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IPlaybackInfo;

    move-result-object v1

    .line 82
    .local v1, "_arg1":Lecarx/xsf/mediacenter/IPlaybackInfo;
    invoke-virtual {p0, v0, v1}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;->updatePlaybackState(Lecarx/xsf/mediacenter/IMediaCenterClientToken;Lecarx/xsf/mediacenter/IPlaybackInfo;)Z

    move-result v2

    .line 83
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v2, :cond_85

    move v3, v4

    :cond_85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 38
    nop

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_30
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_66
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
