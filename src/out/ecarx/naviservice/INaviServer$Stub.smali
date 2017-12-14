.class public abstract Lecarx/naviservice/INaviServer$Stub;
.super Landroid/os/Binder;
.source "INaviServer.java"

# interfaces
.implements Lecarx/naviservice/INaviServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/naviservice/INaviServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/naviservice/INaviServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.naviservice.INaviServer"

.field static final TRANSACTION_getLocationRoadInfo:I = 0x9

.field static final TRANSACTION_getLocationService:I = 0xa

.field static final TRANSACTION_goCompany:I = 0x6

.field static final TRANSACTION_goHome:I = 0x5

.field static final TRANSACTION_muteNaviAudio:I = 0x3

.field static final TRANSACTION_registerNaviObserver:I = 0x1

.field static final TRANSACTION_searchNearby:I = 0x7

.field static final TRANSACTION_stopNavi:I = 0x8

.field static final TRANSACTION_unmuteNaviAudio:I = 0x4

.field static final TRANSACTION_unregisterNaviObserver:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/naviservice/INaviServer;
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
    const-string v1, "ecarx.naviservice.INaviServer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lecarx/naviservice/INaviServer;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lecarx/naviservice/INaviServer;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lecarx/naviservice/INaviServer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lecarx/naviservice/INaviServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_f4

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 42
    :sswitch_a
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lecarx/naviservice/INaviObserver$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/naviservice/INaviObserver;

    move-result-object v1

    .line 50
    .local v1, "_arg0":Lecarx/naviservice/INaviObserver;
    invoke-virtual {p0, v1}, Lecarx/naviservice/INaviServer$Stub;->registerNaviObserver(Lecarx/naviservice/INaviObserver;)Z

    move-result v6

    .line 51
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v6, :cond_2b

    move v0, v7

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_2b
    move v0, v8

    goto :goto_27

    .line 57
    .end local v1    # "_arg0":Lecarx/naviservice/INaviObserver;
    .end local v6    # "_result":Z
    :sswitch_2d
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lecarx/naviservice/INaviObserver$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/naviservice/INaviObserver;

    move-result-object v1

    .line 60
    .restart local v1    # "_arg0":Lecarx/naviservice/INaviObserver;
    invoke-virtual {p0, v1}, Lecarx/naviservice/INaviServer$Stub;->unregisterNaviObserver(Lecarx/naviservice/INaviObserver;)Z

    move-result v6

    .line 61
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v6, :cond_44

    move v8, v7

    :cond_44
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 67
    .end local v1    # "_arg0":Lecarx/naviservice/INaviObserver;
    .end local v6    # "_result":Z
    :sswitch_48
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lecarx/naviservice/INaviServer$Stub;->muteNaviAudio()Z

    move-result v6

    .line 69
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v6, :cond_57

    move v8, v7

    :cond_57
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 75
    .end local v6    # "_result":Z
    :sswitch_5b
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lecarx/naviservice/INaviServer$Stub;->unmuteNaviAudio()Z

    move-result v6

    .line 77
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v6, :cond_6a

    move v8, v7

    :cond_6a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v6    # "_result":Z
    :sswitch_6e
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lecarx/naviservice/INaviServer$Stub;->goHome()Z

    move-result v6

    .line 85
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v6, :cond_7d

    move v8, v7

    :cond_7d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 91
    .end local v6    # "_result":Z
    :sswitch_81
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lecarx/naviservice/INaviServer$Stub;->goCompany()Z

    move-result v6

    .line 93
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v6, :cond_90

    move v8, v7

    :cond_90
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 99
    .end local v6    # "_result":Z
    :sswitch_95
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 105
    .local v2, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .local v4, "_arg2":D
    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Lecarx/naviservice/INaviServer$Stub;->searchNearby(Ljava/lang/String;DD)Z

    move-result v6

    .line 107
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v6, :cond_b1

    move v8, v7

    :cond_b1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":D
    .end local v4    # "_arg2":D
    .end local v6    # "_result":Z
    :sswitch_b6
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lecarx/naviservice/INaviServer$Stub;->stopNavi()Z

    move-result v6

    .line 115
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v6, :cond_c5

    move v8, v7

    :cond_c5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 121
    .end local v6    # "_result":Z
    :sswitch_ca
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lecarx/naviservice/INaviServer$Stub;->getLocationRoadInfo()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 129
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_db
    const-string v0, "ecarx.naviservice.INaviServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lecarx/naviservice/INaviServer$Stub;->getLocationService()Lecarx/locationservice/ILocationService;

    move-result-object v6

    .line 131
    .local v6, "_result":Lecarx/locationservice/ILocationService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v6, :cond_f2

    invoke-interface {v6}, Lecarx/locationservice/ILocationService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_ed
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    :cond_f2
    const/4 v0, 0x0

    goto :goto_ed

    .line 38
    :sswitch_data_f4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_48
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_81
        0x7 -> :sswitch_95
        0x8 -> :sswitch_b6
        0x9 -> :sswitch_ca
        0xa -> :sswitch_db
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
