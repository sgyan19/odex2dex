.class public abstract Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;
.super Landroid/os/Binder;
.source "IMediaCenterClient.java"

# interfaces
.implements Lecarx/xsf/mediacenter/IMediaCenterClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IMediaCenterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IMediaCenterClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.IMediaCenterClient"

.field static final TRANSACTION_getPlaybackInfo:I = 0x5

.field static final TRANSACTION_onNext:I = 0x3

.field static final TRANSACTION_onPause:I = 0x2

.field static final TRANSACTION_onPlay:I = 0x1

.field static final TRANSACTION_onPlayTypeChange:I = 0x6

.field static final TRANSACTION_onPrevious:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterClient;
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
    const-string v1, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lecarx/xsf/mediacenter/IMediaCenterClient;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lecarx/xsf/mediacenter/IMediaCenterClient;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_8c

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v2, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;->onPlay()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v1    # "_result":Z
    :sswitch_23
    const-string v4, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;->onPause()Z

    move-result v1

    .line 57
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_32

    move v2, v3

    :cond_32
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 63
    .end local v1    # "_result":Z
    :sswitch_36
    const-string v4, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;->onNext()Z

    move-result v1

    .line 65
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v1, :cond_45

    move v2, v3

    :cond_45
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v1    # "_result":Z
    :sswitch_49
    const-string v4, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;->onPrevious()Z

    move-result v1

    .line 73
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v1, :cond_58

    move v2, v3

    :cond_58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v1    # "_result":Z
    :sswitch_5c
    const-string v2, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;->getPlaybackInfo()Lecarx/xsf/mediacenter/IPlaybackInfo;

    move-result-object v1

    .line 81
    .local v1, "_result":Lecarx/xsf/mediacenter/IPlaybackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v1, :cond_72

    invoke-interface {v1}, Lecarx/xsf/mediacenter/IPlaybackInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_6e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    :cond_72
    const/4 v2, 0x0

    goto :goto_6e

    .line 87
    .end local v1    # "_result":Lecarx/xsf/mediacenter/IPlaybackInfo;
    :sswitch_74
    const-string v4, "ecarx.xsf.mediacenter.IMediaCenterClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lecarx/xsf/mediacenter/IMediaCenterClient$Stub;->onPlayTypeChange(I)Z

    move-result v1

    .line 91
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_87

    move v2, v3

    :cond_87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_74
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
